/*!
 * Bootstrap-selectlist v0.9.0
 *
 * Copyright 2015 bootstrap-selectlist
 */
(function ($) {
  'use strict';

  var Selectlist = function (element, options, e) {
    if (e) {
      e.stopPropagation();
      e.preventDefault();
    }

    this.$element = $(element);
    this.$newElement = null;
    this.$lis = null;
    this.options = options;

    //Expose public methods
    this.val = Selectlist.prototype.val;
    this.render = Selectlist.prototype.render;
    this.refresh = Selectlist.prototype.refresh;
    this.setStyle = Selectlist.prototype.setStyle;
    this.selectAll = Selectlist.prototype.selectAll;
    this.deselectAll = Selectlist.prototype.deselectAll;
    this.destroy = Selectlist.prototype.remove;
    this.remove = Selectlist.prototype.remove;
    this.show = Selectlist.prototype.show;
    this.hide = Selectlist.prototype.hide;

    this.init();
  };

  Selectlist.VERSION = '0.9.0';

  Selectlist.DEFAULTS = {
    style: '',
    size: 'auto',
    width: false,
    showIcon: false,
    iconBase: 'icon',
    tickIcon: 'icon-ok'
  };

  Selectlist.prototype = {

    constructor: Selectlist,

    init: function () {
      var that = this,
          id = this.$element.attr('id');

      this.$element.hide();
      this.multiple = this.$element.prop('multiple');
      this.autofocus = this.$element.prop('autofocus');
      this.$newElement = this.createView();
      this.$element.after(this.$newElement);

      if (typeof id !== 'undefined') {
        this.$newElement.attr('data-id', id);
        $('label[for="' + id + '"]').click(function (e) {
          e.preventDefault();
          that.$newElement.focus();
        });
      }

      this.checkDisabled();
      this.clickListener();
      this.render();
      this.liHeight();
      this.setStyle();
      this.setWidth();
      this.setSize();
      this.$newElement.data('this', this);
    },

    createElement: function () {
      // Options
      // If we are multiple, then add the show-tick class by default
      var multiple = this.multiple && this.showIcon ? ' show-tick' : '',
          autofocus = this.autofocus ? ' autofocus' : '';
      // Elements
      var view =
          '<div class="btn-group bootstrap-selectlist open' + multiple + '">' +
          '<div class="open selectlist" >' +
          '<ul class="dropdown-menu inner selectlist" role="menu"' + autofocus + '>' +
          '</ul>' +
          '</div>' +
          '</div>';

      return $(view);
    },

    createView: function () {
      var $view = this.createElement();
      var $li = this.createLi();
      $view.find('ul').append($li);
      return $view;
    },

    reloadLi: function () {
      //Remove all children.
      this.destroyLi();
      //Re build
      var $li = this.createLi();
      this.$newElement.find('ul').append($li);
    },

    destroyLi: function () {
      this.$newElement.find('li').remove();
      this.$lis = null;
    },

    createLi: function () {
      var that = this,
          _li = [],
          optID = 0;

      // Helper functions
      /**
       * @param content
       * @param [index]
       * @param [classes]
       * @returns {string}
       */
      var generateLI = function (content, index, classes) {
        return '<li' +
        (typeof classes !== 'undefined' ? ' class="' + classes + '"' : '') +
        (typeof index !== 'undefined' | null === index ? ' data-original-index="' + index + '"' : '') +
        '>' + content + '</li>';
      };

      /**
       * @param text
       * @param [classes]
       * @param [inline]
       * @returns {string}
       */
      var generateA = function (text, classes, inline) {
        return '<a tabindex="0"' +
        (typeof classes !== 'undefined' ? ' class="' + classes + '"' : '') +
        (typeof inline !== 'undefined' ? ' style="' + inline + '"' : '') +
        '>' + text +
        '<span class="' + that.options.iconBase + ' ' + that.options.tickIcon + ' check-mark"></span>' +
        '</a>';
      };

      this.$element.find('option').each(function () {
        var $this = $(this);

        // Get the class and text for the option
        var optionClass = $this.attr('class') || '',
            inline = $this.attr('style'),
            text = $this.html(),
            icon = typeof $this.data('icon') !== 'undefined' ? '<span class="' + that.options.iconBase + ' ' + $this.data('icon') + '"></span> ' : '',
            isDisabled = $this.is(':disabled') || $this.parent().is(':disabled'),
            index = $this[0].index;
        if (icon !== '' && isDisabled) {
          icon = '<span>' + icon + '</span>';
        }

        // Prepend any icon and append any subtext to the main text.
        text = icon + '<span class="text">' + text + '</span>';
        
        _li.push(generateLI(generateA(text, optionClass, inline), index));
      });

      //If we are not multiple, we don't have a selected item, and we don't have a title, select the first element so something is set in the list
      if (!this.multiple && this.$element.find('option:selected').length === 0 && !this.options.title) {
        this.$element.find('option').eq(0).prop('selected', true).attr('selected', 'selected');
      }

      return $(_li.join(''));
    },

    findLis: function () {
      if (this.$lis == null) this.$lis = this.$newElement.find('li');
      return this.$lis;
    },

    /**
     * @param [updateLi] defaults to true
     */
    render: function (updateLi) {
      var that = this;

      //Update the LI to match the SELECT
      if (updateLi !== false) {
        this.$element.find('option').each(function (index) {
          that.setDisabled(index, $(this).is(':disabled') || $(this).parent().is(':disabled'));
          that.setSelected(index, $(this).is(':selected'));
        });
      }

      this.tabIndex();
    },

    /**
     * @param [style]
     * @param [status]
     */
    setStyle: function (style, status) {
      if (this.$element.attr('class')) {
        this.$newElement.addClass(this.$element.attr('class').replace(/selectlist|validate\[.*\]/gi, ''));
      }

      var clazz = style ? style : this.options.style;

      if (status == 'add') {
        this.$newElement.addClass(clazz);
      } else if (status == 'remove') {
        this.$newElement.removeClass(clazz);
      } else {
        this.$newElement.removeClass(this.options.style);
        this.$newElement.addClass(clazz);
      }
    },

    liHeight: function () {
      if (this.options.size === false) return;

      var liHeight = this.$newElement.find('li').filter(':visible').children('a').outerHeight();

      this.$newElement.data('liHeight', liHeight);
    },

    setSize: function () {
      this.findLis();
      if (!this.options.size || this.options.size == 'auto') {
        return;
      }
      var that = this,
          menu = this.$newElement.find('.open.selectlist'),
          menuInner = menu.find('.inner'),
          selectHeight = this.$newElement.outerHeight(),
          liHeight = this.$newElement.data('liHeight'),
          menuPadding = parseInt(menu.css('padding-top')) +
              parseInt(menu.css('padding-bottom')) +
              parseInt(menu.css('border-top-width')) +
              parseInt(menu.css('border-bottom-width')),
          $window = $(window),
          menuExtras = menuPadding + parseInt(menu.css('margin-top')) + parseInt(menu.css('margin-bottom')) + 2,
          menuHeight;

      if (!this.options.size || this.options.size == 'auto') {
        var items = menu.find('li').length;
        menuHeight = liHeight * items + menuPadding;
      } else if (menu.find('li').length > this.options.size) {
        menuHeight = liHeight * this.options.size + menuPadding;
      } else {
          return;
      }
      menu.css({'max-height': menuHeight + 'px', 'overflow': 'hidden'});
      menuInner.css({'max-height': menuHeight - menuPadding + 'px', 'overflow': 'auto'});
    },

    setWidth: function () {
      if (this.options.width == 'auto') {
        this.$newElement.css('min-width', '0');
      } else if (this.options.width == 'fit') {
        // Remove inline min-width so width can be changed from 'auto'
        this.$newElement.css('min-width', '');
        this.$newElement.css('width', '').addClass('fit-width');
      } else if (this.options.width) {
        // Remove inline min-width so width can be changed from 'auto'
        this.$newElement.css('min-width', '');
        this.$newElement.css('width', this.options.width);
      } else {
        // Remove inline min-width/width so width can be changed
        this.$newElement.css('min-width', '');
        this.$newElement.css('width', '');
      }
      // Remove fit-width class if width is changed programmatically
      if (this.$newElement.hasClass('fit-width') && this.options.width !== 'fit') {
        this.$newElement.removeClass('fit-width');
      }
    },

    setSelected: function (index, selected) {
      this.findLis();
      this.$lis.filter('[data-original-index="' + index + '"]').toggleClass('selected', selected);
    },

    setDisabled: function (index, disabled) {
      this.findLis();
      if (disabled) {
        this.$lis.filter('[data-original-index="' + index + '"]').addClass('disabled').find('a').attr('href', '#').attr('tabindex', -1);
      } else {
        this.$lis.filter('[data-original-index="' + index + '"]').removeClass('disabled').find('a').removeAttr('href').attr('tabindex', 0);
      }
    },

    isDisabled: function () {
      return this.$element.is(':disabled');
    },

    checkDisabled: function () {
      var that = this;

      if (this.isDisabled()) {
        this.$newElement.addClass('disabled').attr('tabindex', -1);
      } else {
        if (this.$newElement.hasClass('disabled')) {
          this.$newElement.removeClass('disabled');
        }

        if (this.$newElement.attr('tabindex') == -1) {
          if (!this.$element.data('tabindex')) this.$newElement.removeAttr('tabindex');
        }
      }

      this.$newElement.click(function () {
        return !that.isDisabled();
      });
    },

    tabIndex: function () {
      if (this.$element.is('[tabindex]')) {
        this.$element.data('tabindex', this.$element.attr('tabindex'));
        this.$newElement.attr('tabindex', this.$element.data('tabindex'));
      }
    },

    clickListener: function () {
      var that = this;

      this.$newElement.on('click', function () {
        that.setSize();
        if (!that.multiple) {
          setTimeout(function () {
            that.$newElement.find('.selected a').focus();
          }, 10);
        }
      });

      this.$newElement.on('click', 'li a', function (e) {
        var $this = $(this),
            clickedIndex = $this.parent().data('originalIndex'),
            prevValue = that.$element.val(),
            prevIndex = that.$element.prop('selectedIndex');

        e.preventDefault();

        //Don't run if we have been disabled
        if (!that.isDisabled() && !$this.parent().hasClass('disabled')) {
          var $options = that.$element.find('option'),
              $option = $options.eq(clickedIndex),
              state = $option.prop('selected');

          if (!that.multiple) { // Deselect all others if not multi select box
            $options.prop('selected', false);
            $option.prop('selected', true);
            that.$newElement.find('.selected').removeClass('selected');
            that.setSelected(clickedIndex, true);
          } else { // Toggle the one we have chosen if we are multi select.
            $option.prop('selected', !state);
            that.setSelected(clickedIndex, !state);
          }

          that.$newElement.focus();

          // Trigger select 'change'
          if ((prevValue != that.$element.val() && that.multiple) || (prevIndex != that.$element.prop('selectedIndex') && !that.multiple)) {
            that.$element.change();
          }
        }
      });

      this.$newElement.on('click', 'li.disabled a', function (e) {
        if (e.target == this) {
          e.preventDefault();
          e.stopPropagation();
          that.$newElement.focus();
        }
      });

      this.$element.change(function () {
        that.render(false);
      });
    },

    val: function (value) {
      if (typeof value !== 'undefined') {
        this.$element.val(value);
        this.render();

        return this.$element;
      } else {
        return this.$element.val();
      }
    },

    selectAll: function () {
      this.findLis();
      this.$lis.not('.disabled').not('.selected').filter(':visible').find('a').click();
    },

    deselectAll: function () {
      this.findLis();
      this.$lis.not('.disabled').filter('.selected').filter(':visible').find('a').click();
    },

    keydown: function (e) {
      var $this = $(this),
          $parent = $this.parent(),
          $items,
          that = $parent.data('this'),
          index,
          next,
          first,
          last,
          prev,
          nextPrev,
          prevIndex,
          isActive;

      $items = $('[role=menu] li a', $parent);

      if (!$items.length) return;

      if (/(38|40)/.test(e.keyCode.toString(10))) {
        index = $items.index($items.filter(':focus'));
        first = $items.parent(':not(.disabled):visible').first().index();
        last = $items.parent(':not(.disabled):visible').last().index();
        next = $items.eq(index).parent().nextAll(':not(.disabled):visible').eq(0).index();
        prev = $items.eq(index).parent().prevAll(':not(.disabled):visible').eq(0).index();
        nextPrev = $items.eq(next).parent().prevAll(':not(.disabled):visible').eq(0).index();

        prevIndex = $this.data('prevIndex');

        if (e.keyCode == 38) {
          if (index != nextPrev && index > prev) index = prev;
          if (index < first) index = first;
          if (index == prevIndex) index = last;
        }

        if (e.keyCode == 40) {
          if (index == -1) index = 0;
          if (index != nextPrev && index < next) index = next;
          if (index > last) index = last;
          if (index == prevIndex) index = first;
        }

        $this.data('prevIndex', index);

        $items.eq(index).focus();
      }
      // Select focused option if "Enter", "Spacebar" are pressed inside the menu.
      if (/(13|32)/.test(e.keyCode.toString(10))) {
        e.preventDefault();
        $items.eq($this.data('prevIndex')).click(); // $(':focus').click()
      }
    },

    refresh: function () {
      this.reloadLi();
      this.render();
      this.setWidth();
      this.setStyle();
      this.checkDisabled();
      this.liHeight();
    },

    update: function () {
      this.reloadLi();
      this.setWidth();
      this.setStyle();
      this.checkDisabled();
      this.liHeight();
    },

    hide: function () {
      this.$newElement.hide();
    },

    show: function () {
      this.$newElement.show();
    },

    remove: function () {
      this.$newElement.remove();
      this.$element.remove();
    }
  };

  // SELECTLIST PLUGIN DEFINITION
  // ==============================
  function Plugin(option, event) {
    // get the args of the outer function..
    var args = arguments;
    // The arguments of the function are explicitly re-defined from the argument list, because the shift causes them
    // to get lost
    //noinspection JSDuplicatedDeclaration
    var _option = option,
        option = args[0],
        event = args[1];
    [].shift.apply(args);

    // This fixes a bug in the js implementation on android 2.3 #715
    if (typeof option == 'undefined') {
      option = _option;
    }

    var value;
    var chain = this.each(function () {
      var $this = $(this);
      if ($this.is('select')) {
        var data = $this.data('selectlist'),
            options = typeof option == 'object' && option;

        if (!data) {
          var config = $.extend({}, Selectlist.DEFAULTS, $.fn.selectlist.defaults || {}, $this.data(), options);
          $this.data('selectlist', (data = new Selectlist(this, config, event)));
        } else if (options) {
          for (var i in options) {
            if (options.hasOwnProperty(i)) {
              data.options[i] = options[i];
            }
          }
        }

        if (typeof option == 'string') {
          if (data[option] instanceof Function) {
            value = data[option].apply(data, args);
          } else {
            value = data.options[option];
          }
        }
      }
    });

    if (typeof value !== 'undefined') {
      //noinspection JSUnusedAssignment
      return value;
    } else {
      return chain;
    }
  }

  var old = $.fn.selectlist;
  $.fn.selectlist = Plugin;
  $.fn.selectlist.Constructor = Selectlist;

  // SELECTLIST NO CONFLICT
  // ========================
  $.fn.selectlist.noConflict = function () {
    $.fn.selectlist = old;
    return this;
  };

  $(document)
      .on('keydown', '.bootstrap-selectlist, .selectlist [role=menu]', Selectlist.prototype.keydown);

  // SELECTLIST DATA-API
  // =====================
  $(window).on('load.bsl.selectlist.data-api', function () {
    $('.selectlist').each(function () {
      var $selectlist = $(this);
      Plugin.call($selectlist, $selectlist.data());
    })
  });
})(jQuery);

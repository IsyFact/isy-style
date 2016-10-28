/*!
 * Bootstrap-browseAndCollect v0.9.0
 *
 * Copyright 2015 bootstrap-browseAndCollect
 */
(function ($) {
  'use strict';

  var BrowseAndCollect = function (element, options, e) {
    if (e) {
      e.stopPropagation();
      e.preventDefault();
    }

    this.$element = $(element);
    this.$newElement = null;
    this.$lis = null;
    this.options = options;

    //Expose public methods
    this.val = BrowseAndCollect.prototype.val;
    this.refresh = BrowseAndCollect.prototype.refresh;
    this.setStyle = BrowseAndCollect.prototype.setStyle;
    this.destroy = BrowseAndCollect.prototype.remove;
    this.remove = BrowseAndCollect.prototype.remove;
    this.show = BrowseAndCollect.prototype.show;
    this.hide = BrowseAndCollect.prototype.hide;

    this.init();
  };

  BrowseAndCollect.VERSION = '0.9.0';

  // part of this is duplicated in i18n/defaults-en_US.js. Make sure to update both.
  BrowseAndCollect.DEFAULTS = {
    style: '',
    size: 'auto',
    width: false,
    showIcon: false,
    iconBase: 'icon',
    tickIcon: 'icon-ok'
  };

  BrowseAndCollect.prototype = {

    constructor: BrowseAndCollect,

    init: function () {
      var that = this,
          id = this.$element.attr('id');

      if (!this.options.showIcon) this.options.tickIcon = '';
      this.$element.hide();
      this.autofocus = this.$element.prop('autofocus');
      this.$newElement = this.createElement();
      this.reloadLi();
      this.bindCollectButtons();

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
      this.liHeight();
      this.setStyle();
      this.setSize();
      this.$newElement.data('this', this);
    },

    createElement: function () {
      // Options
      var autofocus = this.autofocus ? ' autofocus' : '',
          disabled = this.$element.hasClass('disabled')?' disabled':'';
      // Elements
      var collectButtons = '<div class="collectbuttons"><span>' + 
        '<button type="button" class="btn btn-icon-round btn-icon-round-large"><span class="icon icon-next"></span></button><br/>' +
        '<button type="button" class="btn btn-icon-round btn-icon-round-large"><span class="icon icon-fast-forward"></span></button><br/>' +
        '<button type="button" class="btn btn-icon-round btn-icon-round-large"><span class="icon icon-rewind"></span></button><br/>' +
        '<button type="button" class="btn btn-icon-round btn-icon-round-large"><span class="icon icon-previous"></span></button>' +
        '</span></div>';
      var view =
          '<div class="btn-group bootstrap-browsecollect open show-tick' + disabled +'">' +
          '<div class="open browsecollect bac-source" >' +
          '<ul class="dropdown-menu inner browsecollect" role="menu"' + autofocus + '>' +
          '</ul>' +
          '</div>' +
          collectButtons +
          '<div class="open browsecollect bac-target" >' +
          '<ul class="dropdown-menu inner browsecollect" role="menu"' + autofocus + '>' +
          '</ul>' +
          '</div>' +
          '</div>';

      return $(view);
    },

    bindCollectButtons: function() {
      if (this.$element.is(':disabled')) {
        this.$newElement.find('button').addClass('disabled');
        return;
      }
      var that = this;
      var processItems = function(select, $items) {
        var $options = that.$element.find('option');
        $items.each(function() {
          var clickedIndex = $(this).data('originalIndex'),
            $option = $options.eq(clickedIndex);
          $option.prop('selected', select);
          that.setSelected(clickedIndex, select, false);
        });
        // Trigger select 'change'
        that.$element.change();
        that.$lis.removeClass('selected');
        that.updateCollectButtons();
      };  

      this.$newElement.on('click', 'button', function(e) {
        var $btn = $(this);
        var $items, source = true;
        if ($btn.find('span.icon-next').length) {
            $items = that.$newElement.find('.bac-source li.selected');
        } else if ($btn.find('span.icon-fast-forward').length) {
            $items = that.$newElement.find('.bac-source li');
        } else if ($btn.find('span.icon-previous').length) {
            source =false;
            $items = that.$newElement.find('.bac-target li.selected');
        } else if ($btn.find('span.icon-rewind').length) {
            source =false;
            $items = that.$newElement.find('.bac-target li');
        }
        processItems(source,$items);
      });
      this.updateCollectButtons();
    },
    
    updateCollectButtons: function() {
      var disabled= this.$element.is(':disabled'); 
      var $items = this.$newElement.find('.bac-source li');
      if ($items.length == 0 || disabled) {
        this.$newElement.find('button:has(span.icon-fast-forward)').addClass('disabled');
      } else {
        this.$newElement.find('button:has(span.icon-fast-forward)').removeClass('disabled');
      }
      if ($items.filter('.selected').length == 0 || disabled) {
        this.$newElement.find('button:has(span.icon-next)').addClass('disabled');
      } else {
        this.$newElement.find('button:has(span.icon-next)').removeClass('disabled');
      }
      $items = this.$newElement.find('.bac-target li');
      if ($items.length == 0 || disabled) {
        this.$newElement.find('button:has(span.icon-rewind)').addClass('disabled');
      } else {
        this.$newElement.find('button:has(span.icon-rewind)').removeClass('disabled');
      }
      if ($items.filter('.selected').length == 0 || disabled) {
        this.$newElement.find('button:has(span.icon-previous)').addClass('disabled');
      } else {
        this.$newElement.find('button:has(span.icon-previous)').removeClass('disabled');
      }
      this.setSize();
    },
    
    reloadLi: function () {
      var selected = [];
      this.$newElement.find('li.selected').each(function() {
          selected.push($(this).data("original-index"));
      });
      
      //Remove all children.
      this.destroyLi();
      //Re build
      var $li = this.createLi();
      this.$newElement.find('.bac-source ul').append($li);
      this.findLis();
      var that = this,
          target = this.$newElement.find('.bac-target ul');
      this.$element.find('option').each(function (index) {
          that.setDisabled(index, $(this).is(':disabled') || $(this).parent().is(':disabled'));
          if ($(this).is(':selected')) {
              that.$lis.filter('[data-original-index="' + index + '"]').appendTo(target);
          }
        });
      $.each(selected, function(i, index) {
    	  that.$lis.filter('[data-original-index="' + index + '"]').addClass('selected');
      });
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

      return $(_li.join(''));
    },

    findLis: function () {
      if (this.$lis == null) this.$lis = this.$newElement.find('li');
      return this.$lis;
    },

    /**
     * @param [style]
     * @param [status]
     */
    setStyle: function (style, status) {
      if (this.$element.attr('class')) {
        this.$newElement.addClass(this.$element.attr('class').replace(/browsecollect|validate\[.*\]/gi, ''));
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
      var that = this,
          menu = this.$newElement.find('.open.browsecollect'),
          menuInner = menu.find('.inner'),
          buttons = this.$newElement.find('.collectbuttons'),
          selectHeight = this.$newElement.outerHeight(),
          liHeight = this.$newElement.data('liHeight'),
          menuPadding = parseInt(menu.css('padding-top')) +
              parseInt(menu.css('padding-bottom')) +
              parseInt(menu.css('border-top-width')) +
              parseInt(menu.css('border-bottom-width')),
          menuExtras = menuPadding + parseInt(menu.css('margin-top')) + parseInt(menu.css('margin-bottom')) + 2,
          menuHeight;

      var sources = this.$newElement.find('.bac-source li').length;
      var targets = this.$newElement.find('.bac-target li').length;
      var size = Math.max(sources,targets);
      if (!this.options.size || this.options.size == 'auto') {
          menuHeight = liHeight * size + menuPadding;
      } else {
          menuHeight = liHeight * this.options.size + menuPadding;
      }
      menu.css({'height': menuHeight + 'px', 'overflow': 'hidden'});
      menuInner.css({'height': menuHeight - menuPadding + 'px', 'overflow': 'auto'});
    },

    setSelected: function (index, selected, updateButtons) {
      this.findLis();
      this.$lis.filter('[data-original-index="' + index + '"]').toggleClass('selected', selected);
      if (updateButtons !== false) {
        this.updateCollectButtons();
      }
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
      });

      this.$newElement.on('click', 'li a', function (e) {
        var $this = $(this),
            $parent = $this.parent(),
            clickedIndex = $parent.data('originalIndex'),
            onSources = $this.parents('.bac-source').length==1;
        e.stopPropagation();
        e.preventDefault();

        //Don't run if we have been disabled
        if (!that.isDisabled() && !$this.parent().hasClass('disabled')) {
          var state = $parent.hasClass('selected');
          that.setSelected(clickedIndex, !state);
          that.$newElement.focus();
          that.$element.change();
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
        that.reloadLi();
      });
    },

    val: function (value) {
      if (typeof value !== 'undefined') {
        this.$element.val(value);
        return this.$element;
      } else {
        return this.$element.val();
      }
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
        that.$newElement.find('.active a').click();
        $this.focus();
      }
    },

    refresh: function () {
      this.reloadLi();
      this.setStyle();
      this.checkDisabled();
      this.liHeight();
      this.updateCollectButtons();
    },

    update: function () {
      this.reloadLi();
      this.setStyle();
      this.checkDisabled();
      this.liHeight();
      this.updateCollectButtons();
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

  // browsecollect PLUGIN DEFINITION
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
        var data = $this.data('browsecollect'),
            options = typeof option == 'object' && option;

        if (!data) {
          var config = $.extend({}, BrowseAndCollect.DEFAULTS, $.fn.browsecollect.defaults || {}, $this.data(), options);
          $this.data('browsecollect', (data = new BrowseAndCollect(this, config, event)));
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

  var old = $.fn.browsecollect;
  $.fn.browsecollect = Plugin;
  $.fn.browsecollect.Constructor = BrowseAndCollect;

  // browsecollect NO CONFLICT
  // ========================
  $.fn.browsecollect.noConflict = function () {
    $.fn.browsecollect = old;
    return this;
  };

  $(document)
      .on('keydown', '.bootstrap-browsecollect, .browsecollect [role=menu]', BrowseAndCollect.prototype.keydown);

  // browsecollect DATA-API
  // =====================
  $(window).on('load.bac.browsecollect.data-api', function () {
    $('.browsecollect').each(function () {
      var $browsecollect = $(this);
      Plugin.call($browsecollect, $browsecollect.data());
    })
  });
})(jQuery);

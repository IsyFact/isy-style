
function _rgbaToHex (rgbaValue) {
    var that = this;

    var rgbaColorInput = rgbaValue;

    // Color object which contains the various primary colors and opacity.
    this.colorObject = function ( red, green, blue, alpha ) {
        // var red, green, blue, alpha;
        return {
            red: red,
            green: green,
            blue: blue,
            alpha: alpha,
            toHex: function() {
                function getHexValue( intInput ) {
                    var result = intInput.toString(16);
                    if( result.length < 2 ) {
                        result = '0' + result;
                    }
                    return result;
                }
                return getHexValue(red) + getHexValue(green) + getHexValue(blue);
            }
        };
    };

    this.colorStringParser = function (rgba) {
        // Strip the rgba-definition off the string.
        rgba = rgba.replace('rgba(', '')
            .replace(')', '')
            .replace(' ', '');

        // Split the rgba string into an array.
        var splittedRgba = rgba.split(',');

        return new that.colorObject(
            parseInt( splittedRgba[0], 10 ),
            parseInt( splittedRgba[1], 10 ),
            parseInt( splittedRgba[2], 10 ),
            parseFloat( splittedRgba[3], 10 ) || 1
        );
    };

    this.hexConverter = function (color, bgColor) {
        // Converts the given color to a Color object, using the given gbColor in the calculation.
            var alpha = color.alpha;

            function getTintValue(tint, bgTint) {
                var tmp = Math.floor((1 - alpha ) * bgTint + alpha * tint);
                if( tmp > 255 ) {
                    return 255;
                }
                return tmp;
            }

            return that.colorObject(
                getTintValue( color.red, bgColor.red),
                getTintValue( color.green, bgColor.green),
                getTintValue( color.blue, bgColor.blue)
            );

    };

    this.calculateHexColor = function (rgbaCol) {
        var rgbaVal = rgbaCol;
        var backgroundValue = 'rgba(255, 255, 255, 1)';

        if( !rgbaVal) {
            // No values supplied.
            return;
        }
        var rgbaColor = that.colorStringParser( rgbaVal );
        var backgroundColor = that.colorStringParser( backgroundValue );



        var result = rgbaColor;
        if( rgbaColor.alpha < 1 ) {
            // rgba color has transparency, so we need to convert it.
            result = that.hexConverter( rgbaColor, backgroundColor );
        }

        console.log('CONVERTED', '#' + result.toHex());
        return '#' + result.toHex();
    };

    return this.calculateHexColor(rgbaColorInput);
}


function _isValidHexColor (hexColor) {
    var colorRegex = /(^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)/i;
    console.log('IS VALID', colorRegex.test(hexColor));
    return colorRegex.test(hexColor);

}

function _hexToRgbA(hexColorStr, opacity) {

    var rgbaColorStr;
    //Test if given hex color value is valid
    if (/^#([A-Fa-f0-9]{3}){1,2}$/.test(hexColorStr)) {

        rgbaColorStr = hexColorStr.substring(1).split('');

        if (rgbaColorStr.length === 3) {
            rgbaColorStr = [rgbaColorStr[0], rgbaColorStr[0], rgbaColorStr[1], rgbaColorStr[1], rgbaColorStr[2], rgbaColorStr[2]];
        }

        rgbaColorStr = '0x' + rgbaColorStr.join('');
        return 'rgba(' + [(rgbaColorStr >> 16) & 255, (rgbaColorStr >> 8) & 255, rgbaColorStr & 255].join(',') + ',' + opacity + ')';
    }

    throw new Error('hexToRgbA() -> No valid hex color string passed to function!');
}

module.exports = {
    rgbaToHex: _rgbaToHex,
    hexToRgbA: _hexToRgbA,
    isValidHexColor: _isValidHexColor
};
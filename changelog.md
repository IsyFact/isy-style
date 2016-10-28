## Changelog

### 2.0.0 - Merge mit DAISY

### 1.7.0 - maintenance release for use with web-component
### 1.6.0 - maintenance release for use with web-component
### 1.5.0 - maintenance release for use with web-component
### 1.4.0 - maintenance release for use with web-component

### 1.3.0 - first release of styleguide with JSF integration
- added CSS for integration with JSF

### 1.2.0 - add support for IE8 without js
- changed all html5 elements (<nav>,<main>,<article>) to divs, as html5shiv for ie8 is js dependent
- patch bootstrap3 grid through stylesheets to circumvent missing media queries capability without respond.js
    - added .row-df class to every .row element
    - use only the large (lg) grid classes, converted all col-md,col-sm,col-xs to col-lg columns
- added error-alert in red color
- fixed no-js behaviour for disabled dropdowns on ie8, added .disabled class in markup
- improved the input divider layout markup in page-search-result.html for proper alignment

### 1.1.0 - final release
- added filechooser button style
- refactored a lot of code

### 1.0.0 - feature complete release
This release includes all features
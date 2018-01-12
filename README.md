# Dump1090-OpenLayers3-html
Modifications to the OL3 html files (part of the dump1090-fa branch).  The contents of public_html are a complete replacement to the webserver root directory on your dump1090 or dump1090-fa installation.  Better to rename your existing html/public-html folder, and copy this one in (calling it as per the orignal).  Set your options at the bottom of config.js (you must also updte your site lat/long (2 places) in this file), clear your browser cache and re-load your dump1090 page.

Originaly amended for my own purposes, but having had several requests to share these changes I have decided to place them in this forum. The new layers are only really useful if you have aircraft in UK airspace.  Other modifications can provide value in other regions.

## The following options are available via config.js settings:

1. Mouse Point Latitude and Longitude - files: index.html, style.css, script.js - see wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/1.-Mouse-position-Latitude-and-Longitude

2. Additional maps- files: layers.js = see wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/2.-Additional-maps

3. US Layers - allow to remove - file: layers.js - see wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/3.-US-Layers

4. UK Civilian layers - file: layer.js and supporting files in \layers\ directory - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/4.-UK-Civilian-overlays

5. UK Military layers - file: layer.js and supporting files in \layers\ directory - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/5.-UK-Military-overlays

6. Hover over labels - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/6.-Hover-over-labels

7. Permanent labels - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/7.-Permanent-labels

8. Maximum range plot - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/8.-Maximum-range-plot

## Also some additional modifications:

9. Miscellaneous changes - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/9.-Minor-personal-preference-changes

10. Personalised icons - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/A.-Aircraft-icon-changes

11. Ability to filter special aircraft - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/B.-Filter aircraft of interest


# Credits:
Webserver (html sub-directory) changes by Allan Kissack

Originaly from: [dump1090-fa Debian/Raspbian packages] (https://github.com/flightaware/dump1090)

Which is a fork of: [dump1090-mutability](https://github.com/mutability/dump1090) for [FlightAware](http://flightaware.com)'s [PiAware](http://flightaware.com/adsb/piaware) software.

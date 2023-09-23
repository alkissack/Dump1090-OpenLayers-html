# Dump1090-OpenLayers-html
Modifications to the OL3, then an upgrade to OL6, html files (part of the dump1090-fa branch).  The contents of public_html are a complete replacement to the webserver root directory on your dump1090-fa, or compatible, installation.  Better to rename your existing html folder, and copy this one in (calling it as per the orignal).  Set your options at the bottom of config.js (you must also update your site lat/long (2 places) in this file), clear your browser cache and re-load your dump1090-fa page.

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

9. Export/Import range plot - When you expand the sidebar (no map) there are an additional 3 red buttons (double click required to action).  Clear ranges - reverts all ranges to zero. Export ranges - saves 3 files to local machine (downloads). Import ranges - imports ranges from the backup folder on the server (files must exist and be called minRange.json, midRange.json & maxRange.json).  These are only a single range per compass degree so not as fine as that plotted, but hopefully still of some value.

## Also some additional modifications:

A. Miscellaneous changes - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/9.-Minor-personal-preference-changes

B. Personalised icons - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/A.-Aircraft-icon-changes

C. Ability to filter special aircraft - wiki https://github.com/alkissack/Dump1090-OpenLayers3-html/wiki/B.-Filter-aircraft-of-interest

D. Setting the sidebar side to auto and then the tableinfo width varying, could cuase the map to lose its correct aspect ratio.  see comments labelled: // AKISSACK mapsize    Ref: AKDD

# Credits:
Webserver (html sub-directory) changes by Allan Kissack

Originaly from: [dump1090-fa Debian/Raspbian packages] (https://github.com/flightaware/dump1090)

Which is a fork of: [dump1090-mutability](https://github.com/mutability/dump1090) for [FlightAware](http://flightaware.com)'s [PiAware](http://flightaware.com/adsb/piaware) software.

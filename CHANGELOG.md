# Changelog

All notable changes to this project will be documented in this file.

Changes and documentation about Navit can be found in the wiki at:
  http://wiki.navit-project.org
A timeline of opened and closed issue tickets can be found at our trac instance:
  http://trac.navit-project.org and on our github project:
  https://github.com/navit-gps/navit/issues

Navit follows the semantic versioning:
* `x.y.Z` (patch): only bug fixes or refactoring, no changes in functionality
* `x.Y.z` (minor): added or changed functionality but can be used as a drop-in
  replacement for the previous version (all data formats and interfaces are still
  supported); minor UI changes (such as moving individual menu items) are also
  allowed
* `X.y.z` (major): at least one of the following:
  * Major new functionality (such as Augmented Reality, inertial navigation or
    support for live traffic services): de-facto standard for end-user apps
  * New user interface (such as moving from the old pulldown menu UI to the Internal
    GUI): this is definitely the UI equivalent of a breaking API change
  * Dropped support for a data format or interface: also a breaking change and
    usually tends to occur along with larger changes which would warrant a new major
    version anyway


## [Unreleased]

To get the list of all the unreleased commits, see:
[Full Changelog](https://github.com/navit-gps/navit/compare/v0.5.4...HEAD)

## [0.5.4] - 2020-01-18

### Added

- Android: Speech: Do not pronounce hyphens during textual directions [\#732](https://github.com/navit-gps/navit/issues/732)
- Add support to display OSM multipolygons [\#398](https://github.com/navit-gps/navit/issues/398)
- core:feature:multipolygon support [\#824](https://github.com/navit-gps/navit/pull/824) ([metalstrolch](https://github.com/metalstrolch))
- Add/Android: Provide geo coordinates for clicked position in contextual menu [\#794](https://github.com/navit-gps/navit/pull/794) ([lains](https://github.com/lains))
- Add:Gui/Internal: Adding missing escape modes and fixing generic html escape mode [\#785](https://github.com/navit-gps/navit/pull/785) ([lains](https://github.com/lains))
- Refactor:GUI/GTK:Adding pointer and label when displaying POI on map [\#729](https://github.com/navit-gps/navit/pull/729) ([lains](https://github.com/lains))
- enhancement:maptool:slice big polygons into smaller parts [\#906](https://github.com/navit-gps/navit/pull/906) ([metalstrolch](https://github.com/metalstrolch))
- enhancement:maptool:improve processing speed and fix some memory holes [\#901](https://github.com/navit-gps/navit/pull/901) ([metalstrolch](https://github.com/metalstrolch))
- feature:graphics/android: add polygons with holes support [\#889](https://github.com/navit-gps/navit/pull/889) ([metalstrolch](https://github.com/metalstrolch))
- traffic:Improve startup performance [\#822](https://github.com/navit-gps/navit/pull/822) ([mvglasow](https://github.com/mvglasow))
- feature:gui\_internal: include post code in town serch [\#818](https://github.com/navit-gps/navit/pull/818) ([metalstrolch](https://github.com/metalstrolch))
- add:graphics:dpi scaling support [\#813](https://github.com/navit-gps/navit/pull/813) ([metalstrolch](https://github.com/metalstrolch))
- Add/Android Supporting sending & receiving geo: intents [\#812](https://github.com/navit-gps/navit/pull/812) ([lains](https://github.com/lains))
- enhancement:layout\_car:use transparency to draw some map features [\#879](https://github.com/navit-gps/navit/pull/879) ([metalstrolch](https://github.com/metalstrolch))
- Add watch after reopen the gps file [\#872](https://github.com/navit-gps/navit/pull/872) ([gefin](https://github.com/gefin))
- Add:graphics/windows: polygons with holes for windows CE [\#862](https://github.com/navit-gps/navit/pull/862) ([metalstrolch](https://github.com/metalstrolch))
- Add:graphics/sdl: Polygon with holes support. [\#861](https://github.com/navit-gps/navit/pull/861) ([metalstrolch](https://github.com/metalstrolch))
- Admin levels for additional countries [\#859](https://github.com/navit-gps/navit/pull/859) ([mvglasow](https://github.com/mvglasow))
- countries:add:Kosovo [\#846](https://github.com/navit-gps/navit/pull/846) ([metalstrolch](https://github.com/metalstrolch))
- Feature:Support USERPROFILE folder for Windows target [\#758](https://github.com/navit-gps/navit/pull/758) ([OLFDB](https://github.com/OLFDB))

### Updated

- Update:Android:Navit logo [\#943](https://github.com/navit-gps/navit/pull/943) ([lains](https://github.com/lains))
- Update:Navit logo according to proposal in issue \#436 [\#724](https://github.com/navit-gps/navit/pull/724) ([lains](https://github.com/lains))
- Update:i18n:Updated German \(Switzerland\) translation from launchpad [\#934](https://github.com/navit-gps/navit/pull/934) ([pgrandin](https://github.com/pgrandin))
- Update:i18n:Updated Danish translation from launchpad [\#933](https://github.com/navit-gps/navit/pull/933) ([pgrandin](https://github.com/pgrandin))
- Update:i18n:Updated Welsh translation from launchpad [\#932](https://github.com/navit-gps/navit/pull/932) ([pgrandin](https://github.com/pgrandin))
- Update:i18n:Updated Kurdish \(Sorani\) translation from launchpad [\#931](https://github.com/navit-gps/navit/pull/931) ([pgrandin](https://github.com/pgrandin))
- Update:i18n:Updated Swedish translation from launchpad [\#912](https://github.com/navit-gps/navit/pull/912) ([hoehnp](https://github.com/hoehnp))
- Update:i18n:Updated English \(United Kingdom\) translation from launchpad [\#896](https://github.com/navit-gps/navit/pull/896) ([hoehnp](https://github.com/hoehnp))
- Update:i18n:Updated German translation from launchpad [\#895](https://github.com/navit-gps/navit/pull/895) ([hoehnp](https://github.com/hoehnp))
- cleanup:qt:Whitespaces and blank lines cleanup according to cpplint [\#930](https://github.com/navit-gps/navit/pull/930) ([aerostitch](https://github.com/aerostitch))
- cleanup:search:Remove duplicate code for search\_fix\_spaces [\#917](https://github.com/navit-gps/navit/pull/917) ([aerostitch](https://github.com/aerostitch))
- cleanup:search:Minor - Use fallthrough like the rest of the cases [\#886](https://github.com/navit-gps/navit/pull/886) ([aerostitch](https://github.com/aerostitch))
- update: Navit logo for \(sailfish\) desktop [\#874](https://github.com/navit-gps/navit/pull/874) ([metalstrolch](https://github.com/metalstrolch))
- Disable maptool if protobuf-c not found [\#797](https://github.com/navit-gps/navit/pull/797) ([metalstrolch](https://github.com/metalstrolch))

### Fixed

- Fix run when in build dir [\#957](https://github.com/navit-gps/navit/pull/957) ([jkoan](https://github.com/jkoan))
- fix/enhancement:graphics/layout:get default icon size from layout + draw tunnels transparent + mark oneway streets [\#884](https://github.com/navit-gps/navit/pull/884) ([metalstrolch](https://github.com/metalstrolch))
- Fix:Speech:Android: Replace hyphens with white spaces when using android speech [\#761](https://github.com/navit-gps/navit/pull/761) ([lains](https://github.com/lains))
- Android notification bar covers part of content [\#904](https://github.com/navit-gps/navit/issues/904)
- Crash on start when reading traffic data [\#900](https://github.com/navit-gps/navit/issues/900)
- Missing clipping for polygons with holes leads to slow rendering performance on Windows CE and SDL [\#869](https://github.com/navit-gps/navit/issues/869)
- Bicycle routing is close to unusable outside built-up areas [\#844](https://github.com/navit-gps/navit/issues/844)
- Wrong behaviour on Screen rotation or Windows resize [\#433](https://github.com/navit-gps/navit/issues/433)
- fix:tomtom: Make sure the tomtom\_plugin and tomtom\_minimal contain navit.xml [\#875](https://github.com/navit-gps/navit/pull/875) ([gefin](https://github.com/gefin))
- vehicle:fix: add compatibility for gpsd 3.20 [\#959](https://github.com/navit-gps/navit/pull/959) ([aerostitch](https://github.com/aerostitch))
- fix:build:android:Fix android build on circleci [\#955](https://github.com/navit-gps/navit/pull/955) ([jkoan](https://github.com/jkoan))
- fix:various:fix compiler warnings [\#940](https://github.com/navit-gps/navit/pull/940) ([metalstrolch](https://github.com/metalstrolch))
- fix:all:fix compiler warnings [\#935](https://github.com/navit-gps/navit/pull/935) ([metalstrolch](https://github.com/metalstrolch))
- fix:core:Don't flood stack on big map elements [\#928](https://github.com/navit-gps/navit/pull/928) ([metalstrolch](https://github.com/metalstrolch))
- Fix:Android:fixes [\#919](https://github.com/navit-gps/navit/pull/919) ([jandegr](https://github.com/jandegr))
- fix:maptool:create valid zip64 central directory [\#915](https://github.com/navit-gps/navit/pull/915) ([metalstrolch](https://github.com/metalstrolch))
- Fix:traffic:Determine item delay correctly [\#903](https://github.com/navit-gps/navit/pull/903) ([mvglasow](https://github.com/mvglasow))
- Fix:traffic:Use correct coord count for restored items, fixes \#900 [\#902](https://github.com/navit-gps/navit/pull/902) ([mvglasow](https://github.com/mvglasow))
- fix:core:prevent stack overflow on drawing huge polygons [\#897](https://github.com/navit-gps/navit/pull/897) ([metalstrolch](https://github.com/metalstrolch))
- Fix:Android:system bars  [\#890](https://github.com/navit-gps/navit/pull/890) ([jandegr](https://github.com/jandegr))
- fix:graphics/qt5; Allow to draw transparent polygons [\#878](https://github.com/navit-gps/navit/pull/878) ([metalstrolch](https://github.com/metalstrolch))
- Fix:android:64 bit and cleanup2 [\#877](https://github.com/navit-gps/navit/pull/877) ([jandegr](https://github.com/jandegr))
- Fix:toolchain:Remove privileged operation from build script [\#839](https://github.com/navit-gps/navit/pull/839) ([mvglasow](https://github.com/mvglasow))
- Fix:graphics/android:Fix crash on startup [\#838](https://github.com/navit-gps/navit/pull/838) ([mvglasow](https://github.com/mvglasow))
- Fix:core: NULL pointer when calling iso8601\_to\_secs [\#837](https://github.com/navit-gps/navit/pull/837) ([gefin](https://github.com/gefin))
- fix:core:add clipping to polygons with holes [\#870](https://github.com/navit-gps/navit/pull/870) ([metalstrolch](https://github.com/metalstrolch))
- Fix:xml:Fix bike routing [\#850](https://github.com/navit-gps/navit/pull/850) ([mvglasow](https://github.com/mvglasow))
- Fix: Fix pkgconfig detection, and multiple subsequent build for Android [\#833](https://github.com/navit-gps/navit/pull/833) ([lains](https://github.com/lains))
- fix: vehicle: Increase layer for cursor for rotation [\#817](https://github.com/navit-gps/navit/pull/817) ([metalstrolch](https://github.com/metalstrolch))
- fix:core: Correct default layout handling. [\#816](https://github.com/navit-gps/navit/pull/816) ([metalstrolch](https://github.com/metalstrolch))
- fix: no redraw of map when stopping drag over osd\_speed\_warner, osd\_stopwatch and osd\_odometer [\#814](https://github.com/navit-gps/navit/pull/814) ([hoehnp](https://github.com/hoehnp))
- Fixed typos [\#787](https://github.com/navit-gps/navit/pull/787) ([pgrandin](https://github.com/pgrandin))
- Fix:core:Fix Warning in IDE for Items not found [\#778](https://github.com/navit-gps/navit/pull/778) ([jkoan](https://github.com/jkoan))
- fix:graphics:Fix issue when try to close the SDL window ion non webos [\#775](https://github.com/navit-gps/navit/pull/775) ([jkoan](https://github.com/jkoan))
- Fix:core:Fix item\_def.h when used whithout defined macros \(like in IDE\) [\#771](https://github.com/navit-gps/navit/pull/771) ([jkoan](https://github.com/jkoan))
- Fix:port/Android:Create notification channel on API 26+ [\#756](https://github.com/navit-gps/navit/pull/756) ([mvglasow](https://github.com/mvglasow))
- Refactoring:xml: Fix a typo of the OpenStreetMap name in the shipped XML [\#857](https://github.com/navit-gps/navit/pull/857) ([aerostitch](https://github.com/aerostitch))
- qt5: Remove unnecessary moc includes. [\#798](https://github.com/navit-gps/navit/pull/798) ([metalstrolch](https://github.com/metalstrolch))

### Other

- We started to migrate the documentation from the old wiki to the docs folder to be displayed by readthedocs.
- Add:graphics/windows: draw polygon with holes [\#855](https://github.com/navit-gps/navit/pull/855) ([metalstrolch](https://github.com/metalstrolch))
- update building of sailfish OS to version 3.1.0.12 [\#843](https://github.com/navit-gps/navit/pull/843) ([hoehnp](https://github.com/hoehnp))
- Reverting part of e7a70e9dc04b94b47fb7786aab4edfd25132c70f [\#835](https://github.com/navit-gps/navit/pull/835) ([lains](https://github.com/lains))
- jandegr's fix for the windows builds issues [\#806](https://github.com/navit-gps/navit/pull/806) ([pgrandin](https://github.com/pgrandin))
- Adding comments and const [\#788](https://github.com/navit-gps/navit/pull/788) ([lains](https://github.com/lains))
- Sync bookmarks 2 [\#782](https://github.com/navit-gps/navit/pull/782) ([jkoan](https://github.com/jkoan))
- Android: Do not reinitialize everything when the activity is recreated [\#754](https://github.com/navit-gps/navit/pull/754) ([mvglasow](https://github.com/mvglasow))
- Refactoring:cmake:simplify version management [\#710](https://github.com/navit-gps/navit/pull/710) ([bignaux](https://github.com/bignaux))
- Refactoring:mingw:simplify toolchain [\#659](https://github.com/navit-gps/navit/pull/659) ([bignaux](https://github.com/bignaux))
- Refactoring:cmake:from 2.6 to 3.2 [\#651](https://github.com/navit-gps/navit/pull/651) ([bignaux](https://github.com/bignaux))

## [v0.5.3] - 2018-08-31

Release 0.5.2 had issues with the version not properly updated in the `CMakeLists.txt`. This release fixes that issue.

### Changed

* Update Sailfish spec for release 0.5.3. [Joseph Herlant]
* Update Patch version for release 0.5.3. [Joseph Herlant]

## [v0.5.2] - 2018-08-30

### Added

* Add:build:Make gradlew executable. [mvglasow]
* Add:build:Ignore gradle artifacts. [mvglasow]
* Add:doc:add codefactor.io (#599) [jkoan]
* Add:desktop:Add keywords to application desktop file (#610) [Joseph Herlant]
* Add:Android:checkstyle-javadoc (#595) [jandegr]
* Add:build:Add cmake4eclipse artifacts to .gitignore (#594) [mvglasow]
* Add Slovakia and Belgium to the maplist. [jandegr]

### Changed

* Update:doc:Update AUTHORS file. [Joseph Herlant]
* Update in-tree espeak to espeak-1.48.04 (#624) [Stefan Wildemann]
* Update:scripts:change the sanity script to exclude fib and support. [Joseph Herlant]
* Update:scripts:simplify the variables concatenation (#620) [Joseph Herlant]
* Change parenthesis substitutuin as per CodeFactor request. [Stefan Wildemann]
* Update:scripts:change the scripts that use non-POSIX functionnalities to bash v2 (#618) [Joseph Herlant]
* Update:scripts:avoid iterating over ls output by using glob (#614) [Joseph Herlant]
* Update:scripts:change the scripts that use non-POSIX functionnalities to bash (#613) [Joseph Herlant]
* Update:style:optimize the usage of cat in shell scripts (#612) [Joseph Herlant]
* Change:gui:Add underscore to internal gui keyboard. (#607) [tengel]
* Update:i18n:Updated Čeština translation from launchpad (#602) [Pierre GRANDIN]
* Update:i18n:Updated Dutch translation from launchpad (#601) [Pierre GRANDIN]
* Update:i18n:Updated Serbian translation from launchpad (#600) [Pierre GRANDIN]
* Update:doc:Remove overused space characters from README.md (#591) [KAMiKAZOW]
* Updated header. [Pierre Grandin]
* Update:i18n:Updated German translation from launchpad (#567) [Pierre GRANDIN]
* Update:i18n:Updated Spanish translation from launchpad (#566) [Pierre GRANDIN]
* Update:gtk:use user-configured units in Points of Interest (POI) window. (#557) [Charles Curley]
* Update:xmlconfig:Use g\_strndup instead of strncpy. [Joseph Herlant]
* Update:xmlconfig:Make sure we use g\_malloc/g\_free instead of malloc/free. [Joseph Herlant]
* Update:doc:Update the AUTHORS file. [Joseph Herlant]
* Update:i18n:Updated French (fr) translation from launchpad (#453) [Pierre GRANDIN]
* Curley distance poi (#638) [Charles Curley]
* Refactor:gui/internal: Add pointer and label when using function "view on map" (#631) [lains]
* Refactor:core:Minor documentation amendment. [mvglasow]
* Refactoring:graphics Improving quality of circles on platforms without native circle method (#628) [lains]
* Refactor:core:Improve documentation of route\_value\_seg() [mvglasow]
* Update:release:Add more keywords for gitchangelog

### Fixed

* Fix Android apk VersionCode  (#633) [jkoan]
* Fix latlon2bookmark (#627) [jkoan]
* Build:Disable map/garmin on Android. [mvglasow]
* Build:Disable vehicle/gpsd on Android. [mvglasow]
* Scripts:WinCE build script (remove sample map, add espeak-data) (#632) [lains]
* Scripts:replace \s with the supported use of the space class (#617) [Joseph Herlant]
* Scripts:fix malformed shebang (#615) [Joseph Herlant]
* Cmake:Fix the way we set the LIB\_DIR when LIBDIR is set for backward compatibility (#574) [Joseph Herlant]
* Debug:Fix potential unterminated C--string and refactoring debug\_vprintf() (#564) [lains]
* Maptool:coverity #262887 - leaked\_storage: Variable f going out of scope leaks the storage it points to. (#598) [Joseph Herlant]
* Config:Fix dtd to allow real xmlint (#583) [jkoan]
* Fixed typos. [Pierre Grandin]
* Fixed debug statement. [Pierre Grandin]
* Core:fix log replay. [Pierre Grandin]
* Vehicle\_android:Doc update (#571) [jandegr]
* Graphics:Remove missing endif from if else block. [jkoan]
* Core:Fixing dbg() change introduced in 221f783ea1caaaab2f5ceadc6b0fb3e720aac3df (#560) [lains]
* CI convert with librsvg2-bin xxsmal cleanup (#554) [jandegr]
* Debug:Change line separators for dbg to work also on win\* platform (#546) [Joseph Herlant]
* Android:Fix for the permissions dialog (#459) [jkoan]
* Revert Fix because the docker image was fixed. [jkoan]
* Icons:Remove links to unknown image from gui\_map.svg (#542) [Joseph Herlant]
* Gui\_internal:use max/min instead of fmax/fmin as absent from wince. [Joseph Herlant]
* Cleanup:android:Fix android checkstyle complains (#645) [Joseph Herlant]
* Cleanup:scripts:Fix condefactor complaints (#646) [Joseph Herlant]
* Cleanup:maptool: use g\_strcmp0 instead of strcmp (#434) [Joseph Herlant]
* Cleanup:scripts:Use $(..) instead of legacy `..` to make codefactor happy (#623) [Joseph Herlant]
* Cleanup:python:cleanup python scripts (#622) [Joseph Herlant]
* Cleanup:global:force the re-attach the return type to the function declaration (#605) [Joseph Herlant]
* Cleanup:android: re-attach return type to function declaration. [Joseph Herlant]
* Cleanup:cmake:retab all CMakeLists.txt files. [Joseph Herlant]
* Cleanup:global:Use astyle to reformat everything. [Joseph Herlant]
* Android lint check (#586) [jandegr]
* Android:Fix:graphics (#580) [jandegr]
* Move the file name to the right spot. [Joseph Herlant]
* Revert #612 for sailfish build script. [Stefan Wildemann]
* Android translations (#589) [jandegr]
* Refactor:Android (#572) [jandegr]
* Rework:android:Move build system from ant to grandle (#553) [jandegr]
* Refactor:Android (#563) [jandegr]
* Refactoring:Android:cleanup (#458) [jandegr]

### Removed

* Cleanup:osd&support\_espeak:get rid of unused-variables compilation warnings (#619) [Joseph Herlant]
* Cleanup:scripts:removes deprecated usage of egrep (#616) [Joseph Herlant]
* Cleanup:win32:Remove unused variables (#611) [Joseph Herlant]
* Cleanup:cmake:remove trailing spaces. [Joseph Herlant]
* Cleanup:wince:remove unused header (#576) [Joseph Herlant]
* Cleanup:general:Declaring war to control-M. [Joseph Herlant]
* Cleanup:xmlconfig:Remove unreachable code. [Joseph Herlant]
* Cleanup:global:Cleanup some unreachable code. [Joseph Herlant]
* Android:Fix:remove unused dependency libpng (#592) [jandegr]


## [v0.5.1] - 2018-04-19

### Added

* Adding question mark to icon for position pending (#423) [lains]
* Add:icon:forbidden\_area (#331) [youte62]
* Add:build:Add download center (#405) [jkoan]
* Add:icon:danger\_area. [youte62]
* Add:icon:carwash. [youte62]
* Add:graphics-qt5:add missing watchEvent slot (#387) [Pierre GRANDIN]
* Add drinking\_water.svg designed by me - free to use. [youte62]
* Add governement\_building.svg designed by me - free to use. [youte62]
* Add:icon:communication (#343) [youte62]
* Add some Documentation to Plugins (#375) [jkoan]
* Add:icon:concert (#342) [youte62]
* Add:doc:added errors and usage messages to navit\_svg2png script (#369) [naggety]
* Add:icon:fish (#330) [youte62]
* Add:icon:update ghost\_town icon (#332) [youte62]
* Add:icon:bridge (#339) [youte62]
* Add:icon:emergency (#326) [youte62]
* Add:gtk:add menu entry to toggle vehicle tracking (#362) [Charles Curley]
* Add:icon:hotspring (#335) [youte62]
* Add:icon:diving. [youte62]
* Add:icon:diving (#329) [youte62]
* Add:icon:drinking\_water (#325) [youte62]
* Add:icon:dam (#324) [youte62]
* Add:Icon:crossing (#323) [youte62]
* Add:Icon:concert (#322) [youte62]
* Add:Icon:communication (#321) [youte62]
* Add:icon:carwash (#320) [youte62]
* Add:Icon bridge (#319) [youte62]
* Add:icon:bowling (#318) [youte62]
* Add:icon:autoservice (#317) [youte62]
* Add msissing items. [jkoan]
* Add multicountry towns support in maptool (#305) [mdankov]
* Add a script to get bbox out of geojson. [jkoan]
* Added an install target for support libs. [Pierre Grandin]
* Add some more common landuse polygons (#262) [Johan Fitié]
* Add Zoom to route button to Route section in menu (#264) [Johan Fitié]
* Add some more common landuse polygons. [Johan Fitié]
* Add:maptool:Better error messages for wrong cmdline parameters. [Sebastian Leske]
* Add:xml:Add 43 polys to Car and Car-dark layouts. [Johan Fitié]
* Add:xpm:New SVG icon for hunting stand, to replace XPM, made by myself :-). [Sebastian Leske]
* Add:xpm:POI Icon for playground, from openstreetmap-carto. [Sebastian Leske]
* Add:gui\_internal:New POI filter for bus&train. [Sebastian Leske]
* Add feature poly\_reservoir. [Johan Fitié]
* Add grass, grassland, wetland and sand. [Johan Fitié]
* Add poly\_basin. [Johan Fitié]
* Add: Add speech module using espeak on QMultimedia. (#233) [Stefan Wildemann]
* Add auto zoom toggle to gui\_internal (#237) [Johan Fitié]
* Add Qt5 qml gui skeleton (#236) [Stefan Wildemann]
* Add desktop icons in sizes required by Sailfish OS. (#220) [Stefan Wildemann]
* Add 'Follow' and 'Active' to vehicle\_demo to remove the corresponding error messages (Unsupported Attribute) (#229) [Robert Pohlink]
* Add network info menu in gui/internal for Linux (#228) [Pierre GRANDIN]
* Add rules to build sailfish package (#221) [Stefan Wildemann]
* Add strings for permission dialog. [jandegr]
* Add libqt5svg5-dev to test environment. [Stefan Wildemann]
* Add screen blanking for Sailfish OS. [Stefan Wildemann]
* Add Qt5 based vehicle. [Stefan Wildemann]
* Add QT5 graphics. Works on Sailfish OS. [Stefan Wildemann]
* Add:graphics:RaspberryPI hardware accelerated graphics support (#208) [Cedric PAILLE]
* Added automatic publishing to Playstore Beta. [Pierre Grandin]
* Added download links for PlayStore and F-Droid in the README. [Pierre GRANDIN]
* Added some usage images to the README.md. [Pierre GRANDIN]
* Add CI badge. [jandegr]
* Add gui\_layers.svg. [jandegr]
* Add a feature to change zoom level in autozoom mode. [pohlinkzei]
* Add set\_position to command table. [jandegr]
* Add destination forward/backward. [jandegr]
* Add:gui\_internal:Support mode for native virtual keyboard. [mvglasow]
* Add:gui\_internal:Rudimentary native on-screen keyboard implementation. [mvglasow]
* Add:graphics\_android:Use background\_color attribute for system bar tint. [mvglasow]
* Add:port\_android:Add custom tint to system bars on API 19+ Still with hardcoded colors and minor rendering bugs. [mvglasow]
* Add:core:Use padding for vehicle cursor if supported by graphics driver. [mvglasow]
* Add:gui\_internal:Use padding if supported by graphics driver. [mvglasow]
* Add:osd:Use padding if supported by graphics driver Still buggy (race condition) [mvglasow]
* Add:graphics\_android:Implement padding for areas obstructed by system UI. [mvglasow]
* Add:port\_android:Make system bars translucent on API 19+, transparent on API 21+ [mvglasow]
* Add:port\_android:Apply color theme. [mvglasow]
* Add:port\_android:Notification icon which complies with Android style guide for all densities. [mvglasow]
* Add configurability for speed\_warner timeout. [Robert Pohlink]
* Add:port\_android:Remove ActionBar as it is no longer needed. [mvglasow]
* Add:port\_android:OSD button and command to show Android menu. [mvglasow]
* Adding a androix/x86 build script. [Pierre GRANDIN]

### Changed

* Update NavitVehicle.java. [jandegr]
* Update NavitVehicle.java. [jandegr]
* Change\_android:Android no acra (#438) [jandegr]
* Update build\_win32.sh. [jandegr]
* Update:i18n:Updated Arabic translation from launchpad (#415) [Pierre GRANDIN]
* Change:osd: compass appearance update (#413) [lains]
* Change:build:Move update of doxygen to own script (#404) [jkoan]
* Update build\_win32.sh (#402) [jandegr]
* Update config.yml. [jandegr]
* Update config.h.cmake. [jandegr]
* Update osm\_psql.c. [jandegr]
* Update CMakeLists.txt. [jandegr]
* Update:icon:update drinking\_water icon. [youte62]
* Update:icon:update government\_building icon. [youte62]
* Update:doc:Update changelog to follow semver rules (#355) [Joseph Herlant]
* Change:android:always build apk release (#364) [Pierre GRANDIN]
* Update:icon:bowling (#338) [youte62]
* Update:i18n:Updated French (fr) translation from launchpad (#353) [Pierre GRANDIN]
* Update:i18n:Updated Spanish translation from launchpad (#352) [Pierre GRANDIN]
* Update:i18n:Updated Čeština translation from launchpad (#351) [Pierre GRANDIN]
* Update:doc:Build doxygen doc and push the result to a gh-pages branch (#354) [Joseph Herlant]
* Update:icon:updated dam.svg. [youte62]
* Update:QML2:Various updates on the QML2 UI (#316) [Pierre GRANDIN]
* Updated shapefile driver (#295) [Pierre GRANDIN]
* Update Android screenshot in README.md. [Johan Fitié]
* Change default cursor in Car and Car-dark layouts (#296) [Johan Fitié]
* Update:i18n:Updated Portuguese translation from launchpad. [Pierre Grandin]
* Update size estimations in Android map downloader (#272) [Johan Fitié]
* Change Android default layout from Car-Android to Car (#224) [Johan Fitié]
* Update:i18n:Updated German translation from launchpad. [Pierre Grandin]
* Update:Allow zipcode or town seamless search. [jandegr]
* Updated: F-Droid download link (#199) [zintor]
* Update:i18n:Updated German translation from launchpad. [Pierre GRANDIN]
* Update build\_tomtom\_plugin.sh. [jandegr]
* Update build\_tomtom\_minimal.sh. [jandegr]
* Update build\_tomtom\_plugin.sh. [jandegr]
* Update build\_tomtom\_minimal.sh. [jandegr]
* Update:i18n:Updated Ukrainian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Sinhalese translation from launchpad. [CircleCI]
* Update:i18n:Use rebase instead of a PR for translations updates. [Pierre Grandin]
* Update:i18n:Updated Turkish (tr)  translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Piemontese translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Telugu translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Serbian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Polish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Urdu translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Simplified Chinese translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Chinese (Hong Kong) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Ukrainian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Slovak translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Tamil translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Slovenian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Thai translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Albanian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Vietnamese translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Sardinian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Swahili translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Russian (ru) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Romanian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Norwegian Nynorsk translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated German, Low translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated German, Low translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Dutch translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Norwegian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Marathi translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Bosnian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Kurdish (Sorani) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Frisian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Latvian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Esperanto translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Galician translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Hebrew translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Filipino translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Japanese translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated French/Switzerland translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Hungarian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Hindi translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Croatian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Kazakh translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Italian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Indonesian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Kurdish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Javanese translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Korean translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Kannada translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Luxembourgish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Macedonian (mk)  translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Lithuanian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Mongolian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Malayalam translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Faroese translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Finnish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Persian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Basque translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated French (fr) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Estonian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated English (United Kingdom) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated English (Canada) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated German translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Spanish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Welsh translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Greek translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated English (Australia) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated German (Switzerland) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Catalan translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Danish translation for Navit translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Čeština translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Belarusian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Asturian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Arabic translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Afrikaans translation from launchpad. [Pierre GRANDIN]
* Update build\_linux.sh. [jandegr]
* Update build\_linux.sh. [jandegr]
* Update Navit.java. [jandegr]
* Update circle.yml. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Update build\_android.sh. [jandegr]
* Update arm-eabi.cmake. [jandegr]
* Update build\_android.sh. [jandegr]
* Update tomtom. [jandegr]
* Update:i18n:Updated Norwegian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Portuguese translation from launchpad. [Pierre GRANDIN]
* Update Makefile.am. [jandegr]
* Update xml for heightlines. [jandegr]
* Update doc. [jandegr]
* Update:i18n:Updated Chinese (Traditional) translation from launchpad. [Pierre GRANDIN]
* Update gui\_internal\_command.c. [jandegr]
* Update:i18n:Updated German translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated French (fr) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Čeština translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Russian (ru) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Spanish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Italian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Lithuanian translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Welsh translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Chinese (Traditional) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Chinese (Traditional) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Dutch translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Chinese (Traditional) translation from launchpad. [Pierre GRANDIN]
* Update navit.c. [jandegr]
* Update:i18n:Updated German, Low translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Polish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated French (fr) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated English (United Kingdom) translation from launchpad. [Pierre GRANDIN]
* Update link to wiki for OSD commands. [jandegr]
* Change format\_distance to more proper values. [Robert Pohlink]
* Update:i18n:Updated French (fr) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated English (United Kingdom) translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Danish translation for Navit translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Updated Polish translation from launchpad. [Pierre GRANDIN]
* Update:i18n:Fixing po import script. [Pierre GRANDIN]
* Update osd\_core.c. [Robert Pohlink]
* Update attr.h. [jandegr]
* Updated Hungarian translation from launchpad. [Pierre GRANDIN]
* Updated Lithuanian translation from launchpad. [Pierre GRANDIN]
* Updated Catalan translation from launchpad. [Pierre GRANDIN]
* Update circle.yml. [jandegr]
* Update circle.yml. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Update i686-android.cmake. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Update i686-android.cmake. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Update circle.yml. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Update build\_android\_x86.sh. [jandegr]
* Updated COPYRIGHT for 2016. [Pierre GRANDIN]

### Fixed

* Contrib:New version for sailfish 0.5.1-r5 (#444) [Stefan Wildemann]
* OSD:Make Image and Scale osd types obey osd\_configuration setting (trac:1202) (#439) [Robert Pohlink]
* Icons:fix typo business not bussines (#430) [Joseph Herlant]
* Fix coverity builds (#432) [Pierre GRANDIN]
* Typo:Fix various mispells (#421) [Joseph Herlant]
* Maptool: prevent memory leak when fread fails (#420) [Joseph Herlant]
* Wince:Remove useless files from the output (#412) [Pierre GRANDIN]
* Fix:XML:Adding missing sea/ocean display in T@H layout theme. [lains]
* Build:Fix keyscan for wince (#410) [jkoan]
* Cmake:Fix getting the version from git to fix the wince build (#408) [jkoan]
* Build:Fix download of Cov (#400) [jkoan]
* Corrected files considering more comments by @pgrandin. [Patrick Höhn]
* Fix: added changes as suggested by @pgrandin on github. [Patrick Höhn]
* Corrected header file to change of return type of load\_buffer. [Patrick Höhn]
* Wrong use of boolean values. [Patrick Höhn]
* Changes in buffer.c. [Patrick Höhn]
* Avoid NULL pointer in ch.c. [Patrick Höhn]
* Build:fixed compiler warning in maptool module. [Patrick Höhn]
* Navit:navigation.c:distance\_set\_last (#373) [Charles Curley]
* Build:fixed compiler warning in vehicle module (#394) [Patrick Höhn]
* Build:fixed compiler warning in graphics module. [Patrick Höhn]
* Android:Use date of commit as version code instead of system time (#376) [jkoan]
* Gtk:Initialize Follow menu entry correctly. (#390) [Charles Curley]
* Wince:fixed the wince build (#386) [Pierre GRANDIN]
* Cmake:Make copy of files more reliable (#377) [jkoan]
* Cmake:Rework of xslt convert process to fix the copy issue of the navit.dtd file in android build (see process\_xslt) (#381) [jkoan]
* Gtk:Fix imperial factors. (#380) [Charles Curley]
* Android:reworked notification system for sdk 23 (#374) [jkoan]
* Core:Wrong default png size with ksvgtopng (#371) [naggety]
* Gtk:Fix imperial factors (#367) [Charles Curley]
* Improved follow vehicle toggle doc function for GTK (#363) [Charles Curley]
* Export more doxygen content. [Pierre Grandin]
* Ensure that the custom domain is set for doxygen (#361) [Pierre GRANDIN]
* Android:Fixed forced colors in layout to have android auto adaptation (#358) [jkoan]
* Android Fix dialogs and replace \_ with T for Translate because \_ is deprecated (#350) [jkoan]
* Core:Remove dependency on OpenSSL. [Sebastian Leske]
* Maptool:Remove option -5 (MD5 checksum) from maptool. [Sebastian Leske]
* Core:Remove binfile map encryption support. [Sebastian Leske]
* Gtk:fixed missing imperial units in the GTK ui. (#359) [Charles Curley]
* Android:Add workaround for android platform tools (#357) [jkoan]
* Android:Ensures that we capture all build errors. [Pierre Grandin]
* Core:Reduce POST\_SHIFT to avoid int overflow. [Sebastian Leske]
* Build:Add -Wformat-security. [Sebastian Leske]
* Core:Fix warnings from -Wstrict-prototypes. [Sebastian Leske]
* Core:Fix warnings from -Wmissing-prototypes. [Sebastian Leske]
* Core:Fix compiler warnings. [Sebastian Leske]
* Build:Fix conditional compiler warning options. [Sebastian Leske]
* Core:Remove unused macros min/max, which conflict with C++ standard macros. [Sebastian Leske]
* Core:Use fprintf with string literal instead of variable. [trldp]
* Core:Rename README.md to README, since some external builds need a README. [Sebastian Leske]
* Fixes displaying the heightline route info (#294) [Pierre GRANDIN]
* Maptool Accept ISO3166-1:alpha2 tag. [mdankov]
* Xpm:Resize overlooked POI icons to 22x22. [Sebastian Leske]
* Fixed variables name in support lib macro. [Pierre Grandin]
* Xml:Fix XML formatting. [Johan Fitié]
* Android cursor size (#267) [Stefan Wildemann]
* Build:Fix typo which causes CMake warning. [Sebastian Leske]
* Build:Regenerate navit\*.xml if XSLT files change. Fixes first part of #1333. [Sebastian Leske]
* Xml:Remove unused XSLT files android\_\*.xslt. [Sebastian Leske]
* Gui\_internal:Add missing types to POI filter bus&train. [Sebastian Leske]
* Graphics\_qt5 fix layer drawing and dragging. [Stefan Wildemann]
* Make rotating compatible to Qt 5.2 (#256) [Stefan Wildemann]
* Maptool:Update maptool help and manpage. [Sebastian Leske]
* Xml:Change colors for wetland in Car and Car-dark (#257) [Johan Fitié]
* Xpm:Remove obsolete XPM icons. [Sebastian Leske]
* Xpm:Add white outline to black SVG icons. [Sebastian Leske]
* Xpm:Add white outline to new icon hunting\_stand. [Sebastian Leske]
* Fix Car layout issues with wood and water (#240) [Johan Fitié]
* Apply coding style to vehicle\_qt5. [Wildemann Stefan]
* Apply coding style to graphics\_qt5. [Wildemann Stefan]
* Add autozoom switch to sailfosh config. [Wildemann Stefan]
* Fix trac981: Add Align-Attr to osd type Odometer (#230) [Robert Pohlink]
* Don't crash if LANG environment not set (#232) [Stefan Wildemann]
* Fix POI toggle bug with Car-dark layout (#223) [Johan Fitié]
* Allow unusual building (#215) [Stefan Wildemann]
* Fix #1345 crash on Android. [mdankov]
* Gui\_internal:Rename new option to hide\_impossible\_next\_keys. [Sebastian Leske]
* Fix apk signing and bump sdk to 25 - nougat (#209) [jandegr]
* Remove autotools leftovers. [Wildemann Stefan]
* Qt5: only update navit geometry if root window changed size. [Stefan Wildemann]
* Qt5: fix resizing. Add config params w,h,fullscreen. [Stefan Wildemann]
* Qt5: clean up things even if there i no app object. [Stefan Wildemann]
* Qt5: allow passing Qt backend via config.xml. [Stefan Wildemann]
* Qt5: integer to pinter cast as suggested by GLib. [Stefan Wildemann]
* Fix overlay text functions. [Stefan Wildemann]
* Fixed Store client\_secrets path. [Pierre Grandin]
* Fixed keyrings path. [Pierre Grandin]
* Port/android:Fix "invalid DT\_NEEDED" warnings on API 23+, fixes #1348. [mvglasow]
* Tomtom:Switching to mirrored toolchain. [Pierre Grandin]
* I18n:Ensure that we pull from trunk before rebasing. [Pierre Grandin]
* I18n:Escape commit message when merging updates. [Pierre Grandin]
* I18n:Rebase i18n updates against trunk, not master. [Pierre Grandin]
* Core:Fix iPhone build broken by plugin refactoring. [Sebastian Leske]
* Fixed pot file path when building trunk. [Pierre Grandin]
* Maptool:Correct OSM tag is shop=chemist, not drogist. [Sebastian Leske]
* Map\_csv:If we cannot open a CSV map file, log error and return failure. [Sebastian Leske]
* Fixed typo in build\_android.sh. [Pierre Grandin]
* Fixing dbus tests dependencies. [Pierre Grandin]
* Fixed libpng version check. [Pierre Grandin]
* Fixed typo in circle.yaml. [Pierre Grandin]
* Fix old iOS jailbreak build. [jandegr]
* Maptool:properly check node reference mark. [Michael Dankov]
* Maptool:proper signedness. [Michael Dankov]
* Core:Added link to the OSD wiki page in navit\_shipped.xml. [Pierre Grandin]
* Core:Prevent crash on exit if csv map was used Do not attempt to free(attr-\>data) of attr\_item\_type attribute, it holds a number, not a pointer. [Michael Dankov]
* Core:initialize value to suppress valgrind warning The warning had no actual effect, as final result of the expression was not depending on uninitialized value being tested in it. [Michael Dankov]
* Gui\_internal:Properly switch keyboard to lower/uppercase Do the automatic switch in gui\_internal\_keypress\_do instead of gui\_internal\_search\_changed so that other text input widgets would benefit, e.g. poi search. [Michael Dankov]
* Gui\_internal:Fix Cyrillic caps switch button. [Michael Dankov]
* Port\_android:Hide osd buttons during map scroll Setting use\_overlay attr of \<osd type="button"\> now is supported and enabled in default config. [Michael Dankov]
* Port\_android:No system bars tinting before KITKAT There's no way to make navigation and status bar translucent nor transparent before KITKAT, see https://developer.android.com/about/versions/android-4.4.html#UI So corresponding code realted to SystemBarTintView should be enabled since API 19, KITKAT. It actually was breaking navit on my API 17 device, drawing unrelated semitransparent bars on the top and right sides of the screen. [Michael Dankov]
* Port\_android:Do not tint on pre-API-17 Tinting the navigation and status bars (introduced in a3e9e7) makes the whole screen tinted on my Gingerbread (API level 9) device. As the actual tint code in handleResize is anyway activated on API\>=17, there's no reason to create navigationTintView and statusTintView on API\<17. [Michael Dankov]
* Core:Make some counters unsigned to avoid UB on overflow. [Sebastian Leske]
* Gui\_internal:Repair "Set distance to"/"Get more" menu items. Fixes #1342. [Sebastian Leske]
* Gui\_internal:Hide native keyboard when displaying POI search results. [mvglasow]
* Gui\_internal:Make native keyboard compatible with changes after R6421. [mvglasow]
* Port\_android:Restore soft keyboard when resuming activity. [mvglasow]
* Gui\_internal:Further native keyboard refinements. [mvglasow]
* Port\_android:Remove noisy debug code. [mvglasow]
* Gui\_internal:Correctly handle fullscreen toggle on Android API 17+ [mvglasow]
* Port\_android:Prevent system bar tint views from overlapping. [mvglasow]
* I18n:Fixing translations import. [Pierre GRANDIN]
* Fix wait\_before\_warn. [Robert Pohlink]
* Core:Fix typo in nav\_status\_to\_text() [mvglasow]
* Osd:Draw correct icon for navigation\_status OSD when resizing window. [mvglasow]
* Core:Make attr\_dup\_content support attr\_item\_type. Fixes trac #1340. [Sebastian Leske]
* Core:Exit if GUI or graphics init / connection fails. [Sebastian Leske]
* Osd: Convert zero button size to magic indicator size -1. [Stefan Wildemann]
* Osd: Make osd "Button" accept h and w props. [Stefan Wildemann]
* Core:Crash in country\_search\_new Properly handle coutry search by attr\_country\_id to fix crash in internal gui when there's a gps fix and a map supporting attr\_country\_id such as Reiseplaner is active. Fixes #1337. [Michael Dankov]

### Removed

* Removed deprecated files and fixed a configuration example. [jkoan]
* Cleanup old xpm icons (#292) [Johan Fitié]
* Removed autotools lefotover (#204) [jandegr]
* Cleanup. [jandegr]

### Other

* Show min/max elevation and distance in height profile. [Timo]
* Maptool: migrate strdup to g\_strdup. [Joseph Herlant]
* Maptool use g\_realloc instead of realloc. [Joseph Herlant]
* Maptool: migrate free to g\_free. [Joseph Herlant]
* Maptool: migrate malloc to g\_malloc. [Joseph Herlant]
* Refactor:core:Refine documentation of attr.c. [mvglasow]
* Navit/fib: cleanup unused configure\* files (#422) [Joseph Herlant]
* Maptool: prevent issues when realloc fails (#419) [Joseph Herlant]
* Doc: fix misspell. [Joseph Herlant]
* Refactor:core:Some doxygen additions and corrections (#406) [mvglasow]
* Store win32 nsis installer in artifacts. [jandegr]
* Remove outdated tts interface (#397) [jkoan]
* Correct header file considering earlier changes. [Patrick Höhn]
* Further adjustments according comments. [Patrick Höhn]
* Doc: added doxygen documentation to buffer.c. [Patrick Höhn]
* Refactor:core:Add more documentation (#392) [mvglasow]
* Refactor:route:Improve documentation. [mvglasow]
* Sailfish build on newer SDKs (#388) [Stefan Wildemann]
* Refactor:route:More documentation (#385) [mvglasow]
* Modify icons designed by me - free to use. [youte62]
* Modify icons designed by me - free to use. [youte62]
* 200\*200. [youte62]
* Modify icons designed by me - free to use. [youte62]
* 200\*200. [youte62]
* Refactor:core:Documentation in trasform.c. [mvglasow]
* Refactor:route:Improve struct route documentation. [mvglasow]
* Refine documentation (#378) [mvglasow]
* Refactor:core:Improve documentatio. [mvglasow]
* Refactor:core:Improve documentation. [mvglasow]
* Core:only GGA or RMC message required, ticket #913 (#365) [naggety]
* Refactor:route:Improve documentation (#372) [mvglasow]
* Refactor:core:Refine documentation. [mvglasow]
* Refactor:route:Improve documentation. [mvglasow]
* Once more with feeling. More indentation issues. [Charles Curley]
* Indentation fixes in my last commit. I did not re-indent the entire file. I will leave that for another time. [Charles Curley]
* The road book now respects imperial for two more columns. The first column (Command) was good for both feet and miles. However, column 2 (Length), and the 4th column (Destination Length), were showing up only in metric. This commit fixes columns 2 and 4. This should fix bug 780. [Charles Curley]
* Refactor:route:Add documentation. [mvglasow]
* Refactor:route:Add documentation. [mvglasow]
* Refactor:route:Add documentation. [mvglasow]
* Revert "Always build 'release' package for android" [Pierre Grandin]
* Revert "Fix:android:Ensures that we capture all build errors" [Pierre Grandin]
* Always build 'release' package for android. [Pierre Grandin]
* Moved Taiwan into its own map download entry. [Pierre Grandin]
* Navit medium GUI icon size fix. [Stefan Wildemann]
* Sailfsh version bump. [Stefan Wildemann]
* Patch:core:More Talker IDs other than GP accepted (#314) [naggety]
* Importing wince build script. [Pierre Grandin]
* Revert last commit. [Pierre Grandin]
* Coverity upgrade (#313) [Pierre GRANDIN]
* Revert "Fix:core:Rename README.md to README..." - does not work on GitHub. [Sebastian Leske]
* Moved xpm to icons (#307) [jkoan]
* We always want the failed code from bash not from tee. [jkoan]
* Little quick change to make it working fast. [jkoan]
* Auto pitch and orientation (#306) [Johan Fitié]
* #1352 workaround. [mdankov]
* Smaller Android screenshot for README.md. [Johan Fitié]
* Pitch correction (#303) [Johan Fitié]
* [POI] Resize SVG icons to 22x22 (#304) [Johan Fitié]
* Improve cursor in Car and Car-dark layouts (#302) [Johan Fitié]
* [POI] Improve Bus stop icon (#301) [Johan Fitié]
* [POI] Improve Bicycle shop, Cemetery, Bus stop, Museum, School, Fountain and Tower icons (#300) [Johan Fitié]
* [POI] Improve Public office icon (#299) [Johan Fitié]
* [POI] Improve Bicycle shop icon (#298) [Johan Fitié]
* [POI] Improve Drinking water, Shopping, Sport and Tower icons (#297) [Johan Fitié]
* Display label for heightlines (#284) [jandegr]
* [POI] Improve Attraction, Cemetery, Heliport, Hotel, Parking and Pharmacy icons (#293) [Johan Fitié]
* [POI] Improve Emergency, Golf, Pharmacy, Picnic and Wifi icons (#291) [Johan Fitié]
* [POI] Improve Parking, Shop computer, Shop department, Zoo, TEC common, Unknown and Sport icons (#290) [Johan Fitié]
* [POI] Improve Attraction, Bicycle shop, Boat ramp, Bus, Cemetery and Cinema icons (#289) [Johan Fitié]
* [POI] Improve Car dealer, Castle, Fountain, Hospital, Parking, Peak and Pharmacy icons (#288) [Johan Fitié]
* [POI] Improve Drinking water, Fastfood, Theater, Information, Museum, Shop grocery, Taxi, Toilets and Townhall icons (#287) [Johan Fitié]
* [POI] Improve Bar, Beer, Bus stop, Fountain, Level crossing, Library, Memorial, Post, Repair service, Shopping and Stadium icons (#286) [Johan Fitié]
* [POI] Improve Bank, Bench, Police, School, Tower, Traffic signals, Viewpoint, Shop apparel and Worship icons (#285) [Johan Fitié]
* [POI] Improve Fuel icon (#283) [Johan Fitié]
* [POI] Improve Exit and Hotel icons (#282) [Johan Fitié]
* [POI] Improve ATM, Fire brigade and Restaurant icons. [Johan Fitié]
* [POI] Improve tower icon more. [Johan Fitié]
* [POI] Improve tower icon (#280) [Johan Fitié]
* Use cached copy for libpng / tomtom (#276) [jkoan]
* Use all available Cores on CI (#273) [jkoan]
* Use datecode insted of Tags as Android id (#274) [jkoan]
* [Android] Delete MapInfoFile (.tmp.info) after successful download. [Johan Fitié]
* Sailfish config (#271) [Stefan Wildemann]
* [Android] Enable autozoom by default (#225) [Johan Fitié]
* Correctly implement draw\_drag on graphics\_qt5. [Stefan Wildemann]
* Qt5 qml gui - POC update (#263) [Pierre GRANDIN]
* Revert "Add some more common landuse polygons" [jandegr]
* Refactor:maptool:rename variables. [Sebastian Leske]
* QT5/qml2 UI proof of concept (#254) [Pierre GRANDIN]
* Graphics\_qt5 QML: Add screen rotation support (#255) [Stefan Wildemann]
* Make the speed\_warner toggle on click. [Pierre Grandin]
* Remove Qt5 fonts dependency on Freetype (#253) [Stefan Wildemann]
* Revert: move poly\_water\_tiled in Car layout. [Johan Fitié]
* Trac-1246: Draw background color even if text label is empty. (#234) [Robert Pohlink]
* Navigation\_analyze\_roundabout : central\_angle may lead to division by 0. [Marc CAPDEVILLE]
* [Android] 'Toggle POIs' button also toggle POI labels (#226) [Johan Fitié]
* Keep active vehicle profile when deactivating vehicle (#217) [mcapdeville]
* Graphics Qt5 keyboard (#214) [Stefan Wildemann]
* Qt5 Graphics: Add QML support (#213) [Stefan Wildemann]
* Hide impossible keys at the internal keyboard instead of highlighting the possible ones (leftover from PR5) (#210) [Robert Pohlink]
* Import android.Manifest. [jandegr]
* Ask permissions on sdk \>= 23. [jandegr]
* Publish arm packages only on Playstore. [Pierre Grandin]
* Revert "Temporary: Enable Qt5 graphics in navit\_shipped.xml" [Wildemann Stefan]
* Temporary: Enable Qt5 graphics in navit\_shipped.xml. [Wildemann Stefan]
* Refactor: qt5: follow api changes brought with commit 60bc2797f0bd71d87a4eece306e2368afe2a8866. [Stefan Wildemann]
* Qt5: Use default svg size if size not given. [Stefan Wildemann]
* Qt5 image loading more robust on navit image guessing. [Stefan Wildemann]
* Improve dash handling. Cope with impair patterns. [Stefan Wildemann]
* Ignore old fix provided by Qt5 on startup. [Stefan Wildemann]
* Clear surfaces if transparent. Fix dash setting. [Stefan Wildemann]
* Sailfish needs periodic trigger for display on. [Stefan Wildemann]
* Remove most debug messages. [Stefan Wildemann]
* Ensure that we use jarsigner w/ jdk 1.8. [Pierre Grandin]
* Extract android publishing credentials to current folder. [Pierre Grandin]
* Extract publishing credentials in the right folder. [Pierre Grandin]
* Ensures that google-api-python-client is installed for apk publishing. [Pierre Grandin]
* Sunrise near poles simplification (#206) [jandegr]
* Reducing code duplication in the tomtom builds (#201) [Pierre GRANDIN]
* Jandegr patch 1 (#203) [jandegr]
* Android patches from Jandegr (#202) [Pierre GRANDIN]
* Improved documentation. [Pierre Grandin]
* Bump zlib. [jandegr]
* Bump zlib. [jandegr]
* Removing autotools support. [Pierre GRANDIN]
* Moving the linux bin to a more generic place to match other builds. [Pierre Grandin]
* Android ci optimization (#195) [Pierre GRANDIN]
* Switch badge to trunk. [jandegr]
* Correctly escape PR message. [Pierre Grandin]
* Better PR content for automatic i18n PR. [Pierre Grandin]
* Process translation template update as part of the linux build. [Pierre Grandin]
* Ensure that we build with gtk\_drawing\_area enabled. [Pierre Grandin]
* Refactor:core:For plugins, use term 'category' instead of 'type'. [Sebastian Leske]
* Only setup coverity when needed. [Pierre Grandin]
* Reworking android build scripts. [Pierre Grandin]
* Ensure that we build all targets in 4 containers. [Pierre Grandin]
* Ensure that we build all targets in 4 containers. [Pierre Grandin]
* Moved win32 dependencies to the build script. [Pierre Grandin]
* Install junit-xml dbus-python in the user's env. [Pierre Grandin]
* Install ndk only when needed. [Pierre Grandin]
* Ensures that python-dev is installed for tests. [Pierre Grandin]
* Ensures that libdbus-glib-1-dev is installed for tests. [Pierre Grandin]
* Bumped libpng version to 1.6.26. [Pierre Grandin]
* Temporarily disabled translation updates. [Pierre Grandin]
* Enabling build parallelization. [Pierre Grandin]
* Ensures that python-dbus is installed, needed for tests. [Pierre Grandin]
* Reduced tomtom CI downloads verbosity. [Pierre Grandin]
* Moving linux dependencies installation to the build script. [Pierre Grandin]
* Sdk 23. [jandegr]
* Install ndk. [jandegr]
* Convert CI to trusty. [jandegr]
* Bump libpng. [jandegr]
* Switch to tomtom minimal build. [jandegr]
* Missing layer. [jandegr]
* Wrapper cleanup. [jandegr]
* Cmake based build for tomtom. [jandegr]
* Gui\_internal: free heightlines and diagram\_points. [jandegr]
* Autotools. [jandegr]
* Create gui\_heightprofile.svg. [jandegr]
* Delete gui\_heightprofile.xpm. [jandegr]
* Gui\_internal\_heightprofile. [jandegr]
* Create gui\_heightprofile.xpm. [jandegr]
* Gui\_internal: fix occasional crash of heightprofile. [jandegr]
* Gui\_internal: layer control. [jandegr]
* Gui internal : some more heightprofile fixes. [jandegr]
* CI trigger. [jandegr]
* Gui\_internal : fix heightprofile. [jandegr]
* Refactor:maptool:Support 56 bit node IDs. [Michael Dankov]
* Android: disable pedestrian default build. [jandegr]
* Revert "Fix:gui\_internal:Hide native keyboard when displaying POI search results" [Michael Dankov]
* Refactor:port\_android:Move system bars tinting code to a separate function. [Michael Dankov]
* Remove debug message. [pohlinkzei]
* Refactor:gui\_internal:Remove out-ifdefed code and unused widget states. [Sebastian Leske]
* Refactor:gui\_internal:Code cleanup. [Sebastian Leske]
* Typo. [jandegr]
* Layoutswitcher command. [jandegr]
* Delete android\_all\_densities.xslt. [jandegr]
* Android: remove unused and unmaintained XSLT files. [jandegr]
* Delete NavitGraphics2.java. [jandegr]
* Delete NavitAndroidOverlay.java. [jandegr]
* Android: remove unused classfiles. [jandegr]
* Refactor:gui\_internal:Determine menu widget size based on parent size. [mvglasow]
* Importing 241569203/pl from launchpad. [Pierre GRANDIN]
* No-HOV. [jandegr]
* No-HOV. [jandegr]
* Refactor:core:Document navit\_get\_cursor\_pnt() [mvglasow]
* Refactor:gui\_internal:Document gui\_internal\_menu.c. [mvglasow]
* Refactor:core:Add Doxygen docs, #define IMAGE\_W\_H\_UNSET for image dimensions. [Sebastian Leske]
* Refactor:core:Update Doxyfile to Doxygen 1.8.9.1. [Sebastian Leske]
* Refactor:core:Fix Doxygen comments; @code only for code blocks. [Sebastian Leske]
* Refactor:osd:Document osd\_set\_std\_graphic. [mvglasow]
* Refactor:osd:Minor documentation improvements. [mvglasow]
* Refactor:core:Document window.h. [mvglasow]
* Refactor:core:Fix GCC warning about uninitialized data.dangerous\_goods. [Sebastian Leske]
* Refactor:core:Remove out-ifdefed code. [Sebastian Leske]
* Archive the xpms from the linux build on CI. [Pierre Grandin]
* Archive the xpms from the linux build on CI. [Pierre Grandin]
* Applying patch from trac-832. [Pierre GRANDIN]
* Refactor:osd\_core:Document osd\_button\_adjust\_sizes() [mvglasow]
* Trac-1064 render OSM shop=mall as poi\_mall. [Pierre GRANDIN]
* Bumping the trunk to 0.5.1. [Pierre GRANDIN]

## [v0.5.0] - 2015-12-31

This release was done before the adoption of this changelog format. Use
[this v0.5.0-rc.2 to v0.5.0 comparison link](https://github.com/navit-gps/navit/compare/v0.5.0-rc.2...v0.5.0)
to view the corresponding changes.

## [v0.5.0-rc2] - 2015-09-02

This release was done before the adoption of this changelog format. Use
[this v0.5.0-rc.1 to v0.5.0-rc.2 comparison link](https://github.com/navit-gps/navit/compare/v0.5.0-rc.1...v0.5.0-rc.2)
to view the corresponding changes.

## [v0.5.0-rc1] - 2015-08-08

This release was done before the adoption of this changelog format. Use
[this v0.5.0-beta.1 to v0.5.0-rc.1 comparison link](https://github.com/navit-gps/navit/compare/v0.5.0-beta.1...v0.5.0-rc.1)
to view the corresponding changes.

[Unreleased]: https://github.com/navit-gps/navit/compare/v0.5.4...HEAD
[v0.5.4]: https://github.com/navit-gps/navit/compare/v0.5.3...v0.5.4
[v0.5.3]: https://github.com/navit-gps/navit/compare/v0.5.2...v0.5.3
[v0.5.2]: https://github.com/navit-gps/navit/compare/v0.5.1...v0.5.2
[v0.5.1]: https://github.com/navit-gps/navit/compare/v0.5.0...v0.5.1
[v0.5.0]: https://github.com/navit-gps/navit/compare/v0.5.0-rc.2...v0.5.0
[v0.5.0-rc.2]: https://github.com/navit-gps/navit/compare/v0.5.0-rc.1...v0.5.0-rc.2
[v0.5.0-rc.1]: https://github.com/navit-gps/navit/compare/v0.5.0-beta.1...v0.5.0-rc.1
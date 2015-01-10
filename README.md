# Unified Server Custom Remotes

These are my own custom remotes made to suit my own needs. They are only for Linux. They are not guaranteed to work on other 
systems (I am using Arch with Gnome Shell) but may provide useful snippets or inspiration.

## Unified Remote Links

* [Website](http://www.unifiedremote.com/)
* [Github](https://github.com/unifiedremote)
* [AUR Package](https://aur.archlinux.org/packages/unified-remote-server/)

## Notes and Changes from Default Remotes

These were all copied from the default remotes, then modified.

### Google Music

* Added open and close buttons
  * "Open" checks to see if Google Music is already running, then if not opens Chrome in [kiosk 
mode](http://www.sitepoint.com/google-chrome-kiosk-mode/)
* Better icon
* Stripped out Windows-specific stuff that causes errors on Linux
  * This means it does not show anything about what is playing
  * That junk is only partially stripped out, so not everything in there is used

### Kodi

* Added open and close buttons
  * "Open" checks to see if Kodi is already running, then if not opens it
* This is from the old XBMC remote and doesn't work with Kodi yet, so really it's just open and close buttons!
  * I use [Yatse](https://play.google.com/store/apps/details?id=org.leetzone.android.yatsewidgetfree&hl=en) for the real 
controls, and I am considering trying to use Tasker to automate opening Kodi when Yatse is opened

### Netflix

* Added open and close buttons
  * "Open" checks to see if Netflix is already running, then if not opens Chrome in [kiosk 
mode](http://www.sitepoint.com/google-chrome-kiosk-mode/) using a link to my own profile (bypassing the profile selection 
lightbox)
* Better icon

### System

* Taken from the Power remote
* Used different icon
* Added "Restart Gnome Shell"
  * For me that's sometimes necessary with my HTPC connected to my TV through my receiver
* Added 24P and 60P switching
  * My TV supports both and watching films on Netflix is so much better at the native framerate!

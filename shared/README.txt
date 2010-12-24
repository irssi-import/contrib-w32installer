* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.



Introduction
~~~

Thank you for using irssi-win32-0.8.15.

This package includes Perl scripting support, as well as the 20101029 release of PuTTYcyg.



Important Usage Information
~~~

When running Irssi for Windows, Irssi's Perl functionality, /help and /away commands may exhibit strange behavior.

To ensure that this functionality works properly, run the following Irssi commands:

	/set awaylog_file ~/.irssi/away.log
	/set help_path share/irssi/help
	/set perl_use_lib lib/perl5/5.10/i686-cygwin
	/save

You only have to run these commands once after starting from a fresh/default Irssi configuration.



Build Instructions
~~~

If you wish to compile Irssi 0.8.15 for Windows yourself, here are build instructions:

	1) Install Cygwin (available at http://cygwin.com), adding the following packages to the default configuration:
		Devel/gcc4
		Devel/gcc-core
		Devel/gcc-g++
		Devel/gettext
		Devel/gettext-devel (missing libintl.a)
		Devel/libncurses-devel (terminfo support)
		Devel/make
		Devel/pkgconfig (detects glib2)
		Devel/zlib-devel
		Interpreters/perl
		Libs/glib2.0
		Libs/libglib2.0_0
		Libs/libglib2.0-devel
		Libs/openssl098
		Libs/openssl-devel
		   
	2) Download the Irssi source code from http://irssi.org and save it to C:/cygwin/home/<username>
	
	3) Open a Cygwin terminal, and run the following commands:
		tar xzvf irssi-*.tar.gz
		cd ./irssi-*

		(If you'd like Perl support:)
		CFLAGS='-DUSEIMPORTLIB' ./configure --with-proxy --with-perl-staticlib --prefix=/cygdrive/c/irssi

		(If you don't want Perl support:)
		CFLAGS='-DUSEIMPORTLIB' ./configure --with-proxy --with-perl=no --prefix=/cygdrive/c/irssi

		make
		make install
			
	4) Now you can start Irssi with C:/irssi/bin/irssi.exe from inside the Cygwin terminal.
	
	5) If you didn't opt for Perl support, skip to step 6. If you did opt for Perl support, and you want to distribute your compiled binary, you can copy/merge the contents of the /lib/perl5/5.10 folder from your Cygwin installation into the corresponding folder in your Irssi directory tree (irssi/lib/perl5/5.10).

	6) Copy these things to your Irssi root directory:
		
		a. Batch files included in this package
		b. 'startup' file included in this package
		c. The /usr/share/terminfo folder from your Cygwin installation

	Note that appropriate Cygwin DLLs and PuTTYcyg need to be copied to irssi/bin in order for Irssi to be distributable and to work with the batch files and command scripts included in this package.



Credits
~~~

This package is a modified, updated version of the irssi-win32-0.8.10 package assembled by Nei, available at
	
	http://anti.teamidiot.de/nei/2007/01/irssi_0810_for_windows_cygwinw/index.html

This README is based on Nei's informative original README, which is included below.

The Irssi binary included in this package was compiled under Cygwin and assembled by Josh Dick.
The NSIS installer script for this package was created by Sebastian Pipping and Josh Dick. 

This package was made possible by:
	The Irssi team (http://www.irssi.org/)
	#irssi at IRCnet (irc://open.ircnet.net/#irssi),
	Cygwin (http://www.cygwin.com),
	NSIS (http://nsis.sourceforge.net),
	and of course, Nei (http://anti.teamidiot.de/nei/2007/01/irssi_0810_for_windows_cygwinw/index.html).

Enjoy!

-Josh Dick <josh@joshdick.net>
-Sebastian Pipping <webmaster@hartwork.org>



Old README
~~~
	
Below the README originally distributed with Nei's irssi-win32-0.8.10 package.

--------------------------------------------

Build instructions are available on

	http://anti.teamidiot.de/nei/2007/01/irssi_0810_for_windows_cygwinw/#more

Running
~~~

Simply start irssi.cmd to run Irssi in PuTTY or irssi-cmd.cmd to
run Irssi in the default Windows terminal emulator.
The *.bat files are for Windows 9x / ME, but see below.


Titlebar
~~~~

If you want to have a meaningful titlebar, you can copy the
startup file to

	N:/Documents and Settings/Yourname/.irssi/startup
	%USERPROFILE%/.irssi/startup
	%HOMEPATH%/.irssi/startup

Alternatively you can get a more featured titlebar script on

	http://scripts.irssi.org/


Windows 9x / ME
~~~~~~~

This package does not officially support Windows 9x / ME. But I
have included Old-Windows start files nonetheless.
You can try to get it running by starting irssi.bat to run Irssi
in PuTTY or irssi-cmd.bat to run Irssi in the default Windows
terminal emulator.
If the Irssi crashes on /quit, just ignore it :).


About Cygwin paths
~~~~~~~~~

A note to computer users without Cygwin experience:
You can find your drive contents in /cygdrive/driveletter/, for
example:

	/cygdrive/n/Documents and Settings/Nei/Desktop/hello.mp3

Please note that Irssi's file completion is broken for filenames
containing spaces. You CAN use these files e.g. in DCC sends,
but you have to come up with the whole path on your own. Ex.:

	/dcc send Nei "/cygrive/n/Documents and Settings/Nei/x.y"

Note the required "" to enclose your filename if it contains
spaces.


Responsible
~~~~~

This Irssi/Cygwin package was created by Nei. Reachable on
QuakeNet with the account name ailin.

http://anti.teamidiot.de/
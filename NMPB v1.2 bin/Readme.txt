Nameless Multiplayer Piano Bot.

Requires .NET Framework 4.5. You can get it here: https://www.microsoft.com/en-US/download/details.aspx?id=30653

IMPORTANT!
Do not edit names.txt and hashes.txt manually. Do not add, delete, rename, or move midi files manually.
It could lead to broken file names and IDs.
Use console commands, GUI, or the FileExporter instead.

================================================================================================================

[1] NMPB-GUI - Graphical User Interface version.
Start it, enter the room name and press Enter or the Connect button.
Room name must contain "NMPB".
You can set the language and command set, and enable or disable turns.
You can add midi files by dragging-and-dropping them into the window.

For the user command list and documentation read /localization/Help.txt
Admin commands:
/say [message] - sends a chat message.
/users - lists all users with auid.
/ban [auid] and /unban [auid] - bans and unbans user by auid.
/banned - lists banned users' auids.
/skip [auid] - adds user to skip list. Same as /skipme, but for any user.
/trackbar - toggles trackbar.
/preservequota (/pq) - toggles Preserve Quota mode. PQ mode enabled by default and allows the bot to continue playing hard tracks when noteQuota limit is reached.
/colors lists all users with colors.
/rename [id] [new name] - renames file by id.
/remove [id] - marks a file as removed. It's impossible to play a removed file or upload a copy of it.
/restore [id] - restores removed file.
/delete [id] - deletes file completely. Shifts ids.
		For example, if you enter /delete 2, then file 3 becomes 2, file 4 becomes 3 etc.
		A deleted file can't be restored!
/shutdown - shutdowns the bot.
/turns - toggles turns.
/sendchat - toggles chat sending.
/allowbots - toggles "Allow other bots" mode. By default crown owner kicks other NMPB bots.
/logvel - toggles logarithmic volume mode. logarithmic volume sounds great on classical midis and real play recordings. Sounds decent on other midis too, but makes volume a bit quieter.

================================================================================================================

[2] NMPB.RemoteControl allows to control the bot from other computers even when they have different IP.
First you need to generate keys. 
Start NMPB.RemoteControl. AdminKeys.xml and PrivateKeys.xml will be generated.
Copy AdminKeys to NMPB folder, restart the bot.
Carry PrivateKeys.xml with NMPB.RemoteControl.exe. If no PrivateKeys will be found on NMPB.RemoteControl startup, new keys will be generated and old AdminKeys no longer be valid.
To control the bot you just need NMPB.RemoteControl.exe and PrivateKeys.xml, no other dlls needed.
Start NMPB.RemoteControl, enter room name, press Enter or "Connect" button. Enter a command, press enter os "Send" button.

================================================================================================================

[3] NMPB-FileExporter allows exporting of midi files.

Press the Export button, choose a folder, then press OK, and wait.

If the "Add Indexes" parameter is checked, file names will look like:
	0. Nyan cat.mid, 1. He's a Pirate.mid, 2. [Touhou] Bad Apple!!.mid, etc.

Otherwise, file names will look like:
	[Touhou] Bad Apple!!.mid, He's a Pirate.mid, Nyan cat.mid, etc.

You can also import midi files using the Import button or simply by dragging-and-dropping.

================================================================================================================

[4] How to connect to other MPP-based online pianos:
1. Edit NMPB-GUI.exe.config with any text editor.
2. Find text 'ws://www.multiplayerpiano.com:443'
3. Replace it with address of other site.
   Óou also need port, it usually is not 443.
   You can get the required port in website's script.js sources.
4. Use configs for mp.meowbin.com and www.ourworldofpixels.com/piano as examples.

This method also works with most of other NMPB-based software (make sure yuo have the latest version). 
Copy NMPB-GUI.exe.config and rename it to <otherapp>.exe.config. Eg. NMPB.Recorder.exe.config. Than edit the address as shown above.

================================================================================================================

[5] How to create localization:
You can localize the bot to you language.
0. 	Check http://nmpb-blog.blogspot.ru/ . As the bot might of already been localized to your language.
1. 	Open the "localization" folder.
2. 	Copy the files "Help.txt" and "Colors.txt". Name them what you want. Localize content.
	(You could skip this step if you don't want to localize these files).
3. 	Rename "Default.xml" to "YourLanguage.xml". Open it.
4. 	Find lines <HelpFileName>Help.txt</HelpFileName> and <ColorsFileName>Colors.txt</ColorsFileName>
	Change the file names if you have localized them.
5. 	Find the line <CultureInfoName>en-US</CultureInfoName>. Set the correct CultureInfo code.
	Code list here: http://nmpb-blog.blogspot.ru/2013/10/cultureinfo-codes_9900.html
6. 	Most lines looks like <Variable>Text here</Variable>. 
	Localize the text, but DO NOT edit any variables.
	Some lines contain: user-input text ({0}, {1}, etc).
7.	Save the file.
8.	Restart the bot. YourLanguage should appear in languages list.
9.	Send me your localization, and I'll add it to the site.

If you have already created localization for previous bot version, it likely will work with new version, but some lines could be untranslated.
To update old localization file (.xml), drag-and-drop it into bot window. It will add untranslated lines to file.

================================================================================================================

[6] Contacts:
Name: Ste-art.
Email: steart.ru@gmail.com.
NMPB blog: http://nmpb-blog.blogspot.ru/

Thanks:
Thanks to Isaac Gojkovich for English localization editing.
Thanks to Ray890 for testing and hosting the bot.


License:
The MIT License (MIT)

Copyright (c) 2017 Ste-art

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Trains Game
==============================

Getting started:
------------------------------
Case 1: You have a binary of the game. Double-click it and run -> voila!

Case 2: You have a .love version of the game, you'll need to install the awesome Löve2D game engine. Get it at love2d.org (this game was developed for Löve2D Version 0.8.0).

First, try getting into the tutorials. Once through them, have a look at the Documentation.html file in this folder.

Then, the next step will be to get into the challenges. Once you've mastered them, you're ready to upload your AI and watch it fight others on the online servers!

Setting up your own server:
------------------------------
You can start your own dedicated server (see the section "Command Line Options" below). 
This server will automatically start running matches using random maps and the AIs located in your AI subfolder (if you don't want the game to . You can watch these matches by starting the game again, without the server option. Start with **--host localhost** to connect to the server running on your PC.

Command Line Options:
------------------------------
Make sure to add these at the end, __after__ the folder or .love file. Otherwise the Löve engine won't know to run the game.
Example:  
**Linux:**
```bash
/path/to/love /path/to/game --server -p 4242
```
**Win**
```dos
C:\Program/ Files\Love\Love.exe C:\Games\trAInsported --console --server -p 4242
```
- **-d** or **--server** or **--dedicated**: Start in dedicated server mode.
- [Client] **-h IP_OR_URL** or **--host IP_OR_URL** or **--ip IP_OR_URL**: IP/address of server to connect to. (Use localhost to connect to server on the same machine. You can also use an URL to connect to if you have a server running on some web-machine. If this is the case, make sure to use the - [Client and Server] **-p PORTNUMBER** or **--port PORTNUMBER**:  Port to use -> must be the same on client and server.(Default port is 5556.) Make sure to forward that port if the game server is sitting behind a router.)
- [Server] **-m TIME** or **--match_time TIME**: Time a match will take.
- [Server] **-c TIME** or **--cooldown TIME**: Time between two matches on Server. (TIME in seconds, minimum 10.)
- [Client and Server] Needed on Windows if you want a console: **--console**
Note that you'll need to edit the IP address of the client to make sure your client will find the server and watch its matches.

Uninstalling:
------------------------------
The game creates a folder called **trAInsported** in your local home folder. Depending on how you uninstall, you might have to remove this manually. They'll usually be in these locations (taken from love2d.org):
- **Linux:** $XDG\_DATA\_HOME/love/ or ~/.local/share/love/
- **Mac:** /Users/user/Library/Application Support/LOVE/ 
- **Windows XP:** C:\Documents and Settings\user\Application Data\LOVE\ or %appdata%\LOVE\
- **Windows Vista and 7:** C:\Users\user\AppData\Roaming\LOVE or %appdata%\LOVE\

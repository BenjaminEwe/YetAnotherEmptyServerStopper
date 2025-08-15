## Title
YetAnotherEmptyServerStopper made by BenjaminEwe

<img src="YetAnotherServerStopper/pack.png" width="200px">

## Function
This datapack works by checking if there are any players online every 5 minutes. If the server is empty, it adds one to a counter. If it has checked 4 times in a row and the server was empty all 4 times, it starts a shutdown of the server.
If any of the checks show a player is online, it resets the counter to 0.

## Setup
You must edit your server.properties file on your server to set ```function-permission-level=4```. If you do not do this, the datapack will not work.[^1]
In versions after Snapshot 24w33a (Anything > 1.21.1) you also have to set ```pause-when-empty-seconds``` to 0.[^2]

## Uninstall
YAESS Cleans up after itself each time it closes a server by removing the scoreboard objective ```YetAnotherEmptyServerStopper```. You can either let YAESS close the server and then remove it, or manually remove the scoreboard ovjective with ```scoreboard objectives remove YetAnotherEmptyServerStopper```.

## License
Text and Images in YetAnotherEmptyServerStopper © 2025 by Benjamin Ewe is licensed under CC BY-SA 4.0. A full copy of the license can be found in [YetAnotherServerStopper/licenses/CC BY-SA 4.0.txt](YetAnotherServerStopper/licenses/CC%20BY-SA%204.0.txt)


Code in this repository is licensed under the GNU AFFERO GENERAL PUBLIC LICENSE. A full copy of the license can be found at [YetAnotherServerStopper/licenses/GNU AFFERO GENERAL PUBLIC LICENSE V3.txt](YetAnotherServerStopper/licenses/GNU%20AFFERO%20GENERAL%20PUBLIC%20LICENSE%20V3.txt)

If these licenses don't work for you send a message. 

## Notes
- Running it in singleplayer obviously doesnt do much, but does not seem to break anything either.

[^1]: The reason ```function-permission-level``` needs to be set to 4 is because YAESS uses the stop function, and [it requires permission level 4](https://minecraft.fandom.com/wiki/Commands/stop).

[^2]: The Vanille pausing feature also pauses datapacks. It pauses most processes, but stil reserves some memmory for the server (about 700mb in my experience). It of cause has the advantage of resuming the server instantly on connect whereas stopping the server requires a full start.
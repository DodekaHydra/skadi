Skadi
=====

Skadi parses [Dota 2](http://www.dota2.com) replay files.

Dota 2 runs on Valve's Source Engine, which has a very interesting way of broadcasting game information. With Dota 2, Valve opted for [protobuf-based](http://code.google.com/p/protobuf/) of game data. You can get replays of this data by downloading them through the game client.

Developers have been clamoring for game positional data in these replays. Skadi aims to provide chronological snapshots of game state. In the bin directory you will find a [script](https://github.com/onethirtyfive/skadi/blob/master/bin/skadi) which illustrates some usage.

In Progress
===========

Currently, skadi:

* gives access to 100% of protobuf-message-level data (including embedded messages in some of the top-level messages)
* correctly flattens "send tables" into "receive tables"
* has scaffolding for interpreting all known 'user messages' (ex. particle management, combat log, chat, and more)

Next, I aim to:

* make state containers for entities based off of receive tables
* parse packet entities (in both CDemoPacket and CDemoFullPacket) into updates for the containers
* refine the code and add tests
* and finally, enable arbirary access of world state in a repo at any game time

Skadi will likely undergo heavy rewriting as I do this. New to Python.

Usage
=====

I am unable to provide instructions at this time, but to run skadi you will need the following libraries:

* protobuf (the bedrock of the whole implementation)
* snappy (a quick compression library used to compress some replay data)

Attribution
===========

I will use the pioneering [edith](https://github.com/dschleck/edith) project as a reference implementation for parsing packet entities. The author also has very helpful instructions on installing some of the dependencies skadi uses.

Special thanks to the folks in #dota2replay on quakenet. Feel free to stop by if you have any questions! Do hang out, though, since I'm only around sometimes.

License
=======

Skadi is offered under the [MIT license](https://github.com/onethirtyfive/skadi/blob/master/LICENSE).

This license applies to all revisions of source code.
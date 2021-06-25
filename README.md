Some Eluna scripts I've been workign on.

Menu has a bunch of options. And Menu _NPC_BOTS has an added option to spawn the NPC that lets you hire Bots if server uses NPC_Bots from trickerer https://github.com/trickerer/Trinity-Bots
Most options in the menu can be turned off for non-GM players by changing variables from false to true. but if GMonly = true then the whole menu becoems only accessable by GM's of rank 3.

T10_BIS is an npc that will give BIS gear that I found listed at https://gist.github.com/brandonsturgeon/756ed49463ad8f659a1b760c1a20d441, it also levels the player to 80 and gives all spells.
the Npc ID to spawn it is 100030. You can make the NPC only work for GM rank 3 by making local OGMCU = true.

Custom_Xp adds the commands ".xp 1" to ".xp 10" to change a players xp rate. And ".xp ?" tell you what your current rate is.
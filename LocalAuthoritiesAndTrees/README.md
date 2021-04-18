# Local Authorities and Trees
This game script does so that the local authorities don't get as mad at you for cutting down trees, as long as the purpose for cutting down the trees is to build something.

![](https://i.stack.imgur.com/ddtqw.jpg)

In the above screenshot, I built a two-track railway to a town in the middle of a forest. Normally after cutting down that many trees the town would have rated me as atrocious, but with this game script they only rate me as mediocre.

This game script only changes the authorities' attitude to cutting down trees if you cut down the trees by building something. If you cut down the trees without building anything on that tile (for example by using the "demolish" button or by raising or lowering terrain), they will be just as mad as usual.

Using this game script, building something on a tile with trees only cost you 7 [local authority rating](https://wiki.openttd.org/en/Manual/Game%20Mechanics/#local-authority-rating), which is the same as you gain for planting trees. Without this game script, it would cost you 35 local authority rating. Demolishing a tile with trees without building anything there will still cost you 35 local authority rating.

The game script can be a bit slow, so if you cut down a lot of trees at once, your rating may temporarily drop to "atrocious" (or whatever it would be without the game script), but the game script will increase it again after a few seconds.

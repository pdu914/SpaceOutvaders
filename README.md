# SpaceOutvaders
An upgraded Space Invaders game
Group Name: Penguin Lover
Member: Peng Tou Du

Description:
My project will be the game Space Invaders but with added features. These will include additional levels, upgrades, monsters, and maybe a shop. It will obviously have the basic mechanics of the game; I just want to play with the other features. It will have a simple graphic design and a home screen.

Prototype:
https://docs.google.com/document/d/1kNEVpPjrvGEY4NkLYW4iv-h-O2Ef-CJJzM0hCx2nQks/edit?usp=sharing

5/24: I created the Alien, Invaders, and TheGame(main class) classes. As of now, I am using TheGame as a tester, and am working on the other
classes and their methods. I managed to be able to display the image of an alien in the Alien class and initialize a bunch of aliens in the Invaders class.
5/25: I added the shiftDown() function, which basically makes all the aliens go down (this is for when t)
hey bounce on the walls). I also made the basic draw for Invaders, but the spacing of the aliens is still off.
5/26: I added the changeDir() function, which detects when the aliens are about to bounce on the walls, and changes the direction. I also added an updateEverything() function, which will be the main thing that moves everything. For now, I only have it move everything right or left according to its speed and changeDir() and shiftDown(), but it seems the spacing of the aliens makes it so that they don't have space to move left or right.
5/27-5/30: I added the shooting aspect/lasers of the game and their interactions with the different components. I also added the player, which means I finished the basic mechanics of the game.
5/31: Today I just finished my demo branch and also added the score display. There isn't a high score system yet. I also added a new BlueAlien, which is different from the regular, although I haven't implemented yet into the classes. I mainly spent today planning my new classes and how they will fit together.
6/1-6/2:I added another regular monster character and also 2 new bosses that will be implemented later. I added the default Levels class, which will be the parent for all the other different level classes. I switched my original "demo game" to a level system, where the draw() will be in each level instead of the main class itself. I switched what I have so far to a level1, because it is the easiest level.
6/7:I added the new constructor for level 2, but it seems that it is displaying all the purple aliens over the green ones. I also need to fix the structure so that I can get a random alien to shoot, since now there are more than one type.

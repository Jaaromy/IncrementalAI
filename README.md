# IncrementalAI

Using cocos2d to create artificial intelligence demos for iOS.

Each branch will be a self-contained step in the process starting with basic drawing and touch interaction and ending with flocking, path finding, and other AI projects.

### Branched Demos

#### 01-Sprite
Using default cocos2d project structure, draw a sprite on the screen.

#### 02-SpriteSpin
Create an update loop method and spin the sprite by modifying the rotation property based on the update time delta.

#### 02.5-PerformanceTest
Modify project structure to separate concerns.
Thanks to [this akosma.com blog post](http://akosma.com/2009/07/28/code-organization-in-xcode-projects) for the idea.

Draw thousands of static circles using CCDrawNode and hundreds of spinning sprites to see effect on performance.

#### 03-InputOverlay
Create a toolbar that can be swiped in from the side to control sprite rotation speed.

//
//  SpriteLayer.m
//  Inc-01-Sprite
//
//  Created by Jaaromy Zierse on 10/5/13.
//  Copyright OffCoding 2013. All rights reserved.
//


// Import the interfaces
#import "SpriteLayer.h"

// Needed to obtain the Navigation Controller
#import "AppDelegate.h"

#pragma mark - SpriteLayer

// SpriteLayer implementation
@implementation SpriteLayer

// Helper class method that creates a Scene with the SpriteLayer as the only child.
+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	SpriteLayer *layer = [SpriteLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super's" return value
	if( (self=[super init]) ) {
        
        
		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
        
		// position the sprite on the center of the screen
		
        [self scheduleUpdate];
        
        // create the Draw Node
        CCDrawNode *draw = [[CCDrawNode alloc] init];
        
        for (int i = 1; i <= 10000; i++)
        {
            int xPos = arc4random() % (int)size.width;
            int yPos = arc4random() % (int)size.height;
            
            [draw drawDot:ccp(xPos, yPos) radius:3 color:ccc4f(CCRANDOM_0_1(), CCRANDOM_0_1(), CCRANDOM_0_1(), 1)];
        }
        
        for (int i = 1; i <= 500; i++)
        {
            CCSprite *boid = [CCSprite spriteWithFile:@"Boid.png"];
            boid.anchorPoint = ccp(0.5,0.1);
            int xPos = arc4random() % (int)size.width;
            int yPos = arc4random() % (int)size.height;
            
            boid.position =  ccp( xPos , yPos );
            [self addChild:boid z:0 tag:i];
        }
		
        [self addChild:draw z:0 tag:600];
	}
	return self;
}

- (void) update:(ccTime)delta
{
    for (int i = 1; i <= 500; i++)
    {
        CCNode* boid = [self getChildByTag:i];
        
        if (i % 2 == 0)
        {
            boid.rotation += boid.tag * delta;
        }
        else
        {
            boid.rotation -= boid.tag * delta;
        }
        
    }
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

#pragma mark GameKit delegate

-(void) achievementViewControllerDidFinish:(GKAchievementViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}

-(void) leaderboardViewControllerDidFinish:(GKLeaderboardViewController *)viewController
{
	AppController *app = (AppController*) [[UIApplication sharedApplication] delegate];
	[[app navController] dismissModalViewControllerAnimated:YES];
}
@end

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
		CCSprite *boid = [CCSprite spriteWithFile:@"Boid.png"];
        
        
		// ask director for the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the sprite on the center of the screen
		boid.position =  ccp( size.width /2 , size.height/2 );
		boid.scale = 1.0f;
		// add the label as a child to this Layer
		[self addChild: boid];
	}
	return self;
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

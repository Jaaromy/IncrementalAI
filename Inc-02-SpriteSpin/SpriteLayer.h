//
//  HelloWorldLayer.h
//  Inc-02-SpriteSpin
//
//  Created by Jaaromy Zierse on 10/6/13.
//  Copyright OffCoding 2013. All rights reserved.
//


#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface SpriteLayer : CCLayer <GKAchievementViewControllerDelegate, GKLeaderboardViewControllerDelegate>
{
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end

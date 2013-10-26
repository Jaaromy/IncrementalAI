//
//  CCMenuItemSlider.h
//  IncrementalAI
//
//  CCMenuItemSlider created by pmanna. Description and code found at the following site.
//  http://www.cocos2d-iphone.org/wiki/doku.php/tips:slider_widget
//

#import "CCMenuItem.h"
#import "CCSprite.h"

@interface CCMenuItemSlider : CCMenuItem <CCRGBAProtocol>
{
	float			minValue_;
	float			maxValue_;
	float			value_;
    
	BOOL			isVertical;
    
	CCNode<CCRGBAProtocol>	*trackImage_, *knobImage_;
}

/** returns the minimum */
@property (nonatomic,readwrite) float minValue;
/** returns the maximum */
@property (nonatomic,readwrite) float maxValue;
/** returns the value */
@property (nonatomic,readwrite) float value;

/** the image for the sliding track */
@property (nonatomic,readwrite,retain) CCNode<CCRGBAProtocol>	*trackImage;
/** the image for the knob */
@property (nonatomic,readwrite,retain) CCNode<CCRGBAProtocol>	*knobImage;

/** creates a menu item with a track and knob image*/
+(id) itemFromTrackImage: (NSString*)value knobImage:(NSString*) value2;
/** creates a menu item with a track and knob image with target/selector */
+(id) itemFromTrackImage: (NSString*)value knobImage:(NSString*) value2 target:(id) t selector:(SEL) s;
/** initializes a slider menu item from two images with a target selector */
-(id) initFromTrackImage: (NSString *)trkImage knobImage: (NSString *)knbImage target: (id)target selector: (SEL)selector;

/** Drag the knob around */
-(void) dragToPoint: (CGPoint)aPoint;

@end

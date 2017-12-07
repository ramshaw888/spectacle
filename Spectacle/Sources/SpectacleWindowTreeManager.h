#import <Cocoa/Cocoa.h>

#import "SpectacleMacros.h"
#import "SpectacleWindowAction.h"

typedef void (^SpectacleFailureFeedback)(void);

@class SpectacleAccessibilityElement;
@class SpectacleScreenDetector;
@class SpectacleShortcut;
@class SpectacleWindowPositionCalculator;

@protocol SpectacleWindowMover;

@interface SpectacleWindowTreeManager : NSObject

- (void)windowMoved;

@end

#import "SpectacleWindowTreeManager.h"
#import "SpectacleAccessibilityElement.h"


@implementation SpectacleWindowTreeManager
{

}

- (void)createTree
{
  NSMutableArray<SpectacleAccessibilityElement *> *allApplicationWindowElements = [SpectacleAccessibilityElement allApplicationWindowElements];

  // TODO: Put these windows into tree structure LOL
  for (SpectacleAccessibilityElement *element in allApplicationWindowElements) {
    CGRect rect = [element rectOfElement];
    NSLog(@"%@ (%f, %f), (%f, %f)", [element windowTitle], CGRectGetMinX(rect), CGRectGetMinY(rect), CGRectGetMaxX(rect), CGRectGetMaxY(rect));
  }
}

- (instancetype)init
{
  self = [super init];
  [self createTree];
  return self;
}


- (void)windowMoved
{
  NSLog(@"moved");
  [self createTree];
}

@end


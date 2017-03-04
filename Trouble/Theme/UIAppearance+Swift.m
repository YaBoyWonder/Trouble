#import "UIAppearance+Swift.h"

@implementation UIView (UIViewAppearance_Swift)

static CGFloat screenScale = 0;

+ (instancetype) inside:(Class<UIAppearanceContainer>)containerClass {
    if (screenScale == 0) {
        screenScale = [[UIScreen mainScreen] scale];
    }
    UITraitCollection *trainCollection =
    [UITraitCollection traitCollectionWithDisplayScale:screenScale];
    return [self appearanceForTraitCollection:trainCollection
            whenContainedInInstancesOfClasses:@[containerClass]];
}

@end

@implementation UIBarItem (UIBarItemAppearance_Swift)

+ (instancetype) inside:(Class<UIAppearanceContainer>)containerClass {
    if (screenScale == 0) {
        screenScale = [[UIScreen mainScreen] scale];
    }
    UITraitCollection *trainCollection =
    [UITraitCollection traitCollectionWithDisplayScale:screenScale];
    return [self appearanceForTraitCollection:trainCollection
            whenContainedInInstancesOfClasses:@[containerClass]];
}

@end
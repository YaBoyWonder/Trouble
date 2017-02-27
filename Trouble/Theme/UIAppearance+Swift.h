@import UIKit;

NS_ASSUME_NONNULL_BEGIN

@interface UIView (UIViewAppearance_Swift)

+ (instancetype) inside:(Class<UIAppearanceContainer>)containerClass;

@end

@interface UIBarItem (UIBarItemAppearance_Swift)

+ (instancetype) inside:(Class<UIAppearanceContainer>)containerClass;

NS_ASSUME_NONNULL_END

@end

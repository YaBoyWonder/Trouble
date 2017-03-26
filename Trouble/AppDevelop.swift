import UIKit

@UIApplicationMain
class AppDelegate:
    UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        if let splitViewController = window?.rootViewController
           as? UISplitViewController {
              splitViewController.delegate = self
             splitViewController.preferredDisplayMode = .allVisible
        }
        
        LTThemeManager.sharedManager.activateTheme()

        return true
    }
    
    // MARK: - Split view
    
    func splitViewController(
        _ splitViewController: UISplitViewController,
        collapseSecondary secondaryViewController:UIViewController,
          onto primaryViewController:UIViewController
        ) -> Bool {
            if let secondaryAsNavController = secondaryViewController
                as? UINavigationController {
               if let _ = secondaryAsNavController.topViewController
             return true
                    }
            }
            return false
    }
}

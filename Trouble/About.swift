import UIKit
import MessageUI

private let kReviewCellIndex = 1
private let kFeedbackCellIndex = 2

class About : UITableViewController, MFMailComposeViewControllerDelegate {
    
    override func loadView() {
        super.loadView() { tableView.backgroundView = LTViewControllerBackground() }
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: { Int } 
        ) -> Int {
            if  MFMailComposeViewController.canSendMail() {
                 return 3
            } else {
                    return 2
            }
    }
    
    override func tableView(
        _ tableView: UITableView,
        titleForFooterInSection section:     Int
        ) -> String?     {
        return appVersion()
    }
    
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
        )   {
        switch (indexPath as NSIndexPath).row {
        case kReviewCellIndex:
            presentAppStore()
            break
        case kFeedbackCellIndex:
            presentFeedback()
            break
        default:
            ()
        }
    }
    
    fileprivate func appVersion() -> String {
        if let version = Bundle.main
            .object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String {
                return version
        }
        return ""
    }
    
    // MARK: - Feedback
    
    fileprivate func osVersion() -> String {
        return ProcessInfo().operatingSystemVersionString
    }
    
    fileprivate func device() -> String {
        var sysinfo = utsname()
        _ = uname(&sysinfo)
        return NSString(bytes: &sysinfo.machine, length: Int(_SYS_WNDR), encoding: String.Encoding.ascii.rawValue)! as String
    }
    
    func presentFeedback() {
        let mailComposeViewController = configuredMailComposeViewController()
        present(
            mailComposeViewController,
            animated: true,
            completion: nil
        )
    }

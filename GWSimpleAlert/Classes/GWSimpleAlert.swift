
public class Alert {
    
    private var alert = UIAlertController()
    private var controllerTitle = ""
    private var controllerMessage = ""
    private var controllerStyle = UIAlertControllerStyle.alert
    
    public init(title: String, message: String, style: UIAlertControllerStyle) {
        self.controllerTitle = title
        self.controllerMessage = message
        self.controllerStyle = style
        self.setAlert()
    }
    
    private func setAlert() {
        self.alert = UIAlertController(title: self.controllerTitle, message: self.controllerMessage, preferredStyle: self.controllerStyle)
    }
    
    public func setActionOK(title: String, complete: @escaping (UIAlertAction) -> (Void)) -> Alert {
        let okAction = UIAlertAction(title: title, style: .default, handler: complete)
        self.alert.addAction(okAction)
        return self
    }
    
    public func setActionCancel(title: String, complete: @escaping (UIAlertAction) -> (Void)) -> Alert {
        let cancelAction = UIAlertAction(title: title, style: .default, handler: complete)
        self.alert.addAction(cancelAction)
        return self
    }
    
    public func show() {
        if let topController = UIApplication.topViewController() {
            topController.present(self.alert, animated: true, completion: nil)
        }
    }
}

public extension UIApplication {
    
    public class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}

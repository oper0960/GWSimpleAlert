
public class GWAlert {
    
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
        self.alert = UIAlertController(title: self.controllerTitle,
                                       message: self.controllerMessage,
                                       preferredStyle: self.controllerStyle)
    }
    
    public func setActionOK(title: String, complete: @escaping (UIAlertAction) -> (Void)) -> GWAlert {
        let okAction = UIAlertAction(title: title, style: .default, handler: complete)
        self.alert.addAction(okAction)
        return self
    }
    
    public func setActionCancel(title: String, complete: @escaping (UIAlertAction) -> (Void)) -> GWAlert {
        let cancelAction = UIAlertAction(title: title, style: .default, handler: complete)
        self.alert.addAction(cancelAction)
        return self
    }
    
    public func show() {
        if var topController = UIApplication.shared.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            topController.present(self.alert, animated: true, completion: nil)
        }
    }
}

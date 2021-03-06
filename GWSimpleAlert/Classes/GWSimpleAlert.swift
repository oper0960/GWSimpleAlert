
public class GWAlert {
    
    private var alert = UIAlertController()
    private var controllerTitle = ""
    private var controllerMessage = ""
    private var controllerStyle = UIAlertControllerStyle.alert
    
    public init(title: String, message: String) {
        self.controllerTitle = title
        self.controllerMessage = message
        self.setAlert()
    }
    
    private func setAlert() {
        self.alert = UIAlertController(title: self.controllerTitle,
                                       message: self.controllerMessage,
                                       preferredStyle: self.controllerStyle)
    }
    
    public func setActionConfirm(title: String, complete: @escaping (UIAlertAction) -> (Void), tfHandler: ((String) -> (Void))? = nil) -> GWAlert {
        let confirmAction = UIAlertAction(title: title, style: .default, handler: { action in
            if let tf = self.alert.textFields?.first?.text {
                tfHandler!(tf)
            }
            complete(action)
        })
        self.alert.addAction(confirmAction)
        return self
    }
    
    public func setActionCancel(title: String, complete: @escaping (UIAlertAction) -> (Void)) -> GWAlert {
        let cancelAction = UIAlertAction(title: title, style: .default, handler: complete)
        self.alert.addAction(cancelAction)
        return self
    }
    
    public func addTextField(placeholder ph: String, keyboardType kt: UIKeyboardType) -> GWAlert {
        self.alert.addTextField { (textField) in
            textField.placeholder = ph
            textField.keyboardType = kt
        }
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

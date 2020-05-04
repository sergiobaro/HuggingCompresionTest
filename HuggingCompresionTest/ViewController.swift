import UIKit

class ViewController: UIViewController {

  @IBOutlet private weak var leftHugggingLabel: UILabel!
  @IBOutlet private weak var rightHuggingLabel: UILabel!

  @IBOutlet private weak var leftHuggingTextField: UITextField!
  @IBOutlet private weak var rightHuggingTextField: UITextField!

  @IBOutlet private weak var leftCompressionLabel: UILabel!
  @IBOutlet private weak var rightCompressionLabel: UILabel!

  @IBOutlet private weak var leftCompressionTextField: UITextField!
  @IBOutlet private weak var rightCompressionTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    leftHuggingTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    rightHuggingTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)

    setPriority(leftHugggingLabel.contentHuggingPriority(for: .horizontal), on: leftHuggingTextField)
    setPriority(rightHuggingLabel.contentHuggingPriority(for: .horizontal), on: rightHuggingTextField)

    leftCompressionTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    rightCompressionTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)

    setPriority(leftCompressionLabel.contentCompressionResistancePriority(for: .horizontal), on: leftCompressionTextField)
    setPriority(rightCompressionLabel.contentCompressionResistancePriority(for: .horizontal), on: rightCompressionTextField)
  }

  @objc private func textChanged(_ sender: UITextField) {
    guard let string = sender.text else {
      return
    }

    if sender == leftHuggingTextField {
      setContentHuggingPriority(string, on: leftHugggingLabel)
    }
    else if sender == rightHuggingTextField {
      setContentHuggingPriority(string, on: rightHuggingLabel)
    }
    else if sender == leftCompressionTextField {
      setContentCompressionResistancePriority(string, on: leftCompressionLabel)
    }
    else if sender == rightCompressionTextField {
      setContentCompressionResistancePriority(string, on: rightCompressionLabel)
    }
  }

  private func setPriority(_ priority: UILayoutPriority, on textField: UITextField) {
    textField.text = String(Int(priority.rawValue))
  }

  private func setContentHuggingPriority(_ string: String, on view: UIView) {
    guard let value = Float(string) else {
      return
    }

    view.setContentHuggingPriority(.init(value), for: .horizontal)
  }

  private func setContentCompressionResistancePriority(_ string: String, on view: UIView) {
    guard let value = Float(string) else {
      return
    }
    view.setContentCompressionResistancePriority(.init(value), for: .horizontal)
  }
}

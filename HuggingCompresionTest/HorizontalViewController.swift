import UIKit

class HorizontalViewController: UIViewController {

  // Hugging
  @IBOutlet private weak var leftHugggingLabel: UILabel!
  @IBOutlet private weak var rightHuggingLabel: UILabel!
  @IBOutlet private weak var leftHuggingTextField: UITextField!
  @IBOutlet private weak var rightHuggingTextField: UITextField!

  // Compression Resistance
  @IBOutlet private weak var leftCompressionLabel: UILabel!
  @IBOutlet private weak var rightCompressionLabel: UILabel!
  @IBOutlet private weak var leftCompressionTextField: UITextField!
  @IBOutlet private weak var rightCompressionTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "Horizontal"

    // Hugging
    leftHuggingTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    rightHuggingTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    leftHuggingTextField.setContentHuggingPriorityText(from: leftHugggingLabel, axis: .horizontal)
    rightHuggingTextField.setContentHuggingPriorityText(from: rightHuggingLabel, axis: .horizontal)

    // Compression Resistance
    leftCompressionTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    rightCompressionTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    leftCompressionTextField.setContentCompressionResistancePriorityText(from: leftHugggingLabel, axis: .horizontal)
    rightCompressionTextField.setContentCompressionResistancePriorityText(from: rightHuggingLabel, axis: .horizontal)
  }

  @objc private func textChanged(_ textField: UITextField) {
    guard let string = textField.text else {
      return
    }

    if textField == leftHuggingTextField {
      leftHugggingLabel.setContentHuggingPriority(string: string, axis: .horizontal)
    }
    else if textField == rightHuggingTextField {
      rightHuggingLabel.setContentHuggingPriority(string: string, axis: .horizontal)
    }
    else if textField == leftCompressionTextField {
      leftCompressionLabel.setContentCompressionResistancePriority(string: string, axis: .horizontal)
    }
    else if textField == rightCompressionTextField {
      rightCompressionLabel.setContentCompressionResistancePriority(string: string, axis: .horizontal)
    }
  }
}

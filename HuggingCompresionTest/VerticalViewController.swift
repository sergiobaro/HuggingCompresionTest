import UIKit

class VerticalViewController: UIViewController {

  // Hugging
  @IBOutlet private weak var topHuggingLabel: UILabel!
  @IBOutlet private weak var bottomHuggingLabel: UILabel!
  @IBOutlet private weak var topHuggingTextField: UITextField!
  @IBOutlet private weak var bottomHuggingTextField: UITextField!

  // Compression Resistance
  @IBOutlet private weak var topCompressionLabel: UILabel!
  @IBOutlet private weak var bottomCompressionLabel: UILabel!
  @IBOutlet private weak var topCompressionTextField: UITextField!
  @IBOutlet private weak var bottomCompressionTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "Vertical"

    // Hugging
    topHuggingTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    bottomHuggingTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    topHuggingTextField.setContentHuggingPriorityText(from: topHuggingLabel, axis: .vertical)
    bottomHuggingTextField.setContentHuggingPriorityText(from: bottomHuggingLabel, axis: .vertical)

    // Compression Resistance
    topCompressionTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    bottomCompressionTextField.addTarget(self, action: #selector(textChanged(_:)), for: .editingChanged)
    topCompressionTextField.setContentCompressionResistancePriorityText(from: topCompressionLabel, axis: .vertical)
    bottomCompressionTextField.setContentCompressionResistancePriorityText(from: bottomCompressionLabel, axis: .vertical)
  }

  @objc private func textChanged(_ textField: UITextField) {
    guard let string = textField.text else {
      return
    }

    if textField == topHuggingTextField {
      topHuggingLabel.setContentHuggingPriority(string: string, axis: .vertical)
    }
    else if textField == bottomHuggingTextField {
      bottomHuggingLabel.setContentHuggingPriority(string: string, axis: .vertical)
    }
    else if textField == topCompressionTextField {
      topCompressionLabel.setContentCompressionResistancePriority(string: string, axis: .vertical)
    }
    else if textField == bottomCompressionTextField {
      bottomCompressionLabel.setContentCompressionResistancePriority(string: string, axis: .vertical)
    }
  }
}

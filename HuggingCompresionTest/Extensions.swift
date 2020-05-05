import UIKit

extension UIView {

  func setContentHuggingPriority(string: String, axis: NSLayoutConstraint.Axis) {
    guard let value = Float(string) else { return }
    self.setContentHuggingPriority(.init(value), for: axis)
  }

  func setContentCompressionResistancePriority(string: String, axis: NSLayoutConstraint.Axis) {
    guard let value = Float(string) else { return }
    self.setContentCompressionResistancePriority(.init(value), for: axis)
  }
}

extension UITextField {

  func setContentHuggingPriorityText(from view: UIView, axis: NSLayoutConstraint.Axis) {
    self.text = String(Int(view.contentHuggingPriority(for: axis).rawValue))
  }

  func setContentCompressionResistancePriorityText(from view: UIView, axis: NSLayoutConstraint.Axis) {
    self.text = String(Int(view.contentCompressionResistancePriority(for: axis).rawValue))
  }
}

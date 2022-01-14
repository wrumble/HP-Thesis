import UIKit

extension UIView {
  func addBackgroundGradient() {
    let gradientView = UIView(frame: frame)
    let gradientLayer = CAGradientLayer()
    let leftColor = UIColor(hexString: "#F7F8FA").cgColor
    let rightColor = UIColor(hexString: "#e7e9ee").cgColor

    gradientView.backgroundColor = .white

    gradientLayer.frame = gradientView.bounds
    gradientLayer.colors = [leftColor, rightColor]
    gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
    gradientLayer.endPoint = CGPoint(x: 0.8, y: 0.5)

    gradientView.layer.addSublayer(gradientLayer)

    addSubview(gradientView)

    gradientView.translatesAutoresizingMaskIntoConstraints = false

    gradientView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    gradientView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    gradientView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
    gradientView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
  }
}

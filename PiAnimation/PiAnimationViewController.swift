import UIKit

public class PiAnimationViewController: UIViewController {
    private lazy var fan = UIImageView(image: UIImage(named: "fan-icon", in: Bundle(for: type(of: self)), compatibleWith: nil))
    private lazy var switchButton: UISwitch = {
        let onOff = UISwitch(frame: .zero)
        onOff.addTarget(self, action: #selector(startAnimation), for: .valueChanged)
        
        return onOff
    }()
    
    public override func viewDidLoad() {
        
        view.backgroundColor = .cyan
        view.addSubview(fan)
        view.addSubview(switchButton)
        
        fan.translatesAutoresizingMaskIntoConstraints = false
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            fan.widthAnchor.constraint(equalToConstant: 200),
            fan.heightAnchor.constraint(equalToConstant: 200),
            fan.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            fan.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            switchButton.topAnchor.constraint(equalTo: fan.bottomAnchor, constant: 30),
            switchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
            
        ])
    }
    
    @objc func startAnimation() {
        let animator = UIViewPropertyAnimator(duration: 5, curve: .easeInOut) {
            for _ in 1...20 {
                let rotation = CGAffineTransform(rotationAngle: CGFloat(Double.pi))
                self.fan.transform = self.fan.transform.concatenating(rotation)
            }
        }
        
        animator.startAnimation()
    }
}

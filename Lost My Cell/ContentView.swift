import UIKit

class ContentViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Background
        view.backgroundColor = UIColor.systemTeal
        
        // Stack for content layout
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        // Image
        let imageView = UIImageView(image: UIImage(systemName: "iphone.homebutton.radiowaves.left.and.right"))
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        stackView.addArrangedSubview(imageView)
        
        // Title
        let titleLabel = UILabel()
        titleLabel.text = "Lost Phone?"
        titleLabel.font = UIFont.boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
        titleLabel.textColor = .white
        stackView.addArrangedSubview(titleLabel)
        
        // Subtitle
        let subtitleLabel = UILabel()
        subtitleLabel.text = "Please Contact:"
        subtitleLabel.font = UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .title2).pointSize, weight: .medium)
        subtitleLabel.textColor = .white
        stackView.addArrangedSubview(subtitleLabel)
        
        // Contact Information
        let contactInfo = [
            "Name: Daniel Booker",
            "Phone: 312-456-2356",
            "Email: dbooker29@students.mchenry.edu"
        ]
        
        for info in contactInfo {
            let label = UILabel()
            label.text = info
            label.font = UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .body).pointSize, weight: .semibold)
            label.textColor = .white
            stackView.addArrangedSubview(label)
        }
        
        // StackView Constraints
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}

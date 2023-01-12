//
//  DetailViewController.swift
//  FoodApp
//
//  Created by Arief Ramadhan on 12/01/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    let viewPage = UIView()
    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "arip")
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.numberOfLines = 5
        label.lineBreakMode = .byWordWrapping
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Arief Ramadhan"
        return label
    }()
    
    private let bioLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 5
        label.lineBreakMode = .byWordWrapping
        label.tintColor = .orange
        label.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "ini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehheini penjelasan ehehhe"
        return label
    }()
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail Resto"
//        view.addSubview(viewPage)
//        viewPage.addSubview(bioLabel)
//        view.addSubview(profileImageView)
        setupViews()
    }
    
    // MARK: - Setup
    
    private func setupViews() {
        view.backgroundColor = .white
        
        let stackView = UIStackView(arrangedSubviews: [profileImageView, nameLabel])
        stackView.axis = .horizontal
        stackView.spacing = 5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            
//            viewPage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            viewPage.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
//            viewPage.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
//            viewPage.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            profileImageView.widthAnchor.constraint(equalToConstant: 250),
            profileImageView.heightAnchor.constraint(equalToConstant: 25),
            
            stackView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            
//            bioLabel.topAnchor.constraint(equalTo: stackView.topAnchor),
//            bioLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
//            bioLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor)
//            bioLabel.topAnchor.constraint(equalTo: stackView.bottomAnchor),
//            bioLabel.leadingAnchor.constraint(equalTo: viewPage.leadingAnchor),
//            bioLabel.trailingAnchor.constraint(equalTo: viewPage.trailingAnchor),
//            bioLabel.bottomAnchor.constraint(equalTo: viewPage.bottomAnchor),
//            bioLabel.widthAnchor.constraint(equalToConstant: 100),
//            bioLabel.heightAnchor.constraint(equalToConstant: 100)
        ])
    }

}

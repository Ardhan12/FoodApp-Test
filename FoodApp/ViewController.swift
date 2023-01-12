//
//  ViewController.swift
//  FoodApp
//
//  Created by Arief Ramadhan on 20/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: MenuTableViewCell.identifier )
        
        return tableView
    }()
    let viewPage: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.setBackgroundImage(UIImage(systemName: "person.crop.circle"), for: .normal)
//        button.setImage(UIImage(systemName: "person.crop.circle"), for: .normal)
        button.tintColor = .orange
        button.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
        return button
    }()
    
    var buttonTap: UIBarButtonItem {
       let button = UIBarButtonItem()
        button.image = UIImage(systemName: "person.crop.circle")
        button.customView?.frame.size = CGSize(width: 160, height: 160)
        button.style = .plain
        button.target = self
        button.action = #selector(buttonTapped2)
        
        return button
    }
    
    @objc func buttonTapped2() {
        print("ini di klik")
        let vc = ProfileViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        self.title = "Arip Resto"
        view.addSubview(viewPage)
        viewPage.addSubview(tableView)
//        view.addSubview(button)
//        view.addSubview(tabBar)
//        let buttonTop = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = buttonTap
        setView()
        
    }
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        //tabbar item selected logic
    }
    
    @objc func buttonTapped(){
        print("klik berhasil")
    }
    
    func setView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        viewPage.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            viewPage.topAnchor.constraint(equalTo: view.topAnchor),
            viewPage.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewPage.leftAnchor.constraint(equalTo: view.leftAnchor),
            viewPage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
//            button.topAnchor.constraint(equalTo: viewPage.topAnchor, constant: 100),
//            button.rightAnchor.constraint(equalTo: viewPage.rightAnchor, constant: -4),
//            button.bottomAnchor.constraint(equalTo: tableView.topAnchor),
//            button.widthAnchor.constraint(equalToConstant: 50),
//            button.heightAnchor.constraint(equalToConstant: 50),
////            button.centerXAnchor.constraint(equalTo: viewPage.centerXAnchor),
//            button.centerYAnchor.constraint(equalTo: viewPage.centerYAnchor),
//
            tableView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height),
            tableView.bottomAnchor.constraint(equalTo: viewPage.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: viewPage.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: viewPage.rightAnchor)
        ])
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        viewPage.frame = view.bounds
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.identifier, for: indexPath) as? MenuTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(text: "custom + \(indexPath.row+1)", imageName: indexPath.row % 2 == 0 ? "ayamBakar" : "ayamOpor")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = DetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        print("cell tapped")
    }
}


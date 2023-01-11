//
//  MenuTableViewCell.swift
//  FoodApp
//
//  Created by Arief Ramadhan on 20/12/22.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    static let identifier = "MenuTableViewCell"
    
    private let name: UILabel = {
        let name = UILabel()
        name.textColor = .black
        name.font = .systemFont(ofSize: 17, weight: .bold)
        return name
    }()
    
    private let image: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleToFill
        image.clipsToBounds = true
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .white
        contentView.addSubview(name)
        contentView.addSubview(image)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure( text: String, imageName: String){
        name.text = text
        image.image = UIImage(named: imageName)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        name.text = nil
        image.image = nil
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imagesize = contentView.frame.size.height
        
        name.frame = CGRect(x: 10, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        
        image.frame = CGRect(x: contentView.frame.size.width-imagesize , y: 3, width: imagesize, height: imagesize )
    }
}

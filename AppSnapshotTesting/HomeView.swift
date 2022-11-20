//
//  HomeView.swift
//  AppSnapshotTesting
//
//  Created by Admin on 20/11/22.
//

import UIKit

class HomeView: UIView {
    
    lazy var homeLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ola mundo"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubViews()
        self.configContraintHomeLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews(){
        self.addSubview(self.homeLabel)
        self.configContraintHomeLabel()
    }
    
    private func configContraintHomeLabel(){
        NSLayoutConstraint.activate([
            self.homeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.homeLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}

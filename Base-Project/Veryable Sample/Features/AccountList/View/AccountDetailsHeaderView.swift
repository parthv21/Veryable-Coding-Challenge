//
//  AccountDetailsHeaderView.swift
//  Veryable Sample
//
//  Created by Parth Tamane on 18/02/23.
//  Copyright © 2023 Veryable Inc. All rights reserved.
//

import Foundation
import UIKit

class AccountDetailsHeaderView: UIView {
 
    init(for section: Int) {
        super.init(frame: .zero)
        setup(for: section)
    }
    
    required init?(coder: NSCoder) { nil }
    
    func setup(for section: Int) {
        let label = UILabel()
        addSubview(label)
        
        label.snp.makeConstraints {
            $0.top.left.equalToSuperview().offset(5)
            $0.bottom.right.equalToSuperview().offset(-5)
        }
        
        backgroundColor = VCustomGrey.light.color
        
        label.text = ["Bank Accounts", "Cards"][section]
        label.font = .vryAvenirNextDemiBold(15)
        label.textColor = VCustomGrey.dark.color
        
        let topBorder = UIView()
        let bottomBorder = UIView()
        addSubview(topBorder)
        addSubview(bottomBorder)
        let borderWidth = 0.5
        
        topBorder.backgroundColor = VCustomGrey.normal.color
        topBorder.snp.makeConstraints {
            $0.top.width.equalToSuperview()
            $0.height.equalTo(borderWidth)
        }
        
        bottomBorder.backgroundColor = VCustomGrey.normal.color
        bottomBorder.snp.makeConstraints {
            $0.bottom.width.equalToSuperview()
            $0.height.equalTo(borderWidth)
        }
    }
}

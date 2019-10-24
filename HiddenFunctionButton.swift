//
//  HiddenFunctionButton.swift
//
//  Created by mizutani-bravesoft on 2019/10/24.
//  Copyright © 2019 bravesoft. All rights reserved.
//

import UIKit

protocol HiddenFunctionButtonDelegate: class {
    func hiddenFunctionButton(_ didFiredFunction: HiddenFunctionButton)
}

class HiddenFunctionButton: UIButton {
    
    internal var maxCount = 10
    internal var interval: TimeInterval = 5
    
    weak internal var delegate: HiddenFunctionButtonDelegate?
    
    private var tapCount = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func initView() {
        addTarget(self, action: #selector(didTapped), for: .touchDown)
        Timer.scheduledTimer(withTimeInterval: interval, repeats: true, block: { _ in
            self.tapCount = 0
        })
    }
    
    @objc private func didTapped() {
        tapCount += 1
        if tapCount >= maxCount {
            tapCount = 0
            delegate?.hiddenFunctionButton(self)
        }
    }
}

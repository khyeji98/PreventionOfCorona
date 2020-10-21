//
//  CustomCategoryView.swift
//  PostCoronaProject
//
//  Created by 김혜지 on 2020/08/11.
//  Copyright © 2020 김혜지. All rights reserved.
//

import UIKit
import FFPopup
import Firebase

extension UIView {
    func loadView(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    var mainView: UIView? {
        return subviews.first
    }
}

class CustomCategoryView: UIView {

    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var totalButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var cafeButton: UIButton!
    @IBOutlet weak var barButton: UIButton!
    @IBOutlet weak var pcButton: UIButton!
    @IBOutlet weak var singButton: UIButton!
    
    var popup : FFPopup?
    
      override init(frame: CGRect) {
          super.init(frame: frame)
          setup()
      }
      
      required init(coder aDecoder: NSCoder) {
          super.init(coder: aDecoder)!
          setup()
      }
    
      private func setup() {
        backgroundColor = .white
          
        guard let view = loadView(nibName: "CustomCategoryView") else { return }
        view.frame = self.bounds
        self.addSubview(view)
        
        totalButton.tag = 0
        foodButton.tag = 1
        cafeButton.tag = 2
        barButton.tag = 3
        pcButton.tag = 4
        singButton.tag = 5
      }
}

//
//  UIViewHelper.swift
//  tester
//
//  Created by Luis Gonzalez on 8/23/21.
//

import UIKit

extension UIView {
    
    func addConstrainedSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
    
    func addConstrainedSubviews(_ views: UIView...) {
        views.forEach {
            view in addConstrainedSubview(view)
        }
    }
    
}


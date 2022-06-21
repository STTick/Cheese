//
//  FilterSaveViewController.swift
//  Cheese
//
//  Created by 서유선 on 2022/05/12.
//

import Foundation
import UIKit


class FilterSaveViewController: UIViewController{
    @IBOutlet weak var useFilterButton: UIButton!
    override func viewDidLoad() {
        useFilterButton.layer.cornerRadius = 10
    }
}

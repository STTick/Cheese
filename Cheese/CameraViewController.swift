//
//  CameraViewController.swift
//  Cheese
//
//  Created by 김유진 on 2022/03/17.
//

import UIKit

class CameraViewController: UIViewController , UICollectionViewDataSource,
                            UICollectionViewDelegate {
    @IBOutlet weak var filterCollectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        //이미지 카운터 하는 함수

        return 6

    }

    

    //셀 구성하기

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RowCell", for: indexPath) as! FilterCollectionViewCell
        cell.backgroundColor = .blue
        
        return cell

    }
          override func viewDidLoad() {
              super.viewDidLoad()
              filterCollectionView.delegate = self
              filterCollectionView.dataSource = self
              // Do any additional setup after loading the view.
          }
      }
  

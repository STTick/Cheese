//
//  CameraViewController.swift
//  Cheese
//
//  Created by 김유진 on 2022/03/17.
//

import UIKit

class CameraViewController: UIViewController , UICollectionViewDataSource{
    @IBOutlet weak var filterCollectionView: UICollectionView!
    let layout = UICollectionViewFlowLayout()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FilterCollectionViewCell
           cell.backgroundColor = .red
        
        cell.layer.cornerRadius = (collectionView.frame.width / 3 - 54) / 2
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filterCollectionView.delegate = self
        filterCollectionView.dataSource = self
        
        
    }
}
    
extension UIViewController: UICollectionViewDelegateFlowLayout {

    // 위 아래 간격
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 26
    }

    // 옆 간격
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 31, bottom: 0, right: 31)
    }

    // cell 사이즈( 옆 라인을 고려하여 설정 )
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.width / 3 - 54 ///  3등분하여 배치, 옆 간격이 1이므로 1을 빼줌
        
        
        print("collectionView width=\(collectionView.frame.width)")
        print("cell하나당 width=\(width)")
        print("root view width = \(self.view.frame.width)")

        let size = CGSize(width: width, height: width)
        
        return size
    }
}

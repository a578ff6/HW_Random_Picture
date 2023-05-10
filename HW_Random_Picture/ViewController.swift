//
//  ViewController.swift
//  HW_Random_Picture
//
//  Created by 曹家瑋 on 2023/5/7.
//

/*
 1. 選擇(Gesture)兩個 emoji 後，在畫面上顯示生成的混搭圖。（兩個可選ImageView)
 2. 使用 UIImageVIew 生成一個混搭的圖片。
 3. 透過兩個可選擇的UIImage來選擇，並且可以在EmojiMix欄位中生成圖片。
 4. 兩個 Random，點擊各自Random時會針對該欄位進行亂數圖片，並且產生MixImage。
 */

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var upperImageView: UIImageView!
//    @IBOutlet weak var lowerImageView: UIImageView!
//    @IBOutlet weak var mixImageView: UIImageView!
//    @IBOutlet weak var upperNameLabel: UILabel!
//    @IBOutlet weak var lowerNameLabel: UILabel!
//    @IBOutlet weak var mixNameLabel: UILabel!
//
//    let upperImages = ["屎", "亨堡", "起司"]
//    let lowerImages = ["屎", "亨堡", "起司"]
//    let mixImages = ["兩坨屎", "屎亨堡", "屎起司", "起司亨堡", "雙亨堡", "雙重起司"]
//
//    // 由於Name會與圖片一致性變動，因此index的部分取用當下會連動的ImageIndex
//    let imageNames = ["Poo", "Big Bite", "Cheese"]
//    let mixNames = ["Double Poo", "Poo Big Bite", "Poo Cheese", "Cheese Big Bite", "Double Big Bite", "Double Cheese"]
//
//    var upperImageIndex = 0
//    var lowerImageIndex = 0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    // UpperImage 下一個
//    @IBAction func upperNextSwipeGesture(_ sender: UISwipeGestureRecognizer) {
//        if upperImageIndex == upperImages.count - 1 {
//            upperImageIndex = 0
//        } else {
//            upperImageIndex = upperImageIndex + 1
//        }
//
//        // 要讓upperImageView、upperNameLabel不管如何都是一致，因此索引部分都是取 upperImageIndex
//        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
//        upperNameLabel.text = imageNames[upperImageIndex]
//    }
//
//    // UpperImage 前一個
//    @IBAction func upperPrevSwipeGesture(_ sender: UISwipeGestureRecognizer) {
//        if upperImageIndex == 0 {
//            upperImageIndex = upperImages.count - 1
//        } else {
//            upperImageIndex = upperImageIndex - 1
//        }
//
//        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
//        upperNameLabel.text = imageNames[upperImageIndex]
//
//    }
//
//    // LowerImage 下一個
//    @IBAction func lowerNextSwipeGesture(_ sender: UISwipeGestureRecognizer) {
//        if lowerImageIndex == lowerImages.count - 1 {
//            lowerImageIndex = 0
//        } else {
//            lowerImageIndex = lowerImageIndex + 1
//        }
//
//        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
//        lowerNameLabel.text = imageNames[lowerImageIndex]
//    }
//
//    // LowerImage 前一個
//    @IBAction func lowerPrevSwipeGesture(_ sender: UISwipeGestureRecognizer) {
//        if lowerImageIndex == 0 {
//            lowerImageIndex = lowerImages.count - 1
//        } else {
//            lowerImageIndex = lowerImageIndex - 1
//        }
//
//        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
//        lowerNameLabel.text = imageNames[lowerImageIndex]
//
//    }
//
//    // Mix Button
//    @IBAction func combineEmojiImageButton(_ sender: UIButton) {
//
//        mixImagesForUpperAndLower()
//
//    }
//
//    // Upper亂數Button
//    @IBAction func randomUpperImageButton(_ sender: UIButton) {
//        upperImageIndex = Int.random(in: 0...upperImages.count - 1)
//        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
//        upperNameLabel.text = imageNames[upperImageIndex]
//
//        mixImagesForUpperAndLower()
//    }
//
//    // Lower亂數Button
//    @IBAction func randomLowerImageButton(_ sender: UIButton) {
//        lowerImageIndex = Int.random(in: 0...lowerImages.count - 1)
//        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
//        lowerNameLabel.text = imageNames[lowerImageIndex]
//
//        mixImagesForUpperAndLower()
//    }
//
//
//    // function : if else 判斷圖片組成
//    func mixImagesForUpperAndLower() {
//        // 屎
//        if upperImageIndex == 0, lowerImageIndex == 0 {
//            mixImageView.image = UIImage(named: mixImages[0])
//            mixNameLabel.text = mixNames[0]
//
//        } else if upperImageIndex == 0, lowerImageIndex == 1 {
//            mixImageView.image = UIImage(named: mixImages[1])
//            mixNameLabel.text = mixNames[1]
//
//        } else if upperImageIndex == 0, lowerImageIndex == 2 {
//            mixImageView.image = UIImage(named: mixImages[2])
//            mixNameLabel.text = mixNames[2]
//        }
//
//        // 大亨堡
//        if upperImageIndex == 1, lowerImageIndex == 0 {
//            mixImageView.image = UIImage(named: mixImages[1])
//            mixNameLabel.text = mixNames[1]
//
//        } else if upperImageIndex == 1, lowerImageIndex == 1 {
//            mixImageView.image = UIImage(named: mixImages[4])
//            mixNameLabel.text = mixNames[4]
//
//        } else if upperImageIndex == 1, lowerImageIndex == 2 {
//            mixImageView.image = UIImage(named: mixImages[3])
//            mixNameLabel.text = mixNames[3]
//        }
//
//        // 起司
//        if upperImageIndex == 2, lowerImageIndex == 0 {
//            mixImageView.image = UIImage(named: mixImages[2])
//            mixNameLabel.text = mixNames[2]
//
//        } else if upperImageIndex == 2, lowerImageIndex == 1 {
//            mixImageView.image = UIImage(named: mixImages[3])
//            mixNameLabel.text = mixNames[3]
//
//        } else if upperImageIndex == 2, lowerImageIndex == 2 {
//            mixImageView.image = UIImage(named: mixImages[5])
//            mixNameLabel.text = mixNames[5]
//        }
//    }
//
//}


// 修改手勢版本
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upperImageView: UIImageView!
    @IBOutlet weak var lowerImageView: UIImageView!
    @IBOutlet weak var mixImageView: UIImageView!
    @IBOutlet weak var upperNameLabel: UILabel!
    @IBOutlet weak var lowerNameLabel: UILabel!
    @IBOutlet weak var mixNameLabel: UILabel!

    let upperImages = ["屎", "亨堡", "起司", "蛋糕"]
    let lowerImages = ["屎", "亨堡", "起司", "蛋糕"]
    let mixImages = ["兩坨屎", "屎亨堡", "屎起司", "屎蛋糕", "雙亨堡", "起司亨堡", "亨堡蛋糕", "雙重起司", "蛋糕起司", "雙蛋糕"]

    // 由於Name會與圖片一致性變動，因此index的部分取用當下會連動的ImageIndex
    let imageNames = ["Poo", "Big Bite", "Cheese", "Cake"]
    let mixNames = ["Double Poo", "Poo Big Bite", "Poo Cheese", "Poo Cake", "Double Big Bite", "Cheese Big Bite", "Cake Big Bite", "Double Cheese", "Cake Cheese", "Double Cake"]

    var upperImageIndex = 0
    var lowerImageIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // UpperImage 前後頁面滑動（修改版）
    @IBAction func upperImageSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {
            upperImageIndex = (upperImageIndex - 1 + upperImages.count) % upperImages.count
        } else {
            upperImageIndex = (upperImageIndex + 1) % upperImages.count
        }
        
        // 要讓upperImageView、upperNameLabel不管如何都是一致，因此索引部分都是取 upperImageIndex
        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
        upperNameLabel.text = imageNames[upperImageIndex]
    }

    // LowerImage 前後頁面滑動（修改版）
    @IBAction func lowerImageSwipeGesture(_ sender: UISwipeGestureRecognizer) {
        
        if sender.direction == .left {
            lowerImageIndex = (lowerImageIndex - 1 + lowerImages.count) % lowerImages.count
        } else {
            lowerImageIndex = (lowerImageIndex + 1) % lowerImages.count
        }
        
        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
        lowerNameLabel.text = imageNames[lowerImageIndex]
    }

    // Mix Button
    @IBAction func combineEmojiImageButton(_ sender: UIButton) {

        mixImagesForUpperAndLower()
    }

    // Upper亂數Button
    @IBAction func randomUpperImageButton(_ sender: UIButton) {
        upperImageIndex = Int.random(in: 0...upperImages.count - 1)
        upperImageView.image = UIImage(named: upperImages[upperImageIndex])
        upperNameLabel.text = imageNames[upperImageIndex]

        mixImagesForUpperAndLower()
    }

    // Lower亂數Button
    @IBAction func randomLowerImageButton(_ sender: UIButton) {
        lowerImageIndex = Int.random(in: 0...lowerImages.count - 1)
        lowerImageView.image = UIImage(named: lowerImages[lowerImageIndex])
        lowerNameLabel.text = imageNames[lowerImageIndex]

        mixImagesForUpperAndLower()
    }


    // function : if else 判斷圖片組成
    func mixImagesForUpperAndLower() {
        // 屎
        if upperImageIndex == 0, lowerImageIndex == 0 {
            mixImageView.image = UIImage(named: mixImages[0])
            mixNameLabel.text = mixNames[0]

        } else if upperImageIndex == 0, lowerImageIndex == 1 {
            mixImageView.image = UIImage(named: mixImages[1])
            mixNameLabel.text = mixNames[1]

        } else if upperImageIndex == 0, lowerImageIndex == 2 {
            mixImageView.image = UIImage(named: mixImages[2])
            mixNameLabel.text = mixNames[2]
            
        } else if upperImageIndex == 0, lowerImageIndex == 3 {
            mixImageView.image = UIImage(named: mixImages[3])
            mixNameLabel.text = mixNames[3]
        }
        
        // 大亨堡
        if upperImageIndex == 1, lowerImageIndex == 0 {
            mixImageView.image = UIImage(named: mixImages[1])
            mixNameLabel.text = mixNames[1]

        } else if upperImageIndex == 1, lowerImageIndex == 1 {
            mixImageView.image = UIImage(named: mixImages[4])
            mixNameLabel.text = mixNames[4]

        } else if upperImageIndex == 1, lowerImageIndex == 2 {
            mixImageView.image = UIImage(named: mixImages[5])
            mixNameLabel.text = mixNames[5]
            
        } else if upperImageIndex == 1, lowerImageIndex == 3 {
            mixImageView.image = UIImage(named: mixImages[6])
            mixNameLabel.text = mixNames[6]
        }
        
        // 起司
        if upperImageIndex == 2, lowerImageIndex == 0 {
            mixImageView.image = UIImage(named: mixImages[2])
            mixNameLabel.text = mixNames[2]

        } else if upperImageIndex == 2, lowerImageIndex == 1 {
            mixImageView.image = UIImage(named: mixImages[5])
            mixNameLabel.text = mixNames[5]

        } else if upperImageIndex == 2, lowerImageIndex == 2 {
            mixImageView.image = UIImage(named: mixImages[7])
            mixNameLabel.text = mixNames[7]
            
        } else if upperImageIndex == 2, lowerImageIndex == 3 {
            mixImageView.image = UIImage(named: mixImages[8])
            mixNameLabel.text = mixNames[8]
        }
        
        // 蛋糕
        if upperImageIndex == 3, lowerImageIndex == 0 {
            mixImageView.image = UIImage(named: mixImages[3])
            mixNameLabel.text = mixNames[3]

        } else if upperImageIndex == 3, lowerImageIndex == 1 {
            mixImageView.image = UIImage(named: mixImages[6])
            mixNameLabel.text = mixNames[6]

        } else if upperImageIndex == 3, lowerImageIndex == 2 {
            mixImageView.image = UIImage(named: mixImages[8])
            mixNameLabel.text = mixNames[8]

        } else if upperImageIndex == 3, lowerImageIndex == 3 {
            mixImageView.image = UIImage(named: mixImages[9])
            mixNameLabel.text = mixNames[9]
        }
    }

}


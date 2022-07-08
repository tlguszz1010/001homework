//
//  ViewController.swift
//  001homework
//
//  Created by 박시현 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var circularImageView1: UIImageView!
    
    @IBOutlet weak var circularImageView2: UIImageView!
    @IBOutlet weak var circularImageView3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        circularImageView1.layer.cornerRadius = circularImageView1.frame.size.width/2
        circularImageView1.layer.borderWidth = 5 // 테두리 굵기
        circularImageView1.layer.borderColor = UIColor.blue.cgColor
        
        circularImageView2.layer.cornerRadius = circularImageView2.frame.size.width/2
        circularImageView2.layer.borderWidth = 5
        circularImageView2.layer.borderColor = UIColor.lightGray.cgColor
        
        circularImageView3.layer.cornerRadius = circularImageView3.frame.size.width/2
        circularImageView3.layer.borderWidth = 5
        circularImageView3.layer.borderColor = UIColor.green.cgColor
        
        movieImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
    }

    @IBAction func movieButton(_ sender: UIButton) {
        movieImageView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
    }
    
}


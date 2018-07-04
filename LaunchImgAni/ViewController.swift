//
//  ViewController.swift
//  LaunchImgAni
//
//  Created by 大鲨鱼 on 2018/7/2.
//  Copyright © 2018年 大鲨鱼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let labell = UILabel()

    @IBOutlet weak var progresss: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //自字义字体不显示，可以使用这个方法
        showAllFonts()
        
        //label 字体相关的设置
        labell.text = "World"
        labell.textColor = UIColor.red
        labell.font = UIFont.init(name: "BankGothicBT-Medium", size: 80)
        labell.textAlignment = .center
        labell.frame.size = CGSize(width: 300, height: 100)
        labell.frame.origin.y = self.view.bounds.height / 2 - 100
        labell.center.x = self.view.bounds.width / 2
        self.view.addSubview(labell)
        
        //延长 launch image 显示时间
        Thread.sleep(forTimeInterval: 1.0)

    }
    
    //滑动的控制杆
    @IBAction func sliderr(_ sender: UISlider) {
        let slider = sender
        //下面这句是让系统自带的值*1000
        let value = Int(slider.value * 1000)
        labell.text = "\(value)"
        self.progresss.progress = slider.value
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //自字义字体不显示，可以调用这个方法
    func showAllFonts()
    {
        let familyNames = UIFont.familyNames
        
        for familyName in familyNames
        {
            let fontNames = UIFont.fontNames(forFamilyName: familyName as String)
            for fontName in fontNames
            {
                print("字体font名称：\(fontName)")
            }
        }
    }
    
}


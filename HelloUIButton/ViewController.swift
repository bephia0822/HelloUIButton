//
//  ViewController.swift
//  HelloUIButton
//
//  Created by Sophia Wang on 2021/3/18.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Hello World")
    }
    @objc func hitMe(_ thisButton: UIButton) {
        print("Yo! What's up?")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //how to make system style button via code
        let newButton = UIButton(type: .system)
        newButton.frame = CGRect(x: 50, y: 50, width: 100, height: 50)
        newButton.setTitle("Press", for: .normal)
        newButton.setTitle("Pressing", for: .highlighted)
        view.addSubview(newButton)
        newButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
        
        //how to make image button via code
        let anotherButton = UIButton(type: .custom)
        anotherButton.frame = CGRect(x: 200, y: 200, width: 114, height: 54)
        anotherButton.setImage(UIImage(named: "PlayButton"), for: .normal)
        anotherButton.setImage(UIImage(named: "PlayButtonPressed"), for: .highlighted)
        view.addSubview(anotherButton)
        anotherButton.addTarget(self, action: #selector(ViewController.hitMe(_:)), for: .touchUpInside)
    }


}


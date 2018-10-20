//
//  ViewController.swift
//  MemoApp
//
//  Created by 高橋一真 on 2018/10/20.
//  Copyright © 2018 高橋一真. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.delegate = self
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        textView.text = appDelegate.lastText
    }

    func textViewDidChange(_ textView: UITextView) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.lastText = textView.text
    }

}


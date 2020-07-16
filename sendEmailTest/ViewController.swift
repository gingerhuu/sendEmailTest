//
//  ViewController.swift
//  sendEmailTest
//
//  Created by Ginger Hu on 7/16/20.
//  Copyright © 2020 Ginger Hu. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate, UITextFieldDelegate, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        subject.delegate = self
        body.delegate = self
    }

    @IBOutlet weak var subject: UITextField!
    
    @IBOutlet weak var body: UITextView!
    
    @IBAction func sendMail(_ sender: Any) {
        let picker = MFMailComposeViewController()
             picker.mailComposeDelegate = self
                 
             if let subjectText = subject.text {
                 picker.setSubject(subjectText)
             }
             picker.setMessageBody(body.text, isHTML: true)
                 
             present(picker, animated: true, completion: nil)
    }
//    
//    @IBAction func sendMail(_ sender: Any) {
//        let picker = MFMailComposeViewController()
//        picker.mailComposeDelegate = self
//            
//        if let subjectText = subject.text {
//            picker.setSubject(subjectText)
//        }
//        picker.setMessageBody(body.text, isHTML: true)
//            
//        present(picker, animated: true, completion: nil)
//    }

    // MFMailComposeViewControllerDelegate

    // 1
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
         dismiss(animated: true, completion: nil)
    }

    // UITextFieldDelegate
        
    // 2
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
            
        return true
    }
        
    // UITextViewDelegate
        
    // 3
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        body.text = textView.text
            
        if text == "\n" {
            textView.resignFirstResponder()
                
            return false
        }
            
        return true
    }

}

//@IBAction func sendMail(_ sender: Any) {
//    let picker = MFMailComposeViewController()
//    picker.mailComposeDelegate = self
//
//    if let subjectText = subject.text {
//        picker.setSubject(subjectText)
//    }
//    picker.setMessageBody(body.text, isHTML: true)
//
//    present(picker, animated: true, completion: nil)
//}
//
//// MFMailComposeViewControllerDelegate
//
//// 1
//func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
//     dismiss(animated: true, completion: nil)
//}
//
//// UITextFieldDelegate
//
//// 2
//func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//    textField.resignFirstResponder()
//
//    return true
//}
//
//// UITextViewDelegate
//
//// 3
//func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
//    body.text = textView.text
//
//    if text == "\n" {
//        textView.resignFirstResponder()
//
//        return false
//    }
//
//    return true
//}

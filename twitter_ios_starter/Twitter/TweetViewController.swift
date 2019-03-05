//
//  TweetViewController.swift
//  Twitter
//
//  Created by Maksat Zhazbayev on 2/25/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetViewController: UIViewController, UITextViewDelegate {
    
    
    
    @IBOutlet weak var charactersCount: UILabel!
    
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        //set max character limit
        let characterLimit = 140
        
        //construct what the newest text wold be if allowed user's latest edit
        let newText = NSString(string: TweetTextView.text!).replacingCharacters(in: range, with: text)
        
        //ToDO: Update character count label
        charactersCount.text = "Character Count: " + String(newText.count)
        //the new text should be allowed? true/false
        return newText.count < characterLimit
    }

    @IBAction func TweetPressed(_ sender: Any) {
        if (!TweetTextView.text.isEmpty) {
            TwitterAPICaller.client?.postTweet(tweetString: TweetTextView.text, success: {
                self.dismiss(animated: true, completion: nil)
            }, failure: { (error) in
                print("Error posting tweet \(error)")
                self.dismiss(animated: true, completion: nil)
            })
        }
        else {
            print("Please enter a text...")
            self.dismiss(animated: true, completion: nil)
            
        }
        
    }
    
    @IBAction func CancelPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var TweetTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TweetTextView.delegate = self

        TweetTextView.becomeFirstResponder()

        // Do any additional setup after loading the view.
    }
    

}

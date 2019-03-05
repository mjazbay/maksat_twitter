//
//  TweetCell.swift
//  Twitter
//
//  Created by Maksat Zhazbayev on 2/24/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var tweetContentLabel: UILabel!
    @IBOutlet weak var profileNameLabel: UILabel!
    
<<<<<<< HEAD
    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBAction func favoriteTweet(_ sender: Any) {
        let toBeFavorited = !favorited
        if (toBeFavorited) {
            TwitterAPICaller.client?.favoriteTweet(tweetID: tweetID, success: {
                self.setFavorite(true)
            }, failure: { (error) in
                print("Favorite did not succeed: \(error)")
            })
        }
        else {
            TwitterAPICaller.client?.unfavoriteTweet(tweetID: tweetID, success: {
                self.setFavorite(false)
            }, failure: { (error) in
                print("Unfavorite did not succeed: \(error)")

            })
        }
    }

   @IBAction func retweet(_ sender: Any) {
    TwitterAPICaller.client?.retweet(tweetID: tweetID, success: {
        self.setRetweeted(true)
    }, failure: { (error) in
        print("Error is retweeting \(error) ")
    })
    }
    
    var favorited: Bool = false
    var tweetID: Int = -1
    var retweeted: Bool = false
    
    func setFavorite(_ isFavorited: Bool) {
        favorited = isFavorited
        if (favorited) {
            favButton.setImage(UIImage(named: "stared"), for: UIControl.State.normal)
        }
        else {
            favButton.setImage(UIImage(named: "star"), for: UIControl.State.normal)
        }
    }
    
    func setRetweeted(_ isRetweeted: Bool) {
        if (isRetweeted) {
            retweetButton.setImage(UIImage(named: "retweeted"), for: UIControl.State.normal)
            retweetButton.isEnabled = false
        }
        else {
            retweetButton.setImage(UIImage(named: "retweet"), for: UIControl.State.normal)
            retweetButton.isEnabled = true
        }
    }
    
    
=======
>>>>>>> f7bae917163c67e344d40b90784cdd119d878808
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

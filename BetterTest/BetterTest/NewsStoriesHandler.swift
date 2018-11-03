//
//  NewsStoriesHandler.swift
//  BetterTest
//
//  Created by Matthew Jagiela on 11/3/18.
//  Copyright © 2018 Austin Scudder. All rights reserved.
//

import UIKit

class NewsStoriesHandler: NSObject {
    var newsTitles = [""]
    var newsURL = [""]
    var newsImages = [""]
    var newsDescription = [""]
    
    override init() {
        super.init()
        newsTitles[0] = "Obama rips hecklers: Why are the people who won the last election ‘so mad all the time?"
        newsURL[0] = "https://www.washingtonpost.com/politics/2018/11/03/obama-rips-hecklers-why-are-people-who-won-last-election-so-mad-all-time/?noredirect=on&utm_term=.0bf70bd86a57"
        newsImages[0] = "Obama"
        newsDescription[0] = "For former president Barack Obama, it was a spontaneous response to a parade of hecklers — not a telepromptered remark that had been vetted for maximum effect — but it still seemed to sum up the final weeks of a searing midterm election characterized by incendiary rhetoric, politically-motivated package bombs and hate.'Why is it that the folks that won the last election are so mad all the time?' Obama asked a crowd of 4,000 as the fifth interrupting protester was escorted out of a Miami rally on Friday. Any further shouts were drowned out by the crowd’s roar."
        newsTitles.append("Trump Tries To Revive Doubt Over Kavanaugh Claims After Little-Known Accuser Recants")
        newsURL.append("https://www.huffingtonpost.com/entry/trump-kavanaugh-judy-munro-leighton-twitter_us_5bdda3b9e4b04367a87cf5e0")
        newsDescription.append("President Donald Trump on Saturday attempted to cast renewed doubt on sexual misconduct allegations against Supreme Court Justice Brett Kavanaugh by pointing to the recantation of one little-known accuser.")
        newsImages.append("Trump1")
        newsTitles.append("U.S. Trade Deficit With China Hits All-Time High Despite Tariffs")
        newsURL.append("https://www.huffingtonpost.com/entry/us-trade-deficit-with-china-hits-all-time-high_us_5bdd153fe4b04367a87cb71c")
        newsDescription.append("President Donald Trump’s steep tariffs on billions of dollars worth of Chinese products don’t seem to be particularly effective at re-balancing trade. America’s trade deficit with China hit a record high in September, according to figures reported Friday by the U.S. Commerce Department.")
        newsImages.append("Trump2")
        
    }
    func getNewsTitle(_ index: Int) -> String{
        return newsTitles[index]
    }
    func getNewsURL(_ index:Int) -> URL{
        return URL(string: newsURL[index])!
    }
    func getNewsDescription(_ index:Int) ->String{
        return newsDescription[index]
    }
    func getNewsImage(_ index: Int) -> UIImage{
        return UIImage(named: newsImages[index])!
    }

}

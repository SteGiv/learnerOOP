//
//  FasilitatorModel.swift
//  learnerOOP
//
//  Created by Stefandi Glivert on 15/05/19.
//  Copyright © 2019 Stefandi Glivert. All rights reserved.
//

import Foundation
class facilitatorModel: learnerModel {
    var perk: String
    init(facilName: String, facilAge: Int, facilGender: String, facilImageProfile: String, facilPerk: String)
    {
        perk = facilPerk
        super.init(nameLearner: facilName, ageLearner: facilAge, genderLearner: facilGender, imageProfileLearner: facilImageProfile)
    }
    func coachMentee()  {
        print("Coaching Mentee")
    }
}

//
//  DataModel.swift
//  Mphasis Coding Exam
//
//  Created by admin on 7/28/22.
//

import Foundation

struct model: Identifiable, Codable{
    var id: Int?
    var email: String?
    var first_name: String?
    var last_name: String?
    var group_name: String?
    var designation: String?
}

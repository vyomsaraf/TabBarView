//
//  DataModel.swift
//  OpeninApp_project
//
//  Created by Vyom on 01/05/24.
//

import Foundation

struct DataModel: Codable {
    var status: Bool?
    var statusCode: String?
    var message: String?
    var name: String?
    var error: [String]?
    
    init(from decoder: Decoder) throws { }
    func encode(to encoder: Encoder) throws { }
}

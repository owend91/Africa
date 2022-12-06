//
//  VideoModel.swift
//  Africa
//
//  Created by David Owen on 12/6/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnailString: String {
        "video-\(id)"
    }
}



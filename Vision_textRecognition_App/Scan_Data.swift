//
//  Scan_Data.swift
//  Vision_textRecognition_App
//
//  Created by Junne Murdock on 6/11/23.
//

import Foundation
struct ScanData: Identifiable {
    var id = UUID()
    let content: String
    
    init(content: String) {
        self.content = content
        
    }
}

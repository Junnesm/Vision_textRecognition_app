//
//  ImageBasedRequestLocation.swift
//  Vision_textRecognition_App
//
//  Created by Junne Murdock on 6/22/23.
//

import Foundation


class VNRequest : NSObject {
     
}
class VNImageBasedRequest : VNRequest { //this needs to be inherited from VNRequest
    
}


//let request = VNRecognizeTextRequest { (request, error) in
//    if let results = request.results as? [VNRecognizedTextObservation] {
//        for result in results {
//            print(result.topCandidates(1).first.debugDescription)
//        }
//    }
//}
//
//let imageRequestHandler = VNImageRequestHandler(data: imageData, options: [:])
//try imageRequestHandler.perform([request])



//
//  ScannerView .swift
//  Vision_textRecognition_App
//
//  Created by Junne Murdock on 6/20/23.
//

import SwiftUI
import VisionKit

struct ScannerView: UIViewControllerRepresentable { //uses the camera to scan documents
    func makeCoordinator() -> Coordinator {
        return Coordinator(completion: completionHandler)
    }
    
    
    final class Coordinator: NSObject, VNDocumentCameraViewControllerDelegate { // how to use the camera.
        private let completionHandler: ([String]?) -> Void
        
       init(completion: @escaping ([String]?) -> Void) {
            self.completionHandler = completion
        }
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFinishWith scan: VNDocumentCameraScan) { //what do to with the information(text) it gets from the camera. that is handled in the file/class "text recognizer".
            let recognizer = TextRecognizer(cameraScan: scan)
            recognizer.recognizeText(withCompletionHandler: completionHandler)
        }
        func documentCameraViewController(_ controller: VNDocumentCameraViewController, didFailWithError error: Error) {
            completionHandler(nil)
        }
        func documentCameraViewControllerDidCancel(_ controller: VNDocumentCameraViewController) {
            completionHandler(nil)
        }
    }
    
    
    
    func makeUIViewController(context: Context) -> VNDocumentCameraViewController {
        let viewController = VNDocumentCameraViewController()
        viewController.delegate  = context.coordinator
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: VNDocumentCameraViewController, context: Context) {
      
    }
    
    typealias UIViewControllerType = VNDocumentCameraViewController

    
    private let completionHandler: ([String]?) -> Void //instructions to take in a optional string( [sting]? )  and return nothing (void)
    
    init(completion: @escaping ([String]?) -> Void) {
        self.completionHandler = completion
    }
}

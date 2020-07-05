//
//  ViewController.swift
//  Randog
//
//  Created by Simon Wells on 04/07/2020.
//  Copyright © 2020 Simon Wells. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
 @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
       
    

    func handleRandomImageResponse(imageData: DogImage?, error: Error?) {
        guard let imageURL = URL(string: imageData?.message ?? "") else {
                    return
                }
        }
        DogAPI.requestRandomImage(completionHandler: handleRandomImageResponse(imageData: error:))
        
    func handleImageFileResponse(image: UIImage?, error: Error?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
}
}
}
  /*
@IBAction func handleLoadImage(_ sender: Any) {
    guard let imageURL = URL(string: imageLocation) else {
        print ("Cannot create URL")
}

    let task1 = URLSession.shared.downloadTask(with: imageURL) { (location, respinse, error) in
        guard let location = location else {
            print ("location is nil")
            return
        }
        
        print (location)
        let imageData = try! Data(contentsOf: location)
        let image = UIImage(data: imageData)
        DispatchQueue.main.async {
            self.imageView.image = image
        }
        */



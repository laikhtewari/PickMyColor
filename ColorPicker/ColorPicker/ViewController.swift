//
//  ViewController.swift
//  ColorPicker
//
//  Created by Kiran Kunigiri on 10/24/15.
//  Copyright © 2015 Kiran Kunigiri. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // Variables
    @IBOutlet weak var imageFrame: UIView!
    
    var session: AVCaptureSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        session = AVCaptureSession()
        session.sessionPreset = AVCaptureSessionPresetPhoto
        
//        let err: NSError
//        let deviceInput = AVCaptureDeviceInput(device: inputDevice, error: &err)

        do {
            let inputDevice = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
            let deviceInput = try AVCaptureDeviceInput(device: inputDevice)
            // Do the rest of your work...
        } catch let error as NSError {
            // Handle any errors
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func photoButtonPressed(sender: UIButton) {
        
    }


}


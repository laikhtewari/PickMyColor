//
//  RGBGetter.swift
//  ColorPicker
//
//  Created by Laikh Tewari on 10/24/15.
//  Copyright © 2015 Kiran Kunigiri. All rights reserved.
//

import Foundation
import UIKit

class RGBGetter
{
    static func getRGBAtPointFromImage ( image: UIImage, point: CGPoint) -> (red: Int, green: Int, blue: Int)
    {
        let x = point.x
        let y = point.y

        let pixelData = CGDataProviderCopyData(CGImageGetDataProvider(image.CGImage))
        let data = CFDataGetBytePtr(pixelData);
        
        let pixelInfo = ((image.size.width  * y) + x ) * 4; // The image is png
        
        let red = Int(data[Int(pixelInfo)])
        let green = Int(data[(Int(pixelInfo) + 1)])
        let blue = Int(data[Int(pixelInfo) + 2])
        
        return (red, green, blue)
    }
    
}
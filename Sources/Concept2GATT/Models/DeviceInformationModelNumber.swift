//
//  DeviceInformationModelNumber.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation


public struct DeviceInformationModelNumber:CharacteristicModel
{
    static var dataLength:Int = 16
    
    let modelNumber:String
    init( bytes:[UInt8] )
    {
        if let value = String.init( bytes:bytes, encoding:.utf8 )
        {
            modelNumber = value
        }
        else
        {
            modelNumber = "unknown"
        }
    }
}

//
//  DeviceInformationModelNumber.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation
import CBGATT


public struct DeviceInformationModelNumber:CharacteristicModel
{
    public static var dataLength:Int = 16
    
    public let modelNumber:String
    public init( bytes:[UInt8] )
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

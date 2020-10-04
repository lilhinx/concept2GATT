//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationHardwareRevision:CharacteristicModel
{
    static var dataLength:Int = 3
    
    let hardwareRevision:String
    init( bytes:[UInt8] )
    {
        if let value = String.init( bytes:bytes, encoding:.utf8 )
        {
            hardwareRevision = value
        }
        else
        {
            hardwareRevision = "unknown"
        }
    }
}

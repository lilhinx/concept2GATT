//
//  DeviceInformationFirmwareRevision.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationFirmwareRevision:CharacteristicModel
{
    static var dataLength:Int = 20
    
    let firmwareRevision:String
    init( bytes:[UInt8] )
    {
        if let value = String.init( bytes:bytes, encoding:.utf8 )
        {
            firmwareRevision = value
        }
        else
        {
            firmwareRevision = "unknown"
        }
    }
    
}

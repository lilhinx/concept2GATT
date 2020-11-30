//
//  DeviceInformationFirmwareRevision.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation
import CBGATT

public struct DeviceInformationFirmwareRevision:CharacteristicModel
{
    public static var dataLength:Int = 20
    
    public let firmwareRevision:String
    public init( bytes:[UInt8] )
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

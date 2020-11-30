//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation
import CBGATT

public struct DeviceInformationHardwareRevision:CharacteristicModel
{
    public static var dataLength:Int = 3
    
    public let hardwareRevision:String
    public init( bytes:[UInt8] )
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

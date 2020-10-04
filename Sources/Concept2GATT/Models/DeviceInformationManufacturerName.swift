//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationManufacturerName:CharacteristicModel
{
    public static var dataLength:Int = 16
    
    public let manufacturerName:String
    public init( bytes:[UInt8] )
    {
        if let value = String.init( bytes:bytes, encoding:.utf8 )
        {
            manufacturerName = value
        }
        else
        {
            manufacturerName = "unknown"
        }
    }
}

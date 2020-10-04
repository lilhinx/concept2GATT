//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationManufacturerName:CharacteristicModel
{
    static var dataLength:Int = 16
    
    let manufacturerName:String
    init( bytes:[UInt8] )
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

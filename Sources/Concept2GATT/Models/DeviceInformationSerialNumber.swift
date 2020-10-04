//
//  DeviceInformationSerialNumber.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationSerialNumber:CharacteristicModel
{
    static var dataLength:Int = 9
  
    let serialNumber:String
    init( bytes:[UInt8] )
    {
        if let value = String.init( bytes:bytes, encoding:.utf8 )
        {
            serialNumber = value
        }
        else
        {
            serialNumber = "unknown"
        }
    }
    
}

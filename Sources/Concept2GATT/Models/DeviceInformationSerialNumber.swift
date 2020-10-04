//
//  DeviceInformationSerialNumber.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationSerialNumber:CharacteristicModel
{
    public static var dataLength:Int = 9
  
    public let serialNumber:String
    public init( bytes:[UInt8] )
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

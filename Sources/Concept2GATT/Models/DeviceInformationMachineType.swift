//
//  DeviceInformationMachineType.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationMachineType:CharacteristicModel
{
    public static var dataLength:Int = 1
    
    public let machineType:ErgMachineType
    public init( bytes:[UInt8] )
    {
        machineType = ErgMachineType.with( byte:bytes[ 0 ] )
    }
}

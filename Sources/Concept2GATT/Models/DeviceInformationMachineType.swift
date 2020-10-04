//
//  DeviceInformationMachineType.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation

public struct DeviceInformationMachineType:CharacteristicModel
{
    static var dataLength:Int = 1
    
    let machineType:ErgMachineType
    
    init( bytes:[UInt8] )
    {
        machineType = ErgMachineType.with( byte:bytes[ 0 ] )
    }
}

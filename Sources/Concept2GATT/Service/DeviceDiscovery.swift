//
//  File.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/15/25.
//

import Foundation
import CBGATT
import CoreBluetooth


public struct DeviceDiscovery:ServiceDefinition
{
    public init( ){ }
    public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060000-43E5-11E4-916C-0800200C9A66" )! )
    
    public var includedServices:Array<any ServiceDefinition> = [ ]
    public var characteristics: Array<any CharacteristicDefinition> = [  ]
}

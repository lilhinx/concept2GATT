//
//  File.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/15/25.
//

import Foundation
import CoreBluetooth
import CBGATT


public struct DeviceInformation:ServiceDefinition
{
    public init( ){ }
    
    public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060010-43E5-11E4-916C-0800200C9A66" )! )
    
    public var description:String
    {
        return "Device Information"
    }
    
    public struct ModelNumber:CharacteristicDefinition
    {
        public typealias Value = String
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060011-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description:String
        {
            return "Model Number"
        }
    }
    
    public struct SerialNumber:CharacteristicDefinition
    {
        public typealias Value = String
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060012-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description:String
        {
            return "Serial Number"
        }
    }
    
    public struct HardwareRevision:CharacteristicDefinition
    {
        public typealias Value = String
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060013-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description:String
        {
            return "Hardware Revision"
        }
    }
    
    
    public struct FirmwareRevision:CharacteristicDefinition
    {
        public typealias Value = String
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060014-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description:String
        {
            return "Firmware Revision"
        }
    }
    
    public struct ManufacturerName:CharacteristicDefinition
    {
        public typealias Value = String
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060015-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description:String
        {
            return "Manufacturer Name"
        }
    }
    
    public struct MachineType:CharacteristicDefinition
    {
        public typealias Value = String
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060016-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description:String
        {
            return "Machine Type"
        }
    }
    
    public var includedServices:Array<any ServiceDefinition> = [ ]
    public var characteristics: Array<any CharacteristicDefinition> = [ ModelNumber( ), SerialNumber( ), HardwareRevision( ), FirmwareRevision( ), ManufacturerName( ), MachineType( ) ]
    
}

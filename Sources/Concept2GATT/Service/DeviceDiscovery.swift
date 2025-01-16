//
//  File.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/15/25.
//

import Foundation


public struct Concept2:ServiceDefinition
{
    public init( ){ }
    
    public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"448DF4C0-95C0-421C-8497-1A6CC5003C45" )! )
    
    public struct NestedService:ServiceDefinition
    {
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"F7FB956D-7F2B-41E8-AE11-A88CC44F046B" )! )
        
        public var includedServices: Array<any ServiceDefinition>
        {
            return [ ]
        }
        
        public var characteristics: Array<any CharacteristicDefinition> = [ CoolFloat( ) ]
    }
    
    public struct NestedService2:ServiceDefinition
    {
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"FB4A7884-4EB9-4ECE-9981-BB8DB4A19757" )! )
        
        public var includedServices: Array<any ServiceDefinition>
        {
            return [ ]
        }
        
        public var characteristics: Array<any CharacteristicDefinition> = [ CoolInt( ) ]
    }
    
    public var includedServices:Array<any ServiceDefinition>
    {
        return [ NestedService( ), NestedService2( ) ]
    }
    
    public struct CoolInt:CharacteristicDefinition
    {
        public typealias Value = Int
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"C3F93BA9-6A46-4E7C-A86C-2D8E2EF1E49C" )! )
    }
    
    public struct CoolFloat:CharacteristicDefinition
    {
        public typealias Value = Float
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"6C102A3E-A38D-48BC-98D9-923067517EF7" )! )
    }
    
    public var characteristics: Array<any CharacteristicDefinition> = [ CoolInt( ), CoolFloat( ) ]
    
    
}

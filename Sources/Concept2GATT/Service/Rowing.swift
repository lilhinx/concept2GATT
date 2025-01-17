//
//  File.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/15/25.
//

import Foundation
import CoreBluetooth
import CBGATT

public struct Rowing:ServiceDefinition
{
    public init( ){ }
    
    public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060030-43E5-11E4-916C-0800200C9A66" )! )
    
    public var description: String
    {
        return "Rowing"
    }
    
    public struct GeneralStatus:CharacteristicDefinition
    {
        public typealias Value = RowingGeneralStatus
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060031-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "General Status"
        }
    }
    
    public struct AdditionalStatus1:CharacteristicDefinition
    {
        public typealias Value = RowingAdditionalStatus1
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060032-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Additional Status 1"
        }
    }
    
    public struct AdditionalStatus2:CharacteristicDefinition
    {
        public typealias Value = RowingAdditionalStatus2
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060033-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Additional Status 2"
        }
    }
    
    public struct StatusSampleRate:CharacteristicDefinition
    {
        public typealias Value = RowingStatusSampleRate
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060034-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Status Sample Rate"
        }
    }
    
    public struct StrokeData:CharacteristicDefinition
    {
        public typealias Value = RowingStrokeData
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060035-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Stroke Data"
        }
    }
    
    public struct AdditionalStrokeData:CharacteristicDefinition
    {
        public typealias Value = RowingAdditionalStrokeData
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060036-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Additional Stroke Data"
        }
    }
    
    public struct IntervalData:CharacteristicDefinition
    {
        public typealias Value = RowingIntervalData
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060037-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Interval Data"
        }
    }
    
    public struct AdditionalIntervalData:CharacteristicDefinition
    {
        public typealias Value = RowingAdditionalIntervalData
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060038-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Additional Interval Data"
        }
    }
    
    public struct WorkoutSummaryData:CharacteristicDefinition
    {
        public typealias Value = RowingWorkoutSummaryData
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE060039-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Workout Summary Data"
        }
    }
    
    public struct AdditionalWorkoutSummaryData:CharacteristicDefinition
    {
        public typealias Value = RowingAdditionalWorkoutSummaryData
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE06003A-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Additional Workout Summary Data"
        }
    }
    
    public struct HeartRateBeltInformation:CharacteristicDefinition
    {
        public typealias Value = RowingHeartRateBeltInformation
        public static let id:CBUUID = CBUUID.init( nsuuid:.init( uuidString:"CE06003B-43E5-11E4-916C-0800200C9A66" )! )
        
        public var description: String
        {
            return "Heart Rate Belt Information"
        }
    }
    
    public var includedServices: Array<any ServiceDefinition> = [ ]
    public var characteristics: Array<any CharacteristicDefinition> = [ GeneralStatus( ),
                                                                        AdditionalStatus1( ),
                                                                        AdditionalStatus2( ),
                                                                        StatusSampleRate( ),
                                                                        StrokeData( ),
                                                                        AdditionalStrokeData( ),
                                                                        IntervalData( ),
                                                                        AdditionalIntervalData( ),
                                                                        WorkoutSummaryData( ),
                                                                        AdditionalWorkoutSummaryData( ),
                                                                        HeartRateBeltInformation( )
                                                                    ]
    
    
}




//
//  Services.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import CoreBluetooth

public enum Services:String,ServiceDefinition
{
    case deviceDiscovery = "CE060000-43E5-11E4-916C-0800200C9A66"
    case deviceInformation = "CE060010-43E5-11E4-916C-0800200C9A66"
    case control = "CE060020-43E5-11E4-916C-0800200C9A66"
    case rowing = "CE060030-43E5-11E4-916C-0800200C9A66"
    
    
    public var service:CBUUID
    {
        return CBUUID.init( string:rawValue )
    }
    
    public var characteristics:Set<CBUUID>
    {
        switch self
        {
        case .deviceInformation:
            return [
                Characteristics.deviceInformation_serialNumber.characteristic,
                Characteristics.deviceInformation_hardwareRevision.characteristic,
                Characteristics.deviceInformation_firmwareRevision.characteristic,
                Characteristics.deviceInformation_manufacturerName.characteristic
            ]
        case .control:
            return [
                Characteristics.control_response.characteristic,
                Characteristics.control_command.characteristic
            ]
        case .rowing:
            return [
                Characteristics.rowing_generalStatus.characteristic,
                Characteristics.rowing_additionalStatus1.characteristic,
                Characteristics.rowing_additionalStatus2.characteristic,
                Characteristics.rowing_statusSampleRate.characteristic,
                Characteristics.rowing_strokeData.characteristic,
                Characteristics.rowing_additionalStrokeData.characteristic,
                Characteristics.rowing_intervalData.characteristic,
                Characteristics.rowing_additionalIntervalData.characteristic,
                Characteristics.rowing_workoutSummaryData.characteristic,
                Characteristics.rowing_additionalWorkoutSummaryData.characteristic,
                Characteristics.rowing_heartRateBeltInformation.characteristic,
                Characteristics.rowing_mutliplexedInformation.characteristic
            ]
        default:
            return [ ]
        }
    }
    
    public var description:String
    {
        switch self
        {
        case .deviceDiscovery:
            return "Device Discovery"
        case .deviceInformation:
            return "Device Information"
        case .control:
            return "Control"
        case .rowing:
            return "Rowing"
        }
    }
    
}

//
//  Services.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import CoreBluetooth
import CBGATT

public enum Concept2Services:String,ServiceDefinition
{
    case deviceDiscovery = "CE060000-43E5-11E4-916C-0800200C9A66"
    case deviceInformation = "CE060010-43E5-11E4-916C-0800200C9A66"
    case rowing = "CE060030-43E5-11E4-916C-0800200C9A66"
    
    public var characteristics:Set<CBUUID>
    {
        switch self
        {
        case .deviceInformation:
            return [
                Concept2Characteristics.deviceInformation_serialNumber.characteristic,
                Concept2Characteristics.deviceInformation_hardwareRevision.characteristic,
                Concept2Characteristics.deviceInformation_firmwareRevision.characteristic,
                Concept2Characteristics.deviceInformation_manufacturerName.characteristic
            ]
        case .rowing:
            return [
                Concept2Characteristics.rowing_generalStatus.characteristic,
                Concept2Characteristics.rowing_additionalStatus1.characteristic,
                Concept2Characteristics.rowing_additionalStatus2.characteristic,
                Concept2Characteristics.rowing_statusSampleRate.characteristic,
                Concept2Characteristics.rowing_strokeData.characteristic,
                Concept2Characteristics.rowing_additionalStrokeData.characteristic,
                Concept2Characteristics.rowing_intervalData.characteristic,
                Concept2Characteristics.rowing_additionalIntervalData.characteristic,
                Concept2Characteristics.rowing_workoutSummaryData.characteristic,
                Concept2Characteristics.rowing_additionalWorkoutSummaryData.characteristic,
                Concept2Characteristics.rowing_heartRateBeltInformation.characteristic
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
        case .rowing:
            return "Rowing"
        }
    }
    
}

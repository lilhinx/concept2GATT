//
//  Characteristics.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import CoreBluetooth
import CBGATT

public enum Characteristics:String,CharacteristicDefinition
{
    case deviceInformation_modelNumber          = "CE060011-43E5-11E4-916C-0800200C9A66"
    case deviceInformation_serialNumber         = "CE060012-43E5-11E4-916C-0800200C9A66"
    case deviceInformation_hardwareRevision     = "CE060013-43E5-11E4-916C-0800200C9A66"
    case deviceInformation_firmwareRevision     = "CE060014-43E5-11E4-916C-0800200C9A66"
    case deviceInformation_manufacturerName     = "CE060015-43E5-11E4-916C-0800200C9A66"
    case deviceInformation_machineType          = "CE060016-43E5-11E4-916C-0800200C9A66"

    
    case rowing_generalStatus                   = "CE060031-43E5-11E4-916C-0800200C9A66"
    case rowing_additionalStatus1               = "CE060032-43E5-11E4-916C-0800200C9A66"
    case rowing_additionalStatus2               = "CE060033-43E5-11E4-916C-0800200C9A66"
    case rowing_statusSampleRate                = "CE060034-43E5-11E4-916C-0800200C9A66"
    case rowing_strokeData                      = "CE060035-43E5-11E4-916C-0800200C9A66"
    case rowing_additionalStrokeData            = "CE060036-43E5-11E4-916C-0800200C9A66"
    case rowing_intervalData                    = "CE060037-43E5-11E4-916C-0800200C9A66"
    case rowing_additionalIntervalData          = "CE060038-43E5-11E4-916C-0800200C9A66"
    case rowing_workoutSummaryData              = "CE060039-43E5-11E4-916C-0800200C9A66"
    case rowing_additionalWorkoutSummaryData    = "CE06003A-43E5-11E4-916C-0800200C9A66"
    case rowing_heartRateBeltInformation        = "CE06003B-43E5-11E4-916C-0800200C9A66"

    
    public var characteristic:CBUUID
    {
        return CBUUID.init( string:rawValue )
    }
    
    public var description:String
    {
        switch self
        {
        case .deviceInformation_modelNumber:
            return "Model Number"
        case .deviceInformation_serialNumber:
            return "Serial Number"
        case .deviceInformation_hardwareRevision:
            return "Hardware Revision"
        case .deviceInformation_firmwareRevision:
            return "Firmware Revision"
        case .deviceInformation_manufacturerName:
            return "Manufacturer Name"
        case .deviceInformation_machineType:
            return "Machine Type"
        case .rowing_generalStatus:
            return "General Status"
        case .rowing_additionalStatus1:
            return "Additional Status 1"
        case .rowing_additionalStatus2:
            return "Additional Status 2"
        case .rowing_statusSampleRate:
            return "Status Sample Rate"
        case .rowing_strokeData:
            return "Stroke Data"
        case .rowing_additionalStrokeData:
            return "Additional Stroke Data"
        case .rowing_intervalData:
            return "Interval Data"
        case .rowing_additionalIntervalData:
            return "Additional Interval Data"
        case .rowing_workoutSummaryData:
            return "Workout Summary Data"
        case .rowing_additionalWorkoutSummaryData:
            return "Additional Workout Summary Data"
        case .rowing_heartRateBeltInformation:
            return "Heart Rate Belt Information"
        }
    }
    
    public func model( with characteristicValue:Data )->CharacteristicModel
    {
        switch self
        {
        
        case .deviceInformation_modelNumber:
            
            return DeviceInformationModelNumber.init( characteristicValue:characteristicValue )
        
        case .deviceInformation_serialNumber:
            
            return DeviceInformationSerialNumber.init( characteristicValue:characteristicValue )
        
        case .deviceInformation_hardwareRevision:
            
            return DeviceInformationHardwareRevision.init( characteristicValue:characteristicValue )
            
        case .deviceInformation_firmwareRevision:
            
            return DeviceInformationFirmwareRevision.init( characteristicValue:characteristicValue )
            
        case .deviceInformation_manufacturerName:
            
            return DeviceInformationManufacturerName.init( characteristicValue:characteristicValue )
            
        case .deviceInformation_machineType:
            
            return DeviceInformationMachineType.init( characteristicValue:characteristicValue )
            
        case .rowing_generalStatus:
            
            return RowingGeneralStatus.init( characteristicValue:characteristicValue )
            
        case .rowing_additionalStatus1:
            
            return RowingAdditionalStatus1.init( characteristicValue:characteristicValue )
            
        case .rowing_additionalStatus2:
            
            return RowingAdditionalStatus2.init( characteristicValue:characteristicValue )
            
        case .rowing_statusSampleRate:
            
            return RowingStatusSampleRate.init( characteristicValue:characteristicValue )
            
        case .rowing_strokeData:
            
            return RowingStrokeData.init( characteristicValue:characteristicValue )
        
        case .rowing_additionalStrokeData:
            
            return RowingAdditionalStrokeData.init( characteristicValue:characteristicValue )
            
        case .rowing_intervalData:
            
            return RowingIntervalData.init( characteristicValue:characteristicValue )
            
        case .rowing_additionalIntervalData:
            
            return RowingAdditionalIntervalData.init( characteristicValue:characteristicValue )

        case .rowing_workoutSummaryData:
            
            return RowingWorkoutSummaryData.init( characteristicValue:characteristicValue )
            
        case .rowing_additionalWorkoutSummaryData:
            
            return RowingAdditionalWorkoutSummaryData.init( characteristicValue:characteristicValue )
            
        case .rowing_heartRateBeltInformation:
            
            return RowingHeartRateBeltInformation.init( characteristicValue:characteristicValue )
            
        }
    }
    
}

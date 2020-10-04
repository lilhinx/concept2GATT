//
//  ErgMachineType.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation


public enum ErgMachineType:UInt8,C2Enum,CustomStringConvertible
{
    case static_d
    case static_c
    case static_a
    case static_b
    case static_e = 5
    case static_simulator = 7
    case static_dynamic = 8
    case slides_a = 16
    case slides_b
    case slides_c
    case slides_d
    case slides_e
    case slides_dynamic = 32
    case static_dyno = 64
    case static_ski = 128
    case static_ski_simulator = 143
    case bike = 192
    case bike_arms
    case bike_noarms
    case bike_simulator = 207
    case multierg_row
    case multierg_ski
    case multierg_bike
    case unknown
    
    public var description:String
    {
        switch self
        {
        case .static_d:
            return "Static D"
        case .static_c:
            return "Static C"
        case .static_a:
            return "Static A"
        case .static_b:
            return "Static B"
        case .static_e:
            return "Static E"
        case .static_simulator:
            return "Static Simulator"
        case .static_dynamic:
            return "Statuc Dynamic"
        case .slides_a:
            return "Slides A"
        case .slides_b:
            return "Slides B"
        case .slides_c:
            return "Slides C"
        case .slides_d:
            return "Slides D"
        case .slides_e:
            return "Slides E"
        case .slides_dynamic:
            return "Slides Dynamic"
        case .static_dyno:
            return "Static Dyno"
        case .static_ski:
            return "Static Ski"
        case .static_ski_simulator:
            return "Static Ski Simulator"
        case .bike:
            return "Bike"
        case .bike_arms:
            return "Bike Arms"
        case .bike_noarms:
            return "Bike No Arms"
        case .bike_simulator:
            return "Bike Simulator"
        case .multierg_row:
            return "MultiERG Row"
        case .multierg_ski:
            return "MultiERG Ski"
        case .multierg_bike:
            return "MultiERG Bike"
        case .unknown:
            return "unknown"
        }
    }
    
    static func with( byte:UInt8 )->ErgMachineType
    {
        guard let value = ErgMachineType.init( rawValue:byte ) else
        {
            return .unknown
        }
        return value
    }
    
}

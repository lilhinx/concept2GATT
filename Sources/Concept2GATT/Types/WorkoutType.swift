//
//  WorkoutType.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum WorkoutType:UInt8,C2Enum,CustomStringConvertible
{
    case justRowNoSplits = 0
    case justRowSplits
    case fixedDistanceNoSplits
    case fixedDistanceSplits
    case fixedTimeNoSplits
    case fixedTimeSplits
    case fixedTimeInterval
    case fixedDistanceInterval
    case variableInterval
    case variableUndefinedRestInterval
    case fixedCalorie
    case fixedWattMinutes
    case fixedCaloriesInterval
    case unknown = 255
  
    public var description:String
    {
        switch self
        {
        case .justRowNoSplits:
            return "Just row, no splits"
        case .justRowSplits:
            return "Just row, with splits"
        case .fixedDistanceNoSplits:
            return "Fixed distance, no splits"
        case .fixedDistanceSplits:
            return "Fixed distance, with splits"
        case .fixedTimeNoSplits:
            return "Fixed time, no splits"
        case .fixedTimeSplits:
            return "Fixed time, with splits"
        case .fixedTimeInterval:
            return "Fixed time intervals"
        case .fixedDistanceInterval:
            return "Fixed distance intervals"
        case .variableInterval:
            return "Variable intervals"
        case .variableUndefinedRestInterval:
            return "Variable, with undefined rest intervals"
        case .fixedCalorie:
            return "Fixed calorie"
        case .fixedWattMinutes:
            return "Fixed watt-minutes"
        case .fixedCaloriesInterval:
            return "Fixed calories-interval"
        default:
            return "unknown"
        }
    }
    
    static func with( byte:UInt8 )->WorkoutType
    {
        guard let value = WorkoutType.init( rawValue:byte ) else
        {
            return .unknown
        }
        return value
    }
}

//
//  WorkoutType.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum WorkoutType:Int,CustomStringConvertible
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
        }
    }
}

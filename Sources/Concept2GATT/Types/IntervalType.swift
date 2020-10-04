//
//  IntervalType.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum IntervalType:UInt8,C2Enum,CustomStringConvertible
{
    case time = 0
    case distance
    case rest
    case timeRestUndefined
    case distanceRestUndefined
    case restUndefined
    case calorie
    case calorieRestUndefined
    case wattMinute
    case wattMinuteRestUndefined
    case none = 255
  
    public var description:String
    {
        switch self
        {
        case .time:
            return "Time"
        case .distance:
            return "Distance"
        case .rest:
            return "Rest"
        case .timeRestUndefined:
            return "Time, rest undefined"
        case .distanceRestUndefined:
            return "Distance, rest undefined"
        case .restUndefined:
            return "Rest undefined"
        case .calorie:
            return "Calorie"
        case .calorieRestUndefined:
            return "Calorie, rest undefined"
        case .wattMinute:
            return "Watt minute"
        case .wattMinuteRestUndefined:
            return "Watt minute, rest undefined"
        case .none:
            return "None"
        }
    }
    
    static func with( byte:UInt8 )->IntervalType
    {
        guard let value = IntervalType.init( rawValue:byte ) else
        {
            return .none
        }
        return value
    }
}

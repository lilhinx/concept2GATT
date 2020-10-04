//
//  WorkoutState.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum WorkoutState:UInt8,C2Enum,CustomStringConvertible
{
    case waitToBegin = 0
    case workoutRow
    case countdownPause
    case intervalRest
    case intervalWorkTime
    case intervalWorkDistance
    case intervalRestEndToWorkTime
    case intervalRestEndToWorkDistance
    case intervalWorkTimeToRest
    case intervalWorkDistanceToRest
    case workoutEnd
    case terminate
    case workoutLogged
    case rearm
    case unknown = 255
    
    public var description:String
    {
        switch self
        {
        case .waitToBegin:
            return "Wait To Begin"
        case .workoutRow:
            return "Workout Row"
        case .countdownPause:
            return "Countdown Pause"
        case .intervalRest:
            return "Interval Rest"
        case .intervalWorkTime:
            return "Interval Work Time"
        case .intervalWorkDistance:
            return "Interval Work Distance"
        case .intervalRestEndToWorkTime:
            return "Interval Rest End To Work Time"
        case .intervalRestEndToWorkDistance:
            return "Interval Rest End To Work Distance"
        case .intervalWorkTimeToRest:
            return "Interval Work Time To Rest"
        case .intervalWorkDistanceToRest:
            return "Interval Work Distance To Rest"
        case .workoutEnd:
            return "Workout End"
        case .terminate:
            return "Terminate"
        case .workoutLogged:
            return "Workout Logged"
        case .rearm:
            return "Rearm"
        default:
            return "unknown"
        }
    }
    
    static func with( byte:UInt8 )->WorkoutState
    {
        guard let value = WorkoutState.init( rawValue:byte ) else
        {
            return .unknown
        }
        return value
    }
}

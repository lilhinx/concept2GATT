//
//  WorkoutDurationType.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum WorkoutDurationType:Int,CustomStringConvertible
{
    case timeDuration = 0
    case caloriesDuration = 0x40
    case distanceDuration = 0x80
    case wattsDuration = 0xC0

    public var description:String
    {
        switch self
        {
        case .timeDuration:
            return "Time duration"
        case .caloriesDuration:
            return "Calories duration"
        case .distanceDuration:
            return "Distance duration"
        case .wattsDuration:
            return "Watts duration"
        }
    }
}

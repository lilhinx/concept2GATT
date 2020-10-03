//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum StrokeState:Int,CustomStringConvertible
{
    case waitingForWheelToReachMinSpeed = 0
    case waitingForWheelToAccelerate
    case driving
    case dwellingAfterDrive
    case recovery
  
    public var description:String
    {
        switch self
        {
        case .waitingForWheelToReachMinSpeed:
            return "Waiting for wheel to reach minimum speed"
        case .waitingForWheelToAccelerate:
            return "Waiting for wheel to accelerate"
        case .driving:
            return "Driving"
        case .dwellingAfterDrive:
            return "Dwelling after drive"
        case .recovery:
            return "Recovery"
    }
  }
}

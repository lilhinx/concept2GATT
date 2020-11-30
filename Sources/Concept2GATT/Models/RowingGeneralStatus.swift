//
//  RowingGeneralStatus.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation
import CBGATT

public struct RowingGeneralStatus:CharacteristicModel
{
    public static let dataLength:Int = 19
    
    public let elapsedTime:C2TimeInterval
    public let distance:C2Distance
    public let workoutType:WorkoutType
    public let intervalType:IntervalType
    public let workoutState:WorkoutState
    public let rowingState:RowingState
    public let strokeState:StrokeState
    public let totalWorkDistance:C2Distance
    public let workoutDuration:C2TimeInterval
    public let workoutDurationType:WorkoutDurationType
    public let dragFactor:C2DragFactor
    
    public init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        distance = C2Distance( distanceWithLow:UInt32( bytes[ 3 ] ), mid:UInt32( bytes[ 4 ] ), high:UInt32( bytes[ 5 ] ) )
        workoutType = WorkoutType.with( byte:bytes[ 6 ] )
        intervalType = IntervalType.with( byte:bytes[ 7 ] )
        workoutState = WorkoutState.with( byte:bytes[ 8 ] )
        rowingState = RowingState.with( byte:bytes[ 9 ] )
        strokeState = StrokeState.with( byte:bytes[ 10 ] )
        totalWorkDistance = C2Distance( distanceWithLow:UInt32( bytes[ 11 ] ), mid:UInt32( bytes[ 12 ] ), high:UInt32( bytes[ 13 ] ) )
        workoutDuration = C2TimeInterval( timeWithLow:UInt32( bytes[ 14 ] ), mid:UInt32( bytes[ 15 ] ), high:UInt32( bytes[ 16 ] ) )
        workoutDurationType = WorkoutDurationType.with( byte:bytes[ 17 ] )
        dragFactor = C2DragFactor( bytes[ 18 ] )
    }
    

}

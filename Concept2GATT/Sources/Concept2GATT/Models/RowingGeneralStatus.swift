//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingCharacteristicStatus:CharacteristicModel
{
    static let dataLength:Int = 19
    
    public let elapsedTime:C2TimeInterval
    public let distance:C2Distance
    public let workoutType:WorkoutType?
    public let intervalType:IntervalType?
    public let workoutState:WorkoutState?
    public let rowingState:RowingState?
    public let strokeState:StrokeState?
    public let totalWorkDistance:C2Distance
    public let workoutDuration:C2TimeInterval
    public let workoutDurationType:WorkoutDurationType?
    public let dragFactor:C2DragFactor
    
    init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        distance = C2Distance( distanceWithLow:UInt32( bytes[ 3 ] ), mid:UInt32( bytes[ 4 ] ), high:UInt32( bytes[ 5 ] ) )
        workoutType = WorkoutType( rawValue:Int( bytes[ 6 ] ) )
        intervalType = IntervalType( rawValue:Int( bytes[ 7 ] ) )
        workoutState = WorkoutState( rawValue:Int( bytes[ 8 ] ) )
        rowingState = RowingState( rawValue:Int( bytes[ 9 ] ) )
        strokeState = StrokeState( rawValue:Int( bytes[ 10 ] ) )
        totalWorkDistance = C2Distance( distanceWithLow:UInt32( bytes[ 11 ] ), mid:UInt32( bytes[ 12 ] ), high:UInt32( bytes[ 13 ] ) )
        workoutDuration = C2TimeInterval( timeWithLow:UInt32( bytes[ 14 ] ), mid:UInt32( bytes[ 15 ] ), high:UInt32( bytes[ 16 ] ) )
        workoutDurationType = WorkoutDurationType( rawValue:Int( bytes[ 17 ] ) )
        dragFactor = C2DragFactor( bytes[ 18 ] )
    }
    

}

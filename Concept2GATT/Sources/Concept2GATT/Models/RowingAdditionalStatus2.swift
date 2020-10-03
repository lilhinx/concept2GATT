//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingAdditionalStatus2:CharacteristicModel
{
    static let dataLength:Int = 18
    
    public let elapsedTime:C2TimeInterval
    public let intervalCount:C2IntervalCount
    public let totalCalories:C2CalorieCount
    public let intervalAveragePace:C2Pace
    public let intervalAveragePower:C2Power
    public let intervalAverageCalories:C2CalorieCount
    public let lastSplitTime:C2TimeInterval
    public let lastSplitDistance:C2Distance
    
    init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        intervalCount = C2IntervalCount( bytes[ 3 ] )
        totalCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 4 ] ), high:UInt16( bytes[ 5 ] ) )
        intervalAveragePace = C2Pace( paceWithLow:UInt16( bytes[ 6 ] ), high:UInt16( bytes[ 7 ] ) )
        intervalAveragePower = C2Power( powerWithLow:UInt16( bytes[ 8 ] ), high:UInt16( bytes[ 9 ] ) )
        intervalAverageCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 10 ] ), high:UInt16( bytes[ 11 ] ) )
        lastSplitTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 12 ] ), mid:UInt32( bytes[ 13 ] ), high:UInt32( bytes[ 14 ] ) )
        lastSplitDistance = C2Distance( distanceWithLow:UInt32( bytes[ 15 ] ), mid:UInt32( bytes[ 16 ] ), high:UInt32( bytes[ 17 ] ) )
    }
    
    
}

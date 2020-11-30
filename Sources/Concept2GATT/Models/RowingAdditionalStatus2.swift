//
//  RowingAdditionalStatus2.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation
import CBGATT

public struct RowingAdditionalStatus2:CharacteristicModel
{
    public static let dataLength:Int = 20
    
    public let elapsedTime:C2TimeInterval
    public let intervalCount:C2IntervalCount
    public let averagePower:C2Power
    public let totalCalories:C2CalorieCount
    public let intervalAveragePace:C2Pace
    public let intervalAveragePower:C2Power
    public let intervalAverageCalories:C2CalorieCount
    public let lastSplitTime:C2TimeInterval
    public let lastSplitDistance:C2Distance
    
    public init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        intervalCount = C2IntervalCount( bytes[ 3 ] )
        averagePower = C2Power( powerWithLow:UInt16( bytes[ 4 ] ), high:UInt16( bytes[ 5 ] ) )
        totalCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 6 ] ), high:UInt16( bytes[ 7 ] ) )
        intervalAveragePace = C2Pace( paceWithLow:UInt16( bytes[ 8 ] ), high:UInt16( bytes[ 9 ] ) )
        intervalAveragePower = C2Power( powerWithLow:UInt16( bytes[ 10 ] ), high:UInt16( bytes[ 11 ] ) )
        intervalAverageCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 12 ] ), high:UInt16( bytes[ 13 ] ) )
        lastSplitTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 14 ] ), mid:UInt32( bytes[ 15 ] ), high:UInt32( bytes[ 16 ] ) )
        lastSplitDistance = C2Distance( distanceWithLow:UInt32( bytes[ 17 ] ), mid:UInt32( bytes[ 18 ] ), high:UInt32( bytes[ 19 ] ) )
    }
    
    
}

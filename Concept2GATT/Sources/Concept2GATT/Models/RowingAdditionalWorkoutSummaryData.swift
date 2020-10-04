//
//  RowingAdditionalWorkoutSummaryData.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingAdditionalWorkoutSummaryData:CharacteristicModel
{
    static var dataLength:Int = 20
    
    public let logEntryDate:C2Date
    public let logEntryTime:C2Time
    public let intervalType:IntervalType?
    public let intervalSize:C2IntervalSize
    public let intervalCount:C2IntervalCount
    public let totalCalories:C2CalorieCount
    public let watts:C2Power
    public let totalRestDistance:C2Distance
    public let intervalRestTime:C2TimeInterval
    public let averageCalories:C2CalorieCount
    
    init( bytes:[UInt8] )
    {
        logEntryDate = 0 // TODO: find date/time format
        logEntryTime = 0
        intervalType = IntervalType( rawValue:Int( bytes[ 4 ] ) )
        intervalSize = C2IntervalSize( sizeWithLow:UInt16( bytes[ 5 ] ), high:UInt16( bytes[ 6 ] ) )
        intervalCount = C2IntervalCount( bytes[ 7 ] )
        totalCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 8 ] ), high:UInt16( bytes[ 9 ] ) )
        watts = C2Power( powerWithLow:UInt16( bytes[ 10 ] ), high:UInt16( bytes[ 11 ] ) )
        totalRestDistance = C2Distance( restDistanceWithLow:UInt32( bytes[ 12 ] ), mid:UInt32( bytes[ 13 ] ), high:UInt32( bytes[ 14 ] ) )
        intervalRestTime = C2TimeInterval( restTimeWithLow:UInt16( bytes[ 15 ] ), high:UInt16( bytes[ 16 ] ) )
        averageCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 17 ] ), high:UInt16( bytes[ 18 ] ) )
    }
    
    
}

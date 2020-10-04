//
//  RowingAdditionalIntervalData.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingAdditionalIntervalData:CharacteristicModel
{
    public static let dataLength:Int = 19
    
    public let elapsedTime:C2TimeInterval
    public let intervalAverageStrokeRate:C2StrokeRate
    public let intervalWorkHeartrate:C2HeartRate
    public let intervalRestHeartrate:C2HeartRate
    public let intervalAveragePace:C2Pace
    public let intervalTotalCalories:C2CalorieCount
    public let intervalAverageCalories:C2CalorieCount
    public let intervalSpeed:C2Speed
    public let intervalPower:C2Power
    public let splitAverageDragFactor:C2DragFactor
    public let intervalNumber:C2IntervalCount
    public let machineType:ErgMachineType
    
    public init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[2] ) )
        intervalAverageStrokeRate = C2StrokeRate( bytes[ 3 ] )
        intervalWorkHeartrate = C2HeartRate( bytes[ 4 ] )
        intervalRestHeartrate = C2HeartRate( bytes[ 5 ] )
        intervalAveragePace = C2Pace( paceWithLow:UInt16( bytes[ 6 ] ), high:UInt16( bytes[ 7 ] ) )
        intervalTotalCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 8 ] ), high:UInt16( bytes[ 9 ] ) )
        intervalAverageCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 10 ] ), high:UInt16( bytes[ 11 ] ) )
        intervalSpeed = C2Speed( speedWithLow:UInt16( bytes[ 12 ] ), high:UInt16( bytes[ 13 ] ) )
        intervalPower = C2Power( powerWithLow:UInt16( bytes[ 14 ] ), high:UInt16( bytes[ 15 ] ) )
        splitAverageDragFactor = C2DragFactor( bytes[ 16 ] )
        intervalNumber = C2IntervalCount( bytes[ 17 ] )
        machineType = ErgMachineType.with( byte:bytes[ 18 ] )
    }
    
    
}

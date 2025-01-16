//
//  RowingWorkoutSummaryData.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation
import CBGATT

public struct RowingWorkoutSummaryData:RawBytesDecodable
{
    public static let dataLength:Int = 20
    public let logEntryDate:C2Date
    public let logEntryTime:C2Time
    public let elapsedTime:C2TimeInterval
    public let distance:C2Distance
    public let averageStrokeRate:C2StrokeRate
    public let endingHeartRate:C2HeartRate
    public let averageHeartRate:C2HeartRate
    public let minimumHeartRate:C2HeartRate
    public let maximumHeartRate:C2HeartRate
    public let dragFactorAverage:C2DragFactor
    public let recoveryHeartRate:C2HeartRate
    public let workoutType:WorkoutType
    public let averagePace:C2Pace
    
    public init( from decoder: any Decoder ) throws
    {
        throw Concept2Decoder.Problem.notSupported
    }
    
    public init( bytes:[UInt8] )
    {
        logEntryDate = 0 // TODO: find date/time format
        logEntryTime = 0
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 4 ] ), mid:UInt32( bytes[ 5 ] ), high:UInt32( bytes[ 6 ] ) )
        distance = C2Distance( distanceWithLow:UInt32( bytes[ 7 ] ), mid:UInt32( bytes[ 8 ] ), high:UInt32( bytes[ 9 ] ) )
        averageStrokeRate = C2StrokeRate( bytes[ 10 ] )
        endingHeartRate = C2HeartRate( bytes[ 11 ] )
        averageHeartRate = C2HeartRate( bytes[ 12 ] )
        minimumHeartRate = C2HeartRate( bytes[ 13 ] )
        maximumHeartRate = C2HeartRate( bytes[14 ] )
        dragFactorAverage = C2DragFactor( bytes[ 15 ] )
        recoveryHeartRate = C2HeartRate( bytes[ 16 ] )
        workoutType = WorkoutType.with( byte:bytes[ 17 ] )
        averagePace = C2Pace(paceWithLow:UInt16( bytes[ 18 ] ), high:UInt16( bytes[ 19 ] ) )
    }
}


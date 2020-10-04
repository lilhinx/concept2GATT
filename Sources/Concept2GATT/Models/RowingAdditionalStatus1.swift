//
//  RowingAdditionalStatus1.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation


public struct RowingAdditionalStatus1:CharacteristicModel
{
    public static let dataLength:Int = 17
    
    public let elapsedTime:C2TimeInterval
    public let speed:C2Speed
    public let strokeRate:C2StrokeRate
    public let heartRate:C2HeartRate
    public let currentPace:C2Pace
    public let averagePace:C2Pace
    public let restDistance:C2Distance
    public let restTime:C2TimeInterval
    public let machineType:ErgMachineType?
    
    public init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        speed = C2Speed( speedWithLow:UInt16( bytes[ 3 ] ), high:UInt16( bytes[ 4 ] ) )
        strokeRate = C2StrokeRate( bytes[ 5 ] )
        heartRate = C2HeartRate( bytes[ 6 ] )
        currentPace = C2Pace( paceWithLow:UInt16( bytes[ 7 ] ), high:UInt16( bytes[ 8 ] ) )
        averagePace = C2Pace( paceWithLow:UInt16( bytes[ 9 ] ), high:UInt16( bytes[ 10 ] ) )
        restDistance = C2Distance( distanceWithLow:UInt32( bytes[ 11 ] ), mid:UInt32( bytes[ 12 ] ), high:0 )
        restTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 13 ] ), mid:UInt32( bytes[ 14 ] ), high:UInt32( bytes[ 15 ] ) )
        machineType = ErgMachineType.with( byte:bytes[ 16 ] )
    }
    
    
}

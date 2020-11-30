//
//  RowingIntervalData.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation
import CBGATT

public struct RowingIntervalData:CharacteristicModel
{
    public static let dataLength:Int = 18
    
    public let elapsedTime:C2TimeInterval
    public let distance:C2Distance
    public let intervalTime:C2TimeInterval
    public let intervalDistance:C2Distance
    public let intervalRestTime:C2TimeInterval
    public let intervalRestDistance:C2Distance
    public let intervalType:IntervalType
    public let intervalNumber:C2IntervalCount
    
    public init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        distance = C2Distance( distanceWithLow:UInt32( bytes[ 3 ] ), mid:UInt32( bytes[ 4 ] ), high:UInt32( bytes[ 5 ] ) )
        intervalTime = C2TimeInterval( intervalTimeWithLow:UInt32( bytes[ 6 ] ), mid:UInt32( bytes[ 7 ] ), high:UInt32( bytes[ 8 ] ) )
        intervalDistance = C2Distance( intervalDistanceWithLow:UInt32( bytes[ 9 ] ), mid:UInt32( bytes[ 10 ] ), high:UInt32( bytes[ 11 ] ) )
        intervalRestTime = C2TimeInterval( restTimeWithLow:UInt16( bytes[ 12 ] ), high:UInt16( bytes[ 13 ] ) )
        intervalRestDistance = C2Distance( restDistanceWithLow:UInt16( bytes[ 14 ] ), high:UInt16( bytes[ 15 ] ) )
        intervalType = IntervalType.with( byte:bytes[ 16 ] )
        intervalNumber = C2IntervalCount( bytes[ 17 ] )
    }
    
    
}

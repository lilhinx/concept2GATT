//
//  RowingAdditionalStrokeData.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation
import CBGATT

public struct RowingAdditionalStrokeData:RawBytesDecodable
{
    public static let dataLength:Int = 15
    public let elapsedTime:C2TimeInterval
    public let strokePower:C2Power
    public let strokeCalories:C2CalorieCount
    public let strokeCount:C2StrokeCount
    public let projectedWorkTime:C2TimeInterval
    public let projectedWorkDistance:C2Distance
    
    public init( from decoder: any Decoder ) throws
    {
        throw Concept2Decoder.Problem.notSupported
    }
}

extension RowingAdditionalStrokeData
{
    init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        strokePower = C2Power( powerWithLow:UInt16( bytes[ 3 ] ), high:UInt16( bytes[ 4 ] ) )
        strokeCalories = C2CalorieCount( calorieCountWithLow:UInt16( bytes[ 5 ] ), high:UInt16( bytes[ 6 ] ) )
        strokeCount = C2StrokeCount( strokeCountWithLow:UInt16( bytes[ 7 ] ), high:UInt16( bytes[ 8 ] ) )
        projectedWorkTime = C2TimeInterval(
            projectedTimeWithLow:UInt32( bytes[ 9 ] ), mid:UInt32( bytes[ 10 ] ), high:UInt32( bytes[ 11 ] ) )
        projectedWorkDistance = C2Distance(
            projectedDistanceWithLow: UInt32( bytes[ 12 ] ), mid:UInt32( bytes[ 13 ] ), high:UInt32( bytes[ 14 ] ) )
    }
}


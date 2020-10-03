//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingStrokeData:CharacteristicModel
{
    static let dataLength:Int = 20
    
    public let elapsedTime:C2TimeInterval
    public let distance:C2Distance
    public let driveLength:C2DriveLength
    public let driveTime:C2DriveTime
    public let strokeRecoveryTime:C2TimeInterval
    public let strokeDistance:C2Distance
    public let peakDriveForce:C2DriveForce
    public let averageDriveForce:C2DriveForce
    public let workPerStroke:C2Work
    public let strokeCount:C2StrokeCount
    
    init( bytes:[UInt8] )
    {
        elapsedTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 0 ] ), mid:UInt32( bytes[ 1 ] ), high:UInt32( bytes[ 2 ] ) )
        distance = C2Distance( distanceWithLow:UInt32( bytes[ 3 ] ), mid:UInt32( bytes[ 4 ] ), high:UInt32( bytes[ 5 ] ) )
        driveLength = C2DriveLength( driveLengthWithLow:bytes[6 ] )
        driveTime = C2DriveTime( timeWithLow:UInt32( bytes[ 7 ] ), mid:0, high:0 )
        strokeRecoveryTime = C2TimeInterval( timeWithLow:UInt32( bytes[ 8 ] ), mid:UInt32( bytes[ 9 ] ), high:0 )
        strokeDistance = C2Distance( distanceWithLow:UInt32( bytes[ 10 ] ), mid:UInt32( bytes[ 11 ] ), high:0 )
        peakDriveForce = C2DriveForce( driveForceWithLow:UInt16( bytes[ 12 ] ), high:UInt16( bytes[ 13 ] ) )
        averageDriveForce = C2DriveForce( driveForceWithLow:UInt16( bytes[ 14 ] ), high:UInt16( bytes[ 15 ] ) )
        workPerStroke = C2Work( workWithLow:UInt16( bytes[ 16 ] ), high:UInt16( bytes[ 17 ] ) )
        strokeCount = C2StrokeCount( strokeCountWithLow:UInt16( bytes[ 18 ] ), high:UInt16( bytes[ 19 ] ) )
    }
    
    
}

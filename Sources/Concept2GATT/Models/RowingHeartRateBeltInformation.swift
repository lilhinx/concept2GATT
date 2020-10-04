//
//  RowingHeartRateBeltInformation.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingHeartRateBeltInformation:CharacteristicModel
{
    public static let dataLength:Int = 6
    
    public let manufacturerID:C2HeartRateBeltManufacturerID
    public let deviceType:C2HeartRateBeltType
    public let beltID:C2HeartRateBeltID
    
    public init( bytes:[UInt8] )
    {
        manufacturerID = C2HeartRateBeltManufacturerID( bytes[ 0 ] )
        deviceType = C2HeartRateBeltType( bytes[ 1 ] )
        beltID = C2HeartRateBeltID( heartRateBeltIDWithLow:UInt32( bytes[ 2 ] ), midLow:UInt32( bytes[ 3 ] ),
            midHigh:UInt32( bytes[ 4 ] ), high:UInt32( bytes[ 5 ] ) )
    }
    
    
}

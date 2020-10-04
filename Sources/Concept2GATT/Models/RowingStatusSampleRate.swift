//
//  RowingStatusSampleRate.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingStatusSampleRate:CharacteristicModel
{
    public static let dataLength:Int = 1
    
    public let sampleRate:RowingStatusSampleRateType
    public init( bytes:[UInt8] )
    {
        sampleRate = RowingStatusSampleRateType.with( byte:bytes[ 0 ] )
    }
}

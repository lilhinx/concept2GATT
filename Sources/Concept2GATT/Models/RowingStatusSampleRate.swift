//
//  RowingStatusSampleRate.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation
import CBGATT

public struct RowingStatusSampleRate:RawBytesDecodable
{
    public static let dataLength:Int = 1
    public let sampleRate:RowingStatusSampleRateType
    
    public init( from decoder: any Decoder ) throws
    {
        throw Concept2Decoder.Problem.notSupported
    }
    
    init( bytes:[UInt8] )
    {
        sampleRate = RowingStatusSampleRateType.with( byte:bytes[ 0 ] )
    }
}


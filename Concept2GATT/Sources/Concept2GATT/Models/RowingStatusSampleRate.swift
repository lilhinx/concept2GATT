//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public struct RowingStatusSampleRate:CharacteristicModel
{
    static let dataLength:Int = 1
    
    let sampleRate:RowingStatusSampleRateType?
    
    init( bytes:[UInt8] )
    {
        sampleRate = RowingStatusSampleRateType( rawValue:bytes[ 0 ] )
    }
}

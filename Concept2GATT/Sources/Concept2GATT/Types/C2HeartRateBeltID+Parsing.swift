//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2HeartRateBeltID
{
    init( heartRateBeltIDWithLow low:UInt32, midLow:UInt32, midHigh:UInt32, high:UInt32 )
    {
        self = C2HeartRateBeltID( low | ( midLow << 8 ) | ( midHigh << 16 ) | ( high << 24 ) )
    }
}

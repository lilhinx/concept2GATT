//
//  C2IntervalSize+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2IntervalSize
{
    init( sizeWithLow low:UInt16, high:UInt16 )
    {
        self = C2IntervalSize( low | ( high << 8 ) )
    }
}

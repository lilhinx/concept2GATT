//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation


extension C2StrokeCount
{
    init( strokeCountWithLow low:UInt16, high:UInt16 )
    {
        self = C2StrokeCount( low | ( high << 8 ) )
    }
}

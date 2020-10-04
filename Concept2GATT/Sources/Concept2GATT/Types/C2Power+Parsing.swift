//
//  C2Power+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2Power
{
    init( powerWithLow low:UInt16, high:UInt16 )
    {
        self = C2Power( low | ( high << 8 ) )
    }
}

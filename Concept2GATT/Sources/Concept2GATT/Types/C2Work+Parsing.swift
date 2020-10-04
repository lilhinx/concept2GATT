//
//  C2Work+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2Work
{
    init( workWithLow low:UInt16, high:UInt16 )
    {
        let workMultiplier:C2Work = 0.1
        self = C2Work( low | ( high << 8 ) ) * workMultiplier
    }
}

//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2Speed
{
    init( speedWithLow low:UInt16, high:UInt16 )
    {
        let speedMultiplier:C2Speed = 0.001
        self = C2Speed( low | ( high << 8 ) ) * speedMultiplier
    }
}

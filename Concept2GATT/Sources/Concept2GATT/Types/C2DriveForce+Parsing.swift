//
//  C2DriveForce+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2DriveForce
{
    init( driveForceWithLow low:UInt16, high:UInt16 )
    {
        let driveForceMultiplier:C2DriveForce = 0.1
        self = C2DriveForce( low | ( high << 8 ) ) * driveForceMultiplier
    }
}

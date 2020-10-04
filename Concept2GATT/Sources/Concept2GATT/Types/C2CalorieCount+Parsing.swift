//
//  C2CalorieCount+Parsing.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

extension C2CalorieCount
{
    init( calorieCountWithLow low:UInt16, high:UInt16 )
    {
        self = C2CalorieCount( low | ( high << 8 ) )
    }
}

//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/4/20.
//

import Foundation


protocol C2Enum:Codable
{
    static func with( byte:UInt8 )->Self
}

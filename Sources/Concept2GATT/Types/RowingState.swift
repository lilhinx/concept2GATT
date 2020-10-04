//
//  RowingState.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum RowingState:UInt8,C2Enum,CustomStringConvertible
{
    case inactive = 0
    case active
    case unknown = 255
  
    public var description:String
    {
        switch self
        {
        case .inactive:
            return "Inactive"
        case .active:
            return "Active"
        default:
            return "unknown"
        }
    }
    
    static func with( byte:UInt8 )->RowingState
    {
        guard let value = RowingState.init( rawValue:byte ) else
        {
            return .unknown
        }
        return value
    }
}

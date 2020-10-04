//
//  RowingStatusSampleRateType.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum RowingStatusSampleRateType:UInt8,C2Enum,CustomStringConvertible
{
    case oneSecond = 0
    case halfSecond = 1
    case quarterSecond = 2
    case tenthSecond = 3
    case unknown = 255
  
    public var description:String
    {
        switch self
        {
        case .oneSecond:
            return "1 sec"
        case .halfSecond:
            return "500 ms"
        case .quarterSecond:
            return "250 ms"
        case .tenthSecond:
            return "100 ms"
        default:
            return "unknown"
        }
    }
    
    static func with( byte:UInt8 )->RowingStatusSampleRateType
    {
        guard let value = RowingStatusSampleRateType.init( rawValue:byte ) else
        {
            return .unknown
        }
        return value
    }
}

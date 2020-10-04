//
//  RowingState.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

public enum RowingState:Int,CustomStringConvertible
{
    case inactive = 0
    case active
  
    public var description:String
    {
        switch self
        {
        case .inactive:
            return "Inactive"
        case .active:
            return "Active"
        }
    }
}

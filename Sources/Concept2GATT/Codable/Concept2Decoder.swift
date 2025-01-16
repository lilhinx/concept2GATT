//
//  Concept2Decoder.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/15/25.
//

import Foundation
import Combine

protocol RawBytesDecodable:Decodable
{
    init( bytes:[UInt8] )
    static var dataLength:Int{ get }
}

public class Concept2Decoder:TopLevelDecoder
{
    public typealias Input = [UInt8]
    
    public enum Problem:Error
    {
        case notSupported
    }
    
    public func decode<T>( _ type: T.Type, from:[UInt8] ) throws -> T where T : Decodable
    {
        switch type
        {
        case is String.Type:
            
            return try String.init( bytes:from, encoding:.utf8 ) as! T
            
        default:
            
            if let rawBytesDecodable = type as? RawBytesDecodable.Type
            {
                return rawBytesDecodable.init( bytes:from ) as! T
            }
            
            throw Problem.notSupported
        }
    }
    
    
}

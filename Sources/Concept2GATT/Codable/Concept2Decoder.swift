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

extension RawBytesDecodable
{
    public init( data:Data )
    {
        var bytes:[UInt8] = Array( repeating:0, count:Self.dataLength );
        ( data as NSData ).getBytes( &bytes, length:Self.dataLength )
        self.init( bytes:bytes )
    }
    
    public static func empty( )->Self
    {
        return Self.init( bytes:[UInt8].init( repeating:0, count:dataLength ) )
    }
}


public class Concept2Decoder:TopLevelDecoder
{
    public typealias Input = Data
    
    public enum Problem:Error
    {
        case notSupported
    }
    
    public func decode<T>( _ type: T.Type, from:Input ) throws -> T where T : Decodable
    {
        switch type
        {
        case is String.Type:
            
            return String.init( bytes:from, encoding:.utf8 ) as! T
            
        default:
            
            if let rawBytesDecodable = type as? RawBytesDecodable.Type
            {
                return rawBytesDecodable.init( data:from ) as! T
            }
            
            throw Problem.notSupported
        }
    }
    
    
}


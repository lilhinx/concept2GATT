//
//  File.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import Foundation

protocol CharacteristicModel
{
    static var dataLength:Int{ get }
    init( bytes:[UInt8] )
}

extension CharacteristicModel
{
    init( data:Data )
    {
        var bytes:[UInt8] = Array( repeating:0, count:Self.dataLength );
        ( data as NSData ).getBytes( &bytes, length:Self.dataLength )
        self.init( bytes:bytes )
    }
}



//
//  CharacteristicDefinition.swift
//  
//
//  Created by Chris Hinkle on 10/3/20.
//

import CoreBluetooth


protocol CharacteristicDefinition:CustomStringConvertible
{
    var characteristic:CBUUID{ get }
}

//
//  RowerDevice.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/17/25.
//

import Foundation
import CoreBluetooth
import CBGATT
import Combine

@Observable
public class RowerDevice:Device<Concept2Decoder>
{
    public class ReadConfiguration:GATTReadConfiguration
    {
        public override func shouldRead( _ characteristic:any CharacteristicDefinition )-> Bool
        {
            switch characteristic.id
            {
            case Rowing.StatusSampleRate.id:
                return true
            default:
                return false
            }
        }
        
        public override func shouldNotify( _ characteristic:any CharacteristicDefinition )->Bool
        {
            switch characteristic.id
            {
            case Rowing.GeneralStatus.id:
                return true
            case Rowing.StrokeData.id:
                return true
            case Rowing.AdditionalStrokeData.id:
                return true
            default:
                return false
            }
        }
    }
    
    var cancellables:Set<AnyCancellable> = [ ]
    init( peripheral:CBPeripheral )
    {
        super.init( peripheral:peripheral, serviceDefinitions:[ DeviceDiscovery( ), DeviceInformation( ), Rowing( ) ], readConfiguration:ReadConfiguration( ), decoder:.init( ) )
        publisher_strokeCount.assign( to:\.strokeCount, on:self ).store( in:&cancellables )
        publisher_elapsedTime.assign( to:\.elapsedTime, on:self ).store( in:&cancellables )
        publisher_distance.assign( to:\.distance, on:self ).store( in:&cancellables )
        publisher_driveLength.assign( to:\.driveLength, on:self ).store( in:&cancellables )
        publisher_driveTime.assign( to:\.driveTime, on:self ).store( in:&cancellables )
        publisher_strokeRecoveryTime.assign( to:\.strokeRecoveryTime, on:self ).store( in:&cancellables )
        publisher_strokeDistance.assign( to:\.strokeDistance, on:self ).store( in:&cancellables )
        publisher_peakDriveForce.assign( to:\.peakDriveForce, on:self ).store( in:&cancellables )
        publisher_averageDriveForce.assign( to:\.averageDriveForce, on:self ).store( in:&cancellables )
        publisher_workPerStroke.assign( to:\.workPerStroke, on:self ).store( in:&cancellables )
        publisher_strokePower.assign( to:\.strokePower, on:self ).store( in:&cancellables )
        publisher_strokeCalories.assign( to:\.strokeCalories, on:self ).store( in:&cancellables )
        publisher_projectedWorkTime.assign( to:\.projectedWorkTime, on:self ).store( in:&cancellables )
        publisher_projectedWorkDistance.assign( to:\.projectedWorkDistance, on:self ).store( in:&cancellables )
        
    }
    
    var generalStatus:AnyPublisher<RowingGeneralStatus,Never>
    {
        return publisher( for:Rowing.GeneralStatus.id ).compactMap( { $0 as? RowingGeneralStatus } ).eraseToAnyPublisher( )
    }
    
    var strokeData:AnyPublisher<RowingStrokeData,Never>
    {
        return publisher( for:Rowing.StrokeData.id ).compactMap( { $0 as? RowingStrokeData } ).eraseToAnyPublisher( )
    }
    
    var additionalStrokeData:AnyPublisher<RowingAdditionalStrokeData,Never>
    {
        return publisher( for:Rowing.AdditionalStrokeData.id ).compactMap( { $0 as? RowingAdditionalStrokeData } ).eraseToAnyPublisher( )
    }
    
    public var strokeCount:Int = 0
    var publisher_strokeCount:AnyPublisher<Int,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Int in
            return strokeData.strokeCount
        }.eraseToAnyPublisher( )
    }
    
    public var elapsedTime:Measurement<UnitDuration> = .init( value:0, unit:.seconds )
    var publisher_elapsedTime:AnyPublisher<Measurement<UnitDuration>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitDuration> in
            return .init( value:( strokeData.elapsedTime * 0.01 ), unit:.seconds )
        }.eraseToAnyPublisher( )
    }
    
    public var distance:Measurement<UnitLength> = .init( value:0, unit:.decimeters )
    var publisher_distance:AnyPublisher<Measurement<UnitLength>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitLength> in
            return .init( value:strokeData.distance, unit:.decimeters )
        }.eraseToAnyPublisher( )
    }
    
    public var driveLength:Measurement<UnitLength> = .init( value:0, unit:.centimeters )
    var publisher_driveLength:AnyPublisher<Measurement<UnitLength>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitLength> in
            return .init( value:strokeData.driveLength, unit:.centimeters )
        }.eraseToAnyPublisher( )
    }
    
    public var driveTime:Measurement<UnitDuration> = .init( value:0, unit:.seconds )
    var publisher_driveTime:AnyPublisher<Measurement<UnitDuration>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitDuration> in
            return .init( value:( strokeData.driveTime * 0.01 ), unit:.seconds )
        }.eraseToAnyPublisher( )
    }
    
    public var strokeRecoveryTime:Measurement<UnitDuration> = .init( value:0, unit:.seconds )
    var publisher_strokeRecoveryTime:AnyPublisher<Measurement<UnitDuration>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitDuration> in
            return .init( value:( strokeData.strokeRecoveryTime * 0.01 ), unit:.seconds )
        }.eraseToAnyPublisher( )
    }
    
    public var strokeDistance:Measurement<UnitLength> = .init( value:0, unit:.centimeters )
    var publisher_strokeDistance:AnyPublisher<Measurement<UnitLength>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitLength> in
            return .init( value:strokeData.strokeDistance, unit:.centimeters )
        }.eraseToAnyPublisher( )
    }
    
    public var peakDriveForce:Measurement<UnitMass> = .init( value:0, unit:.pounds )
    var publisher_peakDriveForce:AnyPublisher<Measurement<UnitMass>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitMass> in
            return .init( value:( strokeData.peakDriveForce * 10 ), unit:.pounds )
        }.eraseToAnyPublisher( )
    }
    
    public var averageDriveForce:Measurement<UnitMass> = .init( value:0, unit:.pounds )
    var publisher_averageDriveForce:AnyPublisher<Measurement<UnitMass>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitMass> in
            return .init( value:( strokeData.averageDriveForce * 10 ), unit:.pounds )
        }.eraseToAnyPublisher( )
    }
    
    public var workPerStroke:Measurement<UnitEnergy> = .init( value:0, unit:.joules )
    var publisher_workPerStroke:AnyPublisher<Measurement<UnitEnergy>,Never>
    {
        return strokeData.map
        {
            ( strokeData )->Measurement<UnitEnergy> in
            return .init( value:( strokeData.workPerStroke * 0.1 ), unit:.joules )
        }.eraseToAnyPublisher( )
    }
    
    public var strokePower:Measurement<UnitPower> = .init( value:0, unit:.watts )
    var publisher_strokePower:AnyPublisher<Measurement<UnitPower>,Never>
    {
        return additionalStrokeData.map
        {
            ( additionalStrokeData )->Measurement<UnitPower> in
            return .init( value:Double( additionalStrokeData.strokePower ), unit:.watts )
        }.eraseToAnyPublisher( )
    }
    
    public var strokeCalories:Measurement<UnitEnergy> = .init( value:0, unit:.calories )
    var publisher_strokeCalories:AnyPublisher<Measurement<UnitEnergy>,Never>
    {
        return additionalStrokeData.map
        {
            ( additionalStrokeData )->Measurement<UnitEnergy> in
            return .init( value:Double( additionalStrokeData.strokeCalories ), unit:.calories )
        }.eraseToAnyPublisher( )
    }
    
    public var projectedWorkTime:Measurement<UnitDuration> = .init( value:0, unit:.seconds )
    var publisher_projectedWorkTime:AnyPublisher<Measurement<UnitDuration>,Never>
    {
        return additionalStrokeData.map
        {
            ( additionalStrokeData )->Measurement<UnitDuration> in
            return .init( value:additionalStrokeData.projectedWorkTime, unit:.seconds )
        }.eraseToAnyPublisher( )
    }

    public var projectedWorkDistance:Measurement<UnitLength> = .init( value:0, unit:.meters )
    var publisher_projectedWorkDistance:AnyPublisher<Measurement<UnitLength>,Never>
    {
        return additionalStrokeData.map
        {
            ( additionalStrokeData )->Measurement<UnitLength> in
            return .init( value:additionalStrokeData.projectedWorkDistance, unit:UnitLength.meters )
        }.eraseToAnyPublisher( )
    }
}

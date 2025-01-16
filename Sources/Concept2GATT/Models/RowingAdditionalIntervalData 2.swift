//
//  Rowing.swift
//  Concept2GATT
//
//  Created by Chris Hinkle on 1/15/25.
//

import Foundation

struct RowingAdditionalIntervalData:Codable
{
    public let elapsedTime:C2TimeInterval
    public let intervalAverageStrokeRate:C2StrokeRate
    public let intervalWorkHeartrate:C2HeartRate
    public let intervalRestHeartrate:C2HeartRate
    public let intervalAveragePace:C2Pace
    public let intervalTotalCalories:C2CalorieCount
    public let intervalAverageCalories:C2CalorieCount
    public let intervalSpeed:C2Speed
    public let intervalPower:C2Power
    public let splitAverageDragFactor:C2DragFactor
    public let intervalNumber:C2IntervalCount
    public let machineType:ErgMachineType
}

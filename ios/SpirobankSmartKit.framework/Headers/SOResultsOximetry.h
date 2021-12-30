//
//  SOResultsOximetry.h
//  SpirobankSmartKit-Playground
//
//  Created by Marco Fiaschini on 12/07/2018.
//  Copyright © 2018 MIR. All rights reserved.
//



#import <Foundation/Foundation.h>

// SMART ONE OX: vers 2.7 - 1.4 - 1.0 OXIMETRY TEST -----------------------
@interface SOResultsOximetry : NSObject

@property (nonatomic) float spo2Mean; //Average SpO2 value (%)
@property (nonatomic) int spo2Max; //Maximum SpO2 value (%)
@property (nonatomic) int spo2Min; //Minimum SpO2 value (%)
@property (nonatomic) float heartRateMean; //Average heart rate frequency (beats per minute)
@property (nonatomic) int heartRateMax; //Maximum heart rate (beats per minute)
@property (nonatomic) int heartRateMin; //Minimum heart rate (beats per minute)

@property (nonatomic, strong) NSArray* heartRatePoints; // heart rate points (beats per minute)
@property (nonatomic, strong) NSArray*  spo2Points; //SpO2 points (%)

@end
// --------------------------------------------------------------------------

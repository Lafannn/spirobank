//
//  SOResultsVc.h
//  SpirobankSmartKit-Playground
//
//  Created by Sviluppo1 on 13/03/2021.
//  Copyright © 2021 MIR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "volumeTimePoint.h"
#import "PublicDefs.h"

NS_ASSUME_NONNULL_BEGIN

@interface SOResultsVc : NSObject

@property (nonatomic) float evc_L;
@property (nonatomic) float ivc_L;
@property (nonatomic) float ic_L;
@property (nonatomic) float slowExpInsTime_s;
@property (nonatomic, strong) NSMutableArray * VT_Curve;
//*****ATS2019 ************************************
@property (nonatomic) AtsStandard deviceAtsStandard;
//***************************************************
@property (nonatomic) float qualityCode;

@end

NS_ASSUME_NONNULL_END

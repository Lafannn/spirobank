//
//  PublicDefs.h
//  SpirobankSmartKit-Playground
//
//  Created by Marco Fiaschini on 29/03/17.
//  Copyright © 2017 MIR. All rights reserved.
//

#ifndef PublicDefs_h
#define PublicDefs_h

typedef enum : NSUInteger {
    NoTest = -1,
    TestFVC = 0,
    TestPeakFlowFev1 = 1,
    // SMART ONE OX: vers 2.7 - 1.4 - 1.0 OXIMETRY TEST -----------------------
    TestOximetry = 2,
    TestFTmonitor = 3,
    // 2.9 - 1.5 - 1.3 OXIMETRY TEST -----------------------
    TestFVCPlus = 4,
    //-------------------------------------------------------------------------
    //VC TEST °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
    TestVC = 5,
    //°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
    // ***** Cardionica *****
    TestECG = 6
} SOTestType;

/**
 Defines the status codes for firmware update progress notifications
 */
typedef NS_ENUM(NSInteger, UpdateStatus) {
    UpdateIdle,
    UpdateInProgress,
    UpdateError,
    UpdateComplete
};

typedef enum : NSUInteger {
    Reusable = 0,
    Disposable = 1
} SOTurbineType;

// SMART ONE OX: vers 2.8 - 1.5 - 2.0 OXIMETRY TEST -----------------------

typedef enum : NSUInteger {
    NoWarning = 0,
    DefectiveSensor = 1,
    BatteryLow = 2,
    NoFinger = 3,
    PulseSearching = 4,
    PulseSearchingTooLong = 5,
    LossOfPulse= 6,
    LowSignalQuality= 7,
    LowPerfusion= 8,
    ArtifactDetected= 9
    
} SOOximetryWarnings;

typedef NS_ENUM(NSInteger, ResponseType) {
    NoResponse,
    ResponseSuccess,
    ResponseFailure
};

//*****ATS2019 ************************************
typedef NS_ENUM(NSInteger, EndOfForcedExpirationIndicator) {
    PlateauReached,
    ExpiratoryTimeReached
};
//***************************************************

typedef enum : NSUInteger {
    SOEthnicGroupCaucasian = 18,
    SOEthnicGroupAfricanAmerican = 19,
    SOEthnicGroupNorthEastAsian = 20,
    SOEthnicGroupSouthEastAsian = 21,
    SOEthnicGroupOther = 22,
    SOEthnicGroupNotDefined = 18
} SOEthnicGroup;

typedef enum : NSUInteger {
    SOGenderMale = 0,
    SOGenderFemale = 1
} SOGender;

typedef enum : NSUInteger {
    SOQualityMessageNotAvailable = -1,
    SOQualityMessageDontEsitate = 0,
    SOQualityMessageBlowOutFaster = 1,
    SOQualityMessageBlowOutLonger = 2,
    SOQualityMessageAbruptEnd = 3,
    SOQualityMessageGoodBlow = 4,
    SOQualityMessageDontStartTooEarly =  5,
    SOQualityMessageAvoidCoughing = 6,
    //SOQualityMessageGoodSession = 7 vers 2.0 (out of context)
//*****ATS2019 ************************************
    SOQualityMessageHesitationAtMaxVolume = 8,
    SOQualityMessageSlowFilling = 9,
    SOQualityMessageLowFinalInspiration = 10 ,
    SOQualityMessageIncompleteInspirationPriorToFvc = 11,
    SOQualityMessageLowForcedExpirationVolume = 12
//***************************************************
} SOQualityMessage;


//*****ATS2019 ************************************
typedef enum : NSUInteger {
    
        None = 0,
        RelaxButKeepPushing = 1,
        DrinkWaterBeforeNextBlow = 2,
        KeepGoingUntilCompletelyEmpty = 3,
        BlastOutImmediatelyWhenCompletelyFull = 4,
        BlastOutWhenCompletelyFull = 5,
        BreathInFasterBeforeBlastingOut = 6,
        BreathInBackToTheTopAfterEmptyingYourLungs = 7,
        FillLungsCompletelyBeforeBlastingOut = 8 ,
        TakeDeepestBreathPossibleAndKeepGoingUntilempty = 9
    
} SOQualityInstruction;

typedef enum : NSUInteger {
        UNKNONWN = -1,
        ATS_2015 = 0,
        ATS_2019 = 1,
    
} AtsStandard;


typedef enum : NSUInteger {
    
        NotApplicable = 0,
        Acceptable = 1,
        NotAcceptable = 2,
        NotAcceptableAndUsable = 3,
        NotAcceptableAndNotUsable = 4
    
} AcceptabilityStatus;
//***************************************************


typedef enum : NSUInteger {
    UNKNOWN = -1,
    ENABLED = 0,
    DISABLED = 1,
    REQUEST_TIMED_OUT = 2,
    FIRMWARE_UPDATE_NEEDED = 3,
    TEST_NOT_SUPPORTED = 4
    
} CheckState;

typedef enum : NSUInteger {
    SUCCEEDED = 0,
    FAILED = 1,
    NOT_NECESSARY = 2
    
} FixFvcPlusResult;

#endif /* PublicDefs_h */

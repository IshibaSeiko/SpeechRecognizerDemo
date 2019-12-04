//
//  SampleViewController.m
//  SpeechRecognizerDemo
//
//  Created by STV-M025 on 2019/12/04.
//  Copyright © 2019 STV-M025. All rights reserved.
//

@import Speech;
#import "SampleViewController.h"

@interface SampleViewController () <SFSpeechRecognizerDelegate>

@end

@implementation SampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SFSpeechRecognizer *speechRecognizer = [[SFSpeechRecognizer alloc]initWithLocale:[NSLocale localeWithLocaleIdentifier:@"ja-JP"]];
    speechRecognizer.delegate = self;
    
    SFSpeechAudioBufferRecognitionRequest *speechRequest;
    speechRequest = [[SFSpeechAudioBufferRecognitionRequest alloc]init];
    speechRequest.shouldReportPartialResults = YES;
}

@end

//
//  Network_01.h
//  Lezione_14_Network
//
//  Created by Alberto Pasca on 18/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Network_01 : NSObject <NSXMLParserDelegate> {
  NSMutableData *responseData;
}

@property (nonatomic, retain) NSMutableData *responseData;

- (void) GetUrl;

@end

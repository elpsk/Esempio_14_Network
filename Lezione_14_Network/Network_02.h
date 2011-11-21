//
//  Network_02.h
//  Lezione_14_Network
//
//  Created by Alberto Pasca on 18/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"

@interface Network_02 : NSObject <ASIHTTPRequestDelegate> {
  id Delegate;
}

@property (nonatomic, assign) id Delegate;

- (void) GetUrlSyncronous;
- (void) GetUrlAsyncronous;

@end

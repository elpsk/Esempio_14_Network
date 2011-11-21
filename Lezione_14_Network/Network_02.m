//
//  Network_02.m
//  Lezione_14_Network
//
//  Created by Alberto Pasca on 18/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "Network_02.h"

//
//
// http://allseeing-i.com/ASIHTTPRequest/How-to-use
//
//

@implementation Network_02
@synthesize Delegate;

- (void) GetUrlSyncronous {
  
  NSURL *url = [NSURL URLWithString:@"http://www.cutaway.it"];
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
  [request startSynchronous];
  
  NSError *error = [request error];
  if (!error) 
  {
    NSString *response = [request responseString];
    NSLog(@"RESPONSE: %@", response);
  }
  
}

- (void) GetUrlAsyncronous {
  
  NSURL *url = [NSURL URLWithString:@"http://www.cutaway.it"];
  ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
  
  [request setDelegate:self];
  [request startAsynchronous];

}

- (void)requestFinished:(ASIHTTPRequest *)request {
  
  NSString *responseString = [request responseString];
  NSLog(@"ASYNC: %@", responseString);
  
  if ( Delegate && [Delegate respondsToSelector:@selector(AsyncDone)] ) 
    [Delegate AsyncDone];
  
}
- (void)requestFailed:(ASIHTTPRequest *)request {

}


@end



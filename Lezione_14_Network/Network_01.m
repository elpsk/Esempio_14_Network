//
//  Network_01.m
//  Lezione_14_Network
//
//  Created by Alberto Pasca on 18/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "Network_01.h"

@implementation Network_01
@synthesize responseData;

- (void) GetUrl {
  responseData = [[NSMutableData alloc] initWithLength:0];
  
  NSURL *url = [NSURL URLWithString:@"http://www.cutaway.it"];
  NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
  [request setHTTPMethod:@"GET"];
  [[NSURLConnection alloc] initWithRequest:request delegate:self];

  NSLog(@"ASYNCRONOUS... START!");
}

- (void) connectionDidFinishLoading:(NSURLConnection *)connection {
  [connection release];
  
  NSString* responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
  NSLog(@"HTML %@", responseString);
  [responseString release];
  
  NSLog(@"ASYNCRONOUS... DONE!");
}

- (void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
  [responseData setLength:0];
}

- (void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
  [responseData appendData:data];
}

- (void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
  
}

@end

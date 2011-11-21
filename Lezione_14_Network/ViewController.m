//
//  ViewController.m
//  Lezione_14_Network
//
//  Created by Alberto Pasca on 18/11/11.
//  Copyright (c) 2011 Cutaway SRL. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];

  //
  // connessione asyncrona con Foundation
  //
  Network_01 *net1 = [[Network_01 alloc] init];
  [net1 GetUrl];
  [net1 release];

  //
  // connessione sincrona con ASIHTTP
  //
  Network_02 *net2 = [[Network_02 alloc] init];
  [net2 GetUrlSyncronous];
  [net2 release];
  
  //
  // connessione asyncrona con ASIHTTP
  //
  net3 = [[Network_02 alloc] init];
  net3.Delegate = self;
  [net3 GetUrlAsyncronous];

}

- (void) AsyncDone {
  [net3 release];
}

- (void)viewDidUnload
{
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated
{
  [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  // Return YES for supported orientations
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end

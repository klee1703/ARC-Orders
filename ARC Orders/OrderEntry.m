//
//  OrderEntry.m
//  ARC Orders
//
//  Created by Keith Lee on 11/25/12.
//  Copyright (c) 2012 Keith Lee. All rights reserved.
//

#import "OrderEntry.h"

@implementation OrderEntry

- (id) initWithId:(NSString *)oid name:(NSString *)order;
{
  if ((self = [super init]))
  {
    NSLog(@"Initializing OrderEntry object");
    _orderId = oid;
    _item = [[OrderItem alloc] initWithName:order];
    shippingAddress = [[Address alloc] init];
  }
  
  return self;
}

- (void)dealloc
{
  NSLog(@"Deallocating OrderEntry object with ID %@",
        self.orderId);
}

@end

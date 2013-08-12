//
//  main.m
//  ARC Orders
//
//  Created by Keith Lee on 11/25/12.
//  Copyright (c) 2012 Keith Lee. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without modification, are
//  permitted provided that the following conditions are met:
//
//   1. Redistributions of source code must retain the above copyright notice, this list of
//      conditions and the following disclaimer.
//
//   2. Redistributions in binary form must reproduce the above copyright notice, this list
//      of conditions and the following disclaimer in the documentation and/or other materials
//      provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY Keith Lee ''AS IS'' AND ANY EXPRESS OR IMPLIED
//  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
//  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Keith Lee OR
//  CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
//  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
//  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
//  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//  The views and conclusions contained in the software and documentation are those of the
//  authors and should not be interpreted as representing official policies, either expressed
//  or implied, of Keith Lee.
//

#import <Foundation/Foundation.h>
#import "OrderEntry.h"

int main(int argc, const char * argv[])
{

  @autoreleasepool
  {
    // Create an OrderEntry object
    OrderEntry *entry1 = [[OrderEntry alloc] initWithId:@"A-1"
                                                   name:@"2 Hot dogs"];
    NSLog(@"Order 1, ID = %@, item: %@", entry1.orderId, entry1.item.name);
    
    // Create another OrderEntry object
    OrderEntry *entry2 = [[OrderEntry alloc] initWithId:@"A-2"
                                                   name:@"1 Cheeseburger"];
    NSLog(@"Order 2, ID = %@, item: %@", entry2.orderId,entry2.item.name);

    // Add the order entries to a collection
    NSArray *entries = [[NSArray alloc] initWithObjects:entry1, entry2, nil];
    NSLog(@"Number of order entries = %li", [entries count]);
    
    // Set OrderEntry object to nil, ARC sends a release message to the object!
    NSLog(@"Setting entry2 variable to nil");
    entry2 = nil;
    
    // Set collection to nil, ARC sends a release message to all objects in collection
    NSLog(@"Setting entries collection variable to nil");
    entries = nil;
    
    // Set OrderEntry object to nil, ARC sends a release message to the object!
    NSLog(@"Setting entry1 variable to nil");
    entry1 = nil;
    
    // Exit autoreleasepool block
    NSLog(@"Leaving autoreleasepool block");
  }
  return 0;
}


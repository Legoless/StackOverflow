//
//  ViewController.m
//  Test
//
//  Created by Dal Rupnik on 31/03/14.
//  Copyright (c) 2014 arvystate.net. All rights reserved.
//

#import "Stuff.h"

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    Stuff* myStuff1 = [[Stuff alloc] init];
    myStuff1.myFirstString = @"Testy";
    myStuff1.mySecondString = @"Some testing";
    
    Stuff* myStuff2 = [[Stuff alloc] init];
    myStuff2.myFirstString = @"Testy aa";
    myStuff2.mySecondString = @"Some testing s";
    
    Stuff* myStuff3 = [[Stuff alloc] init];
    myStuff3.myFirstString = @"Testy bb";
    myStuff3.mySecondString = @"Some testing cc";
    
    Stuff* myStuff4 = [[Stuff alloc] init];
    myStuff4.myFirstString = @"Testy";
    myStuff4.mySecondString = @"Some testing cc";
    
    Stuff* myStuff5 = [[Stuff alloc] init];
    myStuff5.myFirstString = @"Testy";
    myStuff5.mySecondString = @"Some testing aa";
    
    Stuff* myStuff6 = [[Stuff alloc] init];
    myStuff6.myFirstString = @"Testy";
    myStuff6.mySecondString = @"Some testing";
    
    NSArray* array = @[ myStuff1, myStuff2, myStuff3, myStuff4, myStuff5, myStuff6 ];
    
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF.myFirstString contains[c] %@ OR SELF.mySecondString contains[c] %@", @"aa", @"aa"];
    
    array = [array filteredArrayUsingPredicate:predicate];

    NSLog(@"%@", array);
}

@end

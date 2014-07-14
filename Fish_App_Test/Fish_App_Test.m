//
//  Fish_App_Test.m
//  Fish_App_Test
//
//  Created by Fish Yu on 14-7-14.
//  Copyright (c) 2014年 yhl10000@gmail.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#define HC_SHORTHAND
#import<OCHamcrest/OCHamcrest.h>
#import<OCMock/OCMock.h>

@interface Fish_App_Test : XCTestCase
{
    ViewController * testObj;
}
@end

@implementation Fish_App_Test

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    UIStoryboard *userStoryBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    testObj = [userStoryBoard instantiateViewControllerWithIdentifier:@"ViewController"];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    testObj = nil;
    
    
    [super tearDown];
}

- (void)testAuthorName
{
    NSString * authorName = [testObj theNameOfAuthor];
    
    assertThat(authorName, is(  notNilValue()));
    assertThat(authorName, equalTo(@"fish"));
}

@end

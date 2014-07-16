//
//  FishTests.m
//  FishTests
//
//  Created by Fish Yu on 14-7-9.
//  Copyright (c) 2014年 yhl10000@gmail.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#define HC_SHORTHAND
#import<OCHamcrest/OCHamcrest.h>
#import<OCMock/OCMock.h>

@interface FishTests : XCTestCase

@end

@implementation FishTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testlowercaseString
{
    
    id mockObject = [OCMockObject mockForClass:NSString.class];
    [[[mockObject stub] andReturn:@"fish"] lowercaseString];
    
    NSString * returnValue = [mockObject lowercaseString];
    assertThat(returnValue, equalTo(@"fish"));
    
   // XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}
/*
- (void)testExample2
{
    
    id mockObject = [OCMockObject mockForClass:NSString.class];
    [[[mockObject stub] andReturn:@"fish"] lowercaseString];
    
    NSString * returnValue = [mockObject lowercaseString];
    assertThat(returnValue, equalTo(@"vivid"));
    
    // XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}
*/
@end

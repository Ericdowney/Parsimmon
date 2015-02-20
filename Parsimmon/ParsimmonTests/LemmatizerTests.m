//
//  LemmatizerTests.m
//  Parsimmon
//
//  Created by Hector Zarate on 10/24/13.
//
//

#import <XCTest/XCTest.h>
#import "ParsimmonTests-Swift.h"

@interface LemmatizerTests : XCTestCase

@end

@implementation LemmatizerTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testLemmatizeWordsInText
{
    NSString *testString = @"Diane, I'm holding in my hand a small box of chocolate bunnies.";
    
    NSArray *expectedOutput = @[@"diane",
                                @"i",
                                @"hold",
                                @"in",
                                @"my",
                                @"hand",
                                @"a",
                                @"small",
                                @"box",
                                @"of",
                                @"chocolate",
                                @"bunny"];
    
    Lemmatizer *lemmatizer = [[Lemmatizer alloc] init];
    
    NSArray *lemmatizedTokenStrings = [lemmatizer lemmatizeWordsInText:testString];
    
    XCTAssertEqualObjects(expectedOutput, lemmatizedTokenStrings, @"Failed to lematize words in text");
}

@end

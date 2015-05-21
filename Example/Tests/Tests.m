//
//  TLJsonFactoryTests.m
//  TLJsonFactoryTests
//
//  Created by Thiago Lioy on 05/20/2015.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//

#import <TLJsonFactory.h>

SpecBegin(InitialSpecs)

describe(@"TLJsonFactory", ^{

    describe(@"loading from array json", ^{
        it(@"should be able to load json and convert to array", ^{
            NSArray *json = [TLJsonFactory tl_jsonArrayFromFile:@"addresses"];
            expect(json).notTo.beNil();
            expect(json).notTo.beEmpty();
        });
        
        it(@"should have the expected zipcode for json's first object", ^{
            NSArray *json = [TLJsonFactory tl_jsonArrayFromFile:@"addresses"];
            NSDictionary *dc = json.firstObject;
            NSString *zipcode = [dc objectForKey:@"zipcode"];
            expect(zipcode).to.equal(@"12345-678");
        });
    });
    
    describe(@"loading from dictionary json", ^{
        it(@"should be able to load json and convert to dictionary", ^{
            NSDictionary *json = [TLJsonFactory tl_jsonDictFromFile:@"address"];
            expect(json).notTo.beNil();
            expect(json).notTo.beEmpty();
        });
        
        it(@"should have the expected zipcode for json's object", ^{
            NSDictionary *json = [TLJsonFactory tl_jsonDictFromFile:@"address"];
            NSString *zipcode = [json objectForKey:@"zipcode"];
            expect(zipcode).to.equal(@"12345-678");
        });
    });
});

SpecEnd

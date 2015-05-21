# TLJsonFactory

[![Twitter: @tplioy](https://img.shields.io/badge/contact-@tplioy-blue.svg?style=flat)](https://twitter.com/tplioy)
[![CI Status](http://img.shields.io/travis/thiagolioy/TLJsonFactory.svg?style=flat)](https://travis-ci.org/thiagolioy/TLJsonFactory)
[![Version](https://img.shields.io/cocoapods/v/TLJsonFactory.svg?style=flat)](http://cocoapods.org/pods/TLJsonFactory)
[![License](https://img.shields.io/cocoapods/l/TLJsonFactory.svg?style=flat)](http://cocoapods.org/pods/TLJsonFactory)
[![Platform](https://img.shields.io/cocoapods/p/TLJsonFactory.svg?style=flat)](http://cocoapods.org/pods/TLJsonFactory)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TLJsonFactory is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TLJsonFactory"
```

## Usage

```ruby
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
```

## Author

Thiago Lioy, lioyufrj@gmail.com

## License

TLJsonFactory is available under the MIT license. See the LICENSE file for more info.

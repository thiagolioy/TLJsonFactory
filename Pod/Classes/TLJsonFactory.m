//
//  TLJsonFactory.m
//  Pods
//
//  Created by Thiago Lioy on 5/21/15.
//
//

#import "TLJsonFactory.h"

@implementation TLJsonFactory
+(NSDictionary *)tl_jsonDictFromFile:(NSString*)fileName{
    NSString * filePath = [[NSBundle bundleForClass:[self class] ] pathForResource:fileName ofType:@"json"];
    NSDictionary  *response = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:kNilOptions error:nil];
    return response;
}

+(NSArray *)tl_jsonArrayFromFile:(NSString*)fileName{
    NSString * filePath = [[NSBundle bundleForClass:[self class] ] pathForResource:fileName ofType:@"json"];
    NSArray  *response = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:kNilOptions error:nil];
    return response;
}
@end

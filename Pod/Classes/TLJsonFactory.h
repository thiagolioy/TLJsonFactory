//
//  TLJsonFactory.h
//  Pods
//
//  Created by Thiago Lioy on 5/21/15.
//
//

#import <Foundation/Foundation.h>

@interface TLJsonFactory : NSObject
+(NSDictionary *)tl_jsonDictFromFile:(NSString*)fileName;
+(NSArray *)tl_jsonArrayFromFile:(NSString*)fileName;
@end

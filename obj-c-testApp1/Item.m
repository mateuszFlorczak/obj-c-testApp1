//
//  Item.m
//  obj-c-testApp1
//
//  Created by Patryk Lawicki on 16/07/15.
//  Copyright (c) 2015 Kainos Software Ltd. All rights reserved.
//

#import "Item.h"

@implementation Item

- (instancetype)initWithJSONString:(NSString *)JSONString {
    self = [super init];
    
    NSError *parseError = nil;
    NSData *JSONData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *JSONArray = [NSJSONSerialization JSONObjectWithData:JSONData options:0 error:&parseError];
    JSONArray = [JSONArray mutableArrayValueForKey:@"ads"][0];
    
    NSNumberFormatter *decimalFormater = [[NSNumberFormatter alloc] init];
    decimalFormater.numberStyle = NSNumberFormatterDecimalStyle;
    
    if (!parseError && JSONArray) {
        self.id = [decimalFormater numberFromString:[JSONArray valueForKey:@"id"]];
        self.title = [JSONArray valueForKey:@"title"];
        self.desc = [JSONArray valueForKey:@"description"];
        self.url = [[NSURL alloc] initWithString:[JSONArray valueForKey:@"url"]];
        self.mapLon = [decimalFormater numberFromString:[JSONArray valueForKey:@"map_lon"]];
        self.mapLat = [decimalFormater numberFromString:[JSONArray valueForKey:@"map_lat"]];
    }
    
    return self;
}

@end
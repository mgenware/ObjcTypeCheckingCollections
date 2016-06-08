//
//  NSCoder+TypeChecking.m
//
//  Created by Mgen on 14/12/10.
//  Copyright (c) 2014 Mgen. All rights reserved.
//  https://github.com/mgenware/ObjcTypeCheckingCollections
//

#import "NSCoder+TypeChecking.h"

@implementation NSCoder (TypeChecking)

- (id)objectForKey:(id)key withType:(Class)type {
    if(!key) {
        return nil;
    }
    id ret = [self decodeObjectForKey:key];
    if([ret isKindOfClass:type]) {
        return ret;
    }
    return nil;
}

- (NSNumber *)numberObjectForKey:(id)key {
    return (NSNumber*)[self objectForKey:key withType:[NSNumber class]];
}

- (NSDictionary *)dictionaryObjectForKey:(id)key {
    return (NSDictionary*)[self objectForKey:key withType:[NSDictionary class]];
}

- (NSArray *)arrayObjectForKey:(id)key {
    return (NSArray*)[self objectForKey:key withType:[NSArray class]];
}

- (NSString *)stringObjectForKey:(id)key {
    return (NSString*)[self objectForKey:key withType:[NSString class]];
}

- (int)intObjectForKey:(id)key {
    return [[self numberObjectForKey:key] intValue];
}

- (double)doubleObjectForKey:(id)key {
    return [[self numberObjectForKey:key] doubleValue];
}

- (long long)longlongObjectForKey:(id)key {
    return [[self numberObjectForKey:key] longLongValue];
}

- (BOOL)encodeObjectEx:(id)value forKey:(NSString *)key {
    if (!value || !key) {
        return NO;
    }
    [self encodeObject:value forKey:key];
    return YES;
}

@end

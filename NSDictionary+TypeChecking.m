//
//  NSDictionary+TypeChecking.m
//
//  Created by Mgen on 14/12/10.
//  Copyright (c) 2014 Mgen. All rights reserved.
//  https://github.com/mgenware/ObjcTypeCheckingCollections
//

#import "NSDictionary+TypeChecking.h"

@implementation NSDictionary (TypeChecking)

- (id)objectForKey:(id)key withType:(Class)type {
    if(!key) {
        return nil;
    }
    id ret = [self objectForKey:key];
    if([ret isKindOfClass:type]) {
        return ret;
    }
    return nil;
}

- (NSNumber *)numberObjectForKey:(id<NSCopying>)key {
    return (NSNumber*)[self objectForKey:key withType:[NSNumber class]];
}

- (NSDictionary *)dictionaryObjectForKey:(id<NSCopying>)key {
    return (NSDictionary*)[self objectForKey:key withType:[NSDictionary class]];
}

- (NSArray *)arrayObjectForKey:(id<NSCopying>)key {
    return (NSArray*)[self objectForKey:key withType:[NSArray class]];
}

- (NSString *)stringObjectForKey:(id<NSCopying>)key {
    return (NSString*)[self objectForKey:key withType:[NSString class]];
}

- (int)intObjectForKey:(id<NSCopying>)key {
    return [[self numberObjectForKey:key] intValue];
}

- (double)doubleObjectForKey:(id<NSCopying>)key {
    return [[self numberObjectForKey:key] doubleValue];
}

- (long long)longlongObjectForKey:(id<NSCopying>)key {
    return [[self numberObjectForKey:key] longLongValue];
}

@end

@implementation NSMutableDictionary (TypeChecking)

- (BOOL)setObjectEx:(id)value forKey:(id<NSCopying>)key {
    if (!value || !key) {
        return NO;
    }
    NSMutableDictionary *mdic = (NSMutableDictionary*)self;
    [mdic setObject:value forKey:key];
    return YES;
}

@end

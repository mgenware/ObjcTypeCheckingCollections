//
//  NSDictionary+TypeChecking.h
//
//  Created by Mgen on 14/12/10.
//  Copyright (c) 2014 Mgen. All rights reserved.
//  https://github.com/mgenware/ObjcTypeCheckingCollections
//

#import <Foundation/Foundation.h>

@interface NSDictionary (TypeChecking)

/**
 * Returns a value associated with a given key, if the value is not a instance of given type, returns nil.
 */
- (id)objectForKey:(id)key withType:(Class)type;

/**
 * Returns an NSNumber object associated with a given key, otherwise nil.
 */
- (NSNumber *)numberObjectForKey:(id<NSCopying>)key;

/**
 * Returns an NSDictionary object associated with a given key, otherwise nil.
 */
- (NSDictionary *)dictionaryObjectForKey:(id<NSCopying>)key;

/**
 * Returns an NSArray object associated with a given key, otherwise nil.
 */
- (NSArray *)arrayObjectForKey:(id<NSCopying>)key;

/**
 * Returns an NSString object associated with a given key, otherwise nil.
 */
- (NSString *)stringObjectForKey:(id<NSCopying>)key;

/**
 * Returns an int value associated with a given key, otherwise 0.
 */
- (int)intObjectForKey:(id<NSCopying>)key;

/**
 * Returns a double value associated with a given key, otherwise 0.0.
 */
- (double)doubleObjectForKey:(id<NSCopying>)key;

/**
 * Returns a long long value associated with a given key, otherwise 0.
 */
- (long long)longlongObjectForKey:(id<NSCopying>)key;

@end

@interface NSMutableDictionary (TypeChecking)

/**
 * Adds a given key-value pair to the dictionary only if value and key are not nil.
 */
- (BOOL)setObjectEx:(id)value forKey:(id<NSCopying>)key;

@end

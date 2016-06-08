# ObjcTypeCheckingCollections
Type checking collections for Objective-C.

## NSDictionary+TypeChecking.h
```objective-c
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
```

## NSCoder+TypeChecking.h
```objective-c
@interface NSCoder (TypeChecking)

/**
 * Returns a value associated with a given key, if the value is not a instance of given type, returns nil.
 */
- (id)objectForKey:(id)key withType:(Class)type;

/**
 * Returns an NSNumber object associated with a given key, otherwise nil.
 */
- (NSNumber *)numberObjectForKey:(NSString *)key;

/**
 * Returns an NSDictionary object associated with a given key, otherwise nil.
 */
- (NSDictionary *)dictionaryObjectForKey:(NSString *)key;

/**
 * Returns an NSArray object associated with a given key, otherwise nil.
 */
- (NSArray *)arrayObjectForKey:(NSString *)key;

/**
 * Returns an NSString object associated with a given key, otherwise nil.
 */
- (NSString *)stringObjectForKey:(NSString *)key;

/**
 * Returns an int value associated with a given key, otherwise 0.
 */
- (int)intObjectForKey:(NSString *)key;

/**
 * Returns a double value associated with a given key, otherwise 0.0.
 */
- (double)doubleObjectForKey:(NSString *)key;

/**
 * Returns a long long value associated with a given key, otherwise 0.
 */
- (long long)longlongObjectForKey:(NSString *)key;

/**
 * Encodes a given key-value pair to the dictionary only if value and key are not nil.
 */
- (BOOL)encodeObjectEx:(id)value forKey:(NSString *)key;

@end
```

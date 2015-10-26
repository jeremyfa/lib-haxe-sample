//
// HaxeSampleObjcInterface.h
//
// This file was generated from Haxe. Don't edit it's contents.
//

#import <Foundation/Foundation.h>

// Haxe object base class
@interface HXObject : NSObject
@end

// Sample
@interface JFSample : HXObject

- (instancetype)init;

- (void)doSomething:(void (^)(NSInteger, NSString *))done;

@end


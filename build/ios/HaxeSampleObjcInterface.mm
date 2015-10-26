//
// HaxeSampleObjcInterface.mm
//
// This file was generated from Haxe. Don't edit it's contents.
//

#include <hxcpp.h>
#include <hx/CFFI.h>
#include <string>
#include <sstream>
#include <iostream>

#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_sample_Sample
#include <sample/Sample.h>
#endif
#ifndef INCLUDED_hx2objc_IDHolder
#include <hx2objc/IDHolder.h>
#endif

#import "HaxeSampleObjcInterface.h"

// Haxe object base class
@interface HXObject ()
@property AutoGCRoot *haxeInstance;
- (instancetype)initWithHaxeInstance:(AutoGCRoot *)haxeInstance;
@end

// Haxe object base class
@interface HXObjcRef : NSObject
+ (id)objectAtIndex:(NSInteger)index;
+ (NSInteger)retainObject:(id)objcObject;
+ (void)releaseObjectAtIndex:(NSInteger)objectIndex;
@end

// Sample
@implementation JFSample

- (instancetype)init {

    self = [super init];
    if (self) {
        // new sample.Sample()
        self.haxeInstance = new AutoGCRoot((value)::sample::Sample_obj::__new().GetPtr());
    }
    return self;
}

- (void)doSomething:(void (^)(NSInteger, NSString *))done {

    // hx_done ( void (^)(NSInteger, NSString *) => Dynamic )
    int tmp_index_done = (int)[HXObjcRef retainObject:[done copy]];
    Array< ::Dynamic > tmp_holder_done = Array_obj< ::Dynamic >::__new().Add(::hx2objc::IDHolder_obj::__new(tmp_index_done));
    HX_BEGIN_LOCAL_FUNC_S1(hx::LocalFunc, _Function_1_done, Array< ::Dynamic >, tmp_holder_done)
    int __ArgCount() const { return 2; }
    Void run(Int hx_arg0, ::String hx_arg1) {
        {
            // arg0 ( NSInteger <= Int )
            NSInteger arg0 = (NSInteger)(int)hx_arg0;
            // arg1 ( NSString * <= ::String )
            NSString *arg1 = [[NSString alloc] initWithUTF8String:hx_arg1.__s];

            // call done(NSInteger, NSString *)
            id fn = [HXObjcRef objectAtIndex:(NSInteger)(int)tmp_holder_done->__get((int)0).StaticCast< ::hx2objc::IDHolder >()->instance_id];
            ((void (^)(NSInteger, NSString *))fn)(arg0, arg1);
        }
        return null();
    }
    HX_END_LOCAL_FUNC2((void))
    Dynamic hx_done = Dynamic(new _Function_1_done(tmp_holder_done));

    // call do_something(done)
    ((::sample::Sample_obj *)self.haxeInstance->get())->do_something(hx_done);
}

@end


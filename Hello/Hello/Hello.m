//
//  Hello.m
//  Hello
//
//  Created by Carl Baltrunas on 2/15/23.
//

#import "Hello.h"

@interface Hello ()

@end

@implementation Hello

static NSString *mySub;
static NSString *myUid;

+ (void)initializeWithSubscription:(NSString*)subscription uid:(NSString*)uid {
    mySub = subscription;
    myUid = uid;
    NSLog(@"Initialize: sub( %@ ), uid( %@ )", subscription, uid);
}

+ (void)text:(NSString *)string {
    NSLog(@"Text in Objc: %@", string);
}


@end

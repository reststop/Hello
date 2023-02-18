//
//  Hello.h
//  Hello
//
//  Created by Carl Baltrunas on 2/15/23.
//

#import <Foundation/Foundation.h>

//! Project version number for Hello.
FOUNDATION_EXPORT double HelloVersionNumber;

//! Project version string for Hello.
FOUNDATION_EXPORT const unsigned char HelloVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <Hello/PublicHeader.h>


@interface Hello : NSObject

+ (void)initializeWithSubscription:(NSString*)subscription uid:(NSString*)uid;
+ (void)text:(NSString *)string;

@end


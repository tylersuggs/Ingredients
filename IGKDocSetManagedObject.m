//
//  IGKDocSetManagedObject.m
//  Ingredients
//
//  Created by Alex Gordon on 04/03/2010.
//  Copyright 2010 Fileability. All rights reserved.
//

#import "IGKDocSetManagedObject.h"

@implementation IGKDocSetManagedObject

- (NSString *)localizedUserInterfaceName
{
	/* The name should be
		Platform [Version]
	   eg
		iPhone 3.2
		Mac 10.6
	 */
	
	//*** Platform ***
	
	NSString *platformFamily = [self valueForKey:@"platformFamily"];
	NSString *platform = nil;
	if ([platformFamily isEqual:@"macosx"])
		platform = @"Mac ";
	else if ([platformFamily isEqual:@"iphoneos"])
		platform = @"iPhone ";
	else if (![platformFamily length])
		platform = @"Unknown ";
	else
		platform = [platformFamily stringByAppendingString:@" "];
	
	
	//*** Version ***
	
	NSString *version = [self valueForKey:@"platformVersion"];
	if (version == nil)
		version = @"";
	
	
	return [platform stringByAppendingString:version];
}

@end
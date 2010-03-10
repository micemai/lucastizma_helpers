//
//  NSString+STAdditions.m
//
//  Copyright 2010 Michael Shannon Potter
// 
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
// 
//      http://www.apache.org/licenses/LICENSE-2.0
// 
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "NSString+STAdditions.h"

@implementation NSString ( STAdditions )

#pragma mark -
#pragma mark NSString ( STAdditions ) Category Methods

// dashedString
// 
// This method replaces all spaces in a string with dashes (-) and lowercases any uppercase characters.

- ( NSString * )dashedString
{
	NSString * dasherizedString = [ [ self lowercaseString ] stringByReplacingOccurrencesOfString:@" " withString:@"-" ];
	
	return dasherizedString;
}

// isNotEqualToString:
//
// This method is the inverse of the standard NSString method "isEqualToString:".

- ( BOOL )isNotEqualToString:( NSString * )string
{
	return ( ! [ self isEqualToString:string ] );
}

- ( BOOL )isEmpty
{
	BOOL empty = NO;

	if ( [ self isEqualToString:@"" ] || [ self isEqualToString:@"<null>" ] || [ self isEqualToString:@"(null)" ] )
	{
		empty = YES;
	}
	
	return empty;
}

- ( BOOL )isNotEmpty
{
	return ( ! [ self isEmpty ] );
}

@end
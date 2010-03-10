//
//  NSBundle+STAdditions.m
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

#import "NSBundle+STAdditions.h"

@implementation NSBundle ( STAdditions )

#pragma mark -
#pragma mark NSBundle ( STAdditions ) Category Methods

- ( BOOL )resourceExistsWithFileName:( NSString * )fileName
{
	BOOL resourceExists = NO;
	
	NSString * fileNameExtension = [ fileName pathExtension ];
    NSString * fileNameWithoutExtension = [ fileName stringByDeletingPathExtension ];
	
	if ( [ [ NSBundle mainBundle ] pathForResource:fileNameWithoutExtension ofType:fileNameExtension ] != nil ) 
	{
		resourceExists = YES;
	}
	
	return resourceExists;
}

@end
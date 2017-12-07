//
//  LocationFenceAnnotation.m
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

// Contains and returns location coordinates as well as address title and subtitle


#import "LocationAnnotation.h"

@interface LocationAnnotation()

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate;

// variable that contains latitude and logtitude information

@end

@implementation LocationAnnotation

// this class will take the values of the location coordinates (latitude and longtitude) as well as location address names and return a single variable with containing this information

-(id)initWithCoordiate:(CLLocationCoordinate2D)coordinate title:(NSString*)title subtitle:(NSString*)subtitle
{
    self = [super init];
    if (self)
    {
        _coordinate = coordinate;
        _title = [title copy];
        _subtitle = [subtitle copy];
    }
    
    return self;
}


@end

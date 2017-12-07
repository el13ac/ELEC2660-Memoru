//
//  LocationFenceAnnotation.m
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

// Collects and returns location coordinates as well as address
// 


#import "LocationFenceAnnotation.h"

@interface LocationFenceAnnotation()

@property (nonatomic, readwrite) CLLocationCoordinate2D coordinate; // finds latitude and logtitude of location

@end

@implementation LocationFenceAnnotation // this class will take the values of the location coordinate and location address name information and return them in the format seen below

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

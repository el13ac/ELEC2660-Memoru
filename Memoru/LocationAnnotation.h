//
//  LocationFenceAnnotation.h
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//


// this class contains annotation information for map pin drops


#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>
#import <MapKit/MapKit.h>

@interface LocationAnnotation : NSObject <MKAnnotation>

// class is an NSObject

-(id)initWithCoordiate:(CLLocationCoordinate2D)coordinate title:(NSString*)title subtitle:(NSString*)subtitle;

@property (nonatomic, copy) NSString *title;

// title of Location set as NSString

@property (nonatomic, copy) NSString *subtitle;

// subtitle of address set as NSString

@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// two distinct sets of data formatted as latitude followed by logtitude


@end

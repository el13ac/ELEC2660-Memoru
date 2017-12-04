//
//  LocationFenceAnnotation.h
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

// Use of the Notifications framework was abandonded due to the uncertainty of proper operation without a paid apple developer license

// reminders will instead use the Calender EvenKit framework instead

// this class finds annotation information for map pin drops


#import <Foundation/Foundation.h>
#import <EventKit/EventKit.h>
#import <MapKit/MapKit.h>

@interface LocationFenceAnnotation : NSObject <MKAnnotation>

-(instancetype)initWithCoordiate:(CLLocationCoordinate2D)coordinate title:(NSString*)title subtitle:(NSString*)subtitle;

@property (nonatomic, copy) NSString *title; // title of Location set as NSString
@property (nonatomic, copy) NSString *subtitle; // subtitle of address set as NSString
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate; // two distinct sets of data formatted as latitude followed by logtitude

@property (nonatomic, assign) BOOL locationInfoStored; // returns yes if true

@property (nonatomic, assign) EKAlarmProximity  proximity; // can detect when mobile device enters or exits a geo-fenced location

@property (nonatomic, strong) EKReminder *reminder; // event reminder

@end

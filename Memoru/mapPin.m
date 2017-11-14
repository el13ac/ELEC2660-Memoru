//
//  mapPin.m
//  Memoru
//
//  Created by Andrew Child on 13/11/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface mapPin : NSObject<MKAnnotation>{

    NSString *title;
    NSString *subtitle;
    CLLocationCoordinate2D coordinate;
    

}

@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *subtitle;
@property(nonatomic, assign)CLLocationCoordinate2D coordinate;


@end

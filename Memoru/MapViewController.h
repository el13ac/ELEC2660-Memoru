//
//  MapViewController.h
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationFenceAnnotation.h"





@interface MapViewController : UIViewController <MKMapViewDelegate>

@property (strong , nonatomic)NSString *pinTintColour;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) LocationFenceAnnotation *annotationForReminder;
@property (strong, nonatomic) CLGeocoder *annotationGeocoder;



@property(strong, nonatomic) UIColor *pinTintColor;

- (IBAction)longPress:(UILongPressGestureRecognizer *)pressLong;





@end

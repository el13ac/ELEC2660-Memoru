//
//  MapViewController.h
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "LocationAnnotation.h"





@interface MapViewController : UIViewController <MKMapViewDelegate>


@property (strong, nonatomic) LocationAnnotation *annotationForReminder;
@property(strong, nonatomic) UIColor *pinTintColor;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


- (IBAction)longPress:(UILongPressGestureRecognizer *)pressLong;





@end

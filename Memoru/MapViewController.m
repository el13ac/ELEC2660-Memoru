//
//  MapViewController.m
//  Memoru
//
//  Created by Andrew Child on 03/12/2017.
//  Copyright © 2017 Leeds University. All rights reserved.
//

#import "MapViewController.h"
#import "LocationFenceAnnotation.h"
#import <AddressBookUI/AddressBookUI.h>



@interface MapViewController ()

@end

@implementation MapViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


#pragma mark - pin Colours



#pragma mark - initial map view pin

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    _mapView.centerCoordinate = userLocation.location.coordinate;
    
    // uses the users location as the center point for map upon loading
    
    [_mapView setRegion:MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate,800,800) animated:YES];
    
    // zooms in on users location upon loading
    
    MKPointAnnotation *initialMessage = [[MKPointAnnotation alloc]init];
    
    initialMessage.coordinate = userLocation.location.coordinate;
    
    //sets pin coordinate as users location
    
    initialMessage.title =@"You Are Here";
    
    //title for pin
    
    initialMessage.subtitle = @"long-press on your desired location to begin";
    
    //subtitle for pin
    
    [_mapView addAnnotation:initialMessage];
    
    // places a pin drop on view at users location
}




#pragma mark - long press detection and add annotation

-(IBAction)longPress:(UILongPressGestureRecognizer*)pressLong
{
    if (pressLong.state == UIGestureRecognizerStateBegan)
        
        // true if long press gesture is detected
    {
        CLLocationCoordinate2D coordinate = [self.mapView convertPoint:[pressLong locationInView:self.mapView] toCoordinateFromView:self.mapView];
        // convertPoint and toCoordinateFromView can find the latitude and longtitude coordinates from the pressed map location
        
        if (self.annotationForReminder)
        {
            [self.mapView removeAnnotation:self.annotationForReminder];
            
            // removes any previous pins on display
            
        }
        self.annotationForReminder = [[LocationFenceAnnotation alloc] initWithCoordiate:coordinate
                                      
                title:NSLocalizedString(@"Add Reminder", @"Add Reminder ")
                subtitle:nil];
        
        // creates new pin annotation with coordinates
        
        [_mapView addAnnotation:_annotationForReminder];
        
        // places new pin on screen
    }
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end

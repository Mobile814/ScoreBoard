//
//  SptcsViewController_iPad.m
//  Scoreboard
//
//  Created by SPT on 10/11/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "SptcsViewController_iPad.h"
#import "VollyballMainViewController_iPad.h"

@implementation SptcsViewController_iPad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self performSelector:@selector(finishedFading) withObject:Nil afterDelay:1.06];

   // [self performSelector:@selector(nextButtonClick:) withObject:Nil afterDelay:1.7];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations

    return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
    
    
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
#pragma markk Button Click Methods

-(IBAction)nextButtonClick:(id)sender
{
    [self fadeScreen];
    VollyballMainViewController_iPad *homeViewController=[[VollyballMainViewController_iPad alloc]init];
    [self.navigationController pushViewController:homeViewController animated:YES];
    [homeViewController release];
    
    // WithNibName:@"VollyballMainViewController" bundle:nil];
    
    // [self.view addSubview:homeViewController.view];
    homeViewController.view.frame = CGRectMake(160,160,0,0);
    //    [UIView beginAnimations:@"fade in a new image from another" context:nil];
    //    [UIView setAnimationDuration:4];
    //    [UIView setAnimationCurve:UIViewAnimationOptionTransitionNone];
    //    [homeViewController viewWillAppear:YES];
    //    [self viewWillAppear:YES];
    //    homeViewController.view.frame = CGRectMake(0, 0, 320, 480);
    //    [self viewDidDisappear:YES];
    //    [homeViewController viewDidAppear:YES];
    //    [UIView commitAnimations];
    //    [self.navigationController pushViewController:homeViewController animated:NO];
    //    [homeViewController release];
    
    //    
}
- (void)fadeScreen
{
    [UIView beginAnimations:nil context:nil]; // begins animation block
    [UIView setAnimationDuration:0.75];        // sets animation duration
    [UIView setAnimationDelegate:self];        // sets delegate for this block
    // [UIView setAnimationDidStopSelector:@selector(finishedFading)];   // calls the finishedFading method when the animation is done (or done fading out)	
    self.view.alpha = 0.2;       // Fades the alpha channel of this view to \"0.0\" over the animationDuration of \"0.75\" seconds
    [UIView commitAnimations]; 
    
    // commits the animation block.  This Block is done.
    
    [self performSelector:@selector(finishedFading) withObject:Nil afterDelay:1.6];
    
}


- (void)finishedFading
{
    NSLog(@"homeViewController");
    VollyballMainViewController_iPad *homeViewController=[[VollyballMainViewController_iPad alloc]init];
    
    //WithNibName:@"VollyballMainViewController" bundle:nil];
    
    
    //    [UIView beginAnimations:nil context:nil]; // begins animation block
    //    [UIView setAnimationDuration:0.75];        // sets animation duration
    //    homeViewController.view.alpha = 1.0;   // fades the view to 1.0 alpha over 0.75 seconds
    //    [UIView commitAnimations];   // commits the animation block.  This Block is done.
    [self.navigationController pushViewController:homeViewController animated:NO];
}
@end

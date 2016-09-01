//
//  BasketballSettingsViewController.h
//  Scoreboard
//
//  Created by Kata on 10/05/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Facebook.h"
#import "FBLoginDialog.h"
#import "FBDialog.h"


#import "VollyballMainViewController.h"

@interface BasketballSettingsViewController : UIViewController<FBDialogDelegate,FBSessionDelegate,UIPickerViewDelegate,UIPickerViewDataSource> {

	
    UIImageView *ThemeTrailsImageView;
    int ThemeColour;
    UIView *pickerbackgroundview;
    
    UIPickerView *timePicker;
    
	NSMutableArray *minutesArray;
	NSMutableArray *secondsArray;
	UILabel *minutesLable;
	UILabel *secondsLable;
    UILabel *setTimerLable;
    UIButton *fbButton;
    UIButton *tutorialButton;
    UIButton *homeButton;
    UINavigationController *navigationController;
    
	NSString *homeName;
	NSString *guestName;
	int homeScore;
	int guestScore;
}
@property(nonatomic,assign)int homeScore;
@property(nonatomic,assign)int guestScore;
@property(nonatomic,retain)NSString *homeName;
@property(nonatomic,retain)NSString *guestName;
@property(nonatomic,retain) UILabel *minutesLable;
@property(nonatomic,retain) UILabel *secondsLable;
@property(nonatomic,retain)NSMutableArray *minutesArray;
@property(nonatomic,retain)NSMutableArray *secondsArray;
@property(nonatomic,retain) UIPickerView *timePicker;
@property(nonatomic,retain) UILabel *setTimerLable;
@property(nonatomic,retain) UIButton *fbButton;
//@property(nonatomic,retain) UINavigationController *navigationController;
@property(nonatomic,retain)IBOutlet UIButton *tutorialButton;
@property(nonatomic,retain)IBOutlet UILabel *aLable;
@property(nonatomic,retain)IBOutlet  UIButton *homeButton;

@property (nonatomic, retain) VollyballMainViewController *m_pVolleyViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil home:(NSString *)hName guest:(NSString *)gName;
-(IBAction)saveButtonClick:(id)sender;
-(IBAction)facebookButtonClick;
-(IBAction)tutorialButtonClick:(id)send;

@end

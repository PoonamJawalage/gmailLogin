//
//  ViewController.m
//  gmailLogin
//
//  Created by Pipl-10 on 02/08/17.
//  Copyright © 2017 Pipl-10. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSLog(@"my first project");
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    [GIDSignInButton class];
    
    GIDSignIn *signIn = [GIDSignIn sharedInstance];
    signIn.shouldFetchBasicProfile = YES;
    signIn.delegate = self;
    signIn.uiDelegate = self;

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btngooglesign:(id)sender {
    [[GIDSignIn sharedInstance] signIn];
    
}
- (void)signIn:(GIDSignIn *)signIn
didSignInForUser:(GIDGoogleUser *)user
     withError:(NSError *)error {
    
  //  blurView=[[UIView alloc]initWithFrame:CGRectMake(self.view.frame.origin.x,0,self.view.frame.size.width,self.view.frame.size.height+50)];
  //  blurView.backgroundColor=[UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:0.5f];
  //  [self.view addSubview:blurView];
    
 //   spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
 //   spinner.frame = CGRectMake(blurView.frame.size.width/2-20, blurView.frame.size.height/2, 40.0, 40.0);
    //  spinner.center = self.view.center;
//    [blurView addSubview:spinner];
//    [spinner startAnimating];
    
    [self refreshUserInfo];
    
}

- (void)refreshUserInfo {
    if ([GIDSignIn sharedInstance].currentUser.authentication == nil) {
        
        //  self.userAvatar.image = [UIImage imageNamed:kPlaceholderAvatarImageName];
        return;
    }
    Stremail = [GIDSignIn sharedInstance].currentUser.profile.email;
    Strlastname =[GIDSignIn sharedInstance].currentUser.profile.familyName;
    
    Strname = [GIDSignIn sharedInstance].currentUser.profile.givenName;
    Strid = [GIDSignIn sharedInstance].currentUser.userID;
    
    
   // [self  socialGoogleLogin];
    //    [HUD showWhileExecuting:@selector(socialGoogleLogin) onTarget:self withObject:nil animated:YES];
    
}


@end

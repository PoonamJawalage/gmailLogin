//
//  ViewController.h
//  gmailLogin
//
//  Created by Pipl-10 on 02/08/17.
//  Copyright © 2017 Pipl-10. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleSignIn/GoogleSignIn.h>
@interface ViewController : UIViewController<GIDSignInUIDelegate,GIDSignInDelegate>
{
    UIView *blurView;
       UIActivityIndicatorView *spinner;
    NSString   *Stremail ;
    NSString *Strlastname ;
    
    NSString   *Strname ;
    NSString   *Strid ;

}

@end


//
//  ViewController.h
//  TestBlock
//
//  Created by Hoang Duc on 22/12/2022.
//

#import <UIKit/UIKit.h>
#import "Model.h"


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *number1Txt;

@property (weak, nonatomic) IBOutlet UITextField *number2Txt;
@property (weak, nonatomic) IBOutlet UILabel *resultTxt;
- (IBAction)addBtnOnTouch:(id)sender;


@end



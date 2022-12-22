//
//  ViewController.m
//  TestBlock
//
//  Created by Hoang Duc on 22/12/2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) Model *viewModel;

@end

@implementation ViewController
@synthesize number1Txt, number2Txt, resultTxt;

- (void)viewDidLoad {
    [super viewDidLoad];
    _viewModel = [[Model alloc]init];
    [self.viewModel getNumber1:^NSInteger{
        NSInteger number1;
        number1 = [self->number1Txt.text intValue];
        return  number1;
    }];
    [self.viewModel getNumber2:^NSInteger{
        NSInteger number2;
        number2 = [self->number2Txt.text intValue];
        return  number2;
    }];
}



- (IBAction)addBtnOnTouch:(id)sender {
    NSInteger so1 = [number1Txt.text intValue];
    NSInteger so2 = [number2Txt.text intValue];
    
    [self.viewModel addAction:so1 :so2 completion:^(NSInteger result) {
        self->resultTxt.text = [NSString stringWithFormat:@"%ld", (long)result];
    }];
    
}
@end

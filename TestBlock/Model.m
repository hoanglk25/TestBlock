//
//  Model.m
//  TestBlock
//
//  Created by Hoang Duc on 22/12/2022.
//

#import "Model.h"

@implementation Model
@synthesize number1, number2, result;

- (void)getNumber1:(NSInteger (^)(void))block1 {
    number1 = block1();
}
- (void)getNumber2:(NSInteger (^)(void))block2 {
    number2 = block2();
}
- (void)addAction:(NSInteger)numberFirst :(NSInteger)numberSecond completion:(void (^)(NSInteger result))passData {
    self.number1 = numberFirst;
    self.number2 = numberSecond;
    self.result = number1 + number2;
    
    passData(result);
    
}

@end

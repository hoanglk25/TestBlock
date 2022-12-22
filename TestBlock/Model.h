//
//  Model.h
//  TestBlock
//
//  Created by Hoang Duc on 22/12/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject
@property (nonatomic) NSInteger number1;
@property (nonatomic) NSInteger number2;
@property (nonatomic) NSInteger result;

-(void)getNumber1:(NSInteger(^)(void))block1;
-(void)getNumber2:(NSInteger(^)(void))block2;
-(void)addAction:(NSInteger)numberFirst: (NSInteger)numberSecond completion:(void(^)(NSInteger result))passData;
@end

NS_ASSUME_NONNULL_END

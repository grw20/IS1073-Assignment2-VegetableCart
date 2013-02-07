//
//  VCVegetable.h
//  IS1073-Assignment2-VegetableCart
//
//  Created by Geoffrey Wolf on 2/7/13.
//  Copyright (c) 2013 Geoffrey Wolf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VCVegetable : NSObject

@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * shape;
@property (nonatomic, strong) NSString * color;

-initWithName:(NSString *) inName andColor:(NSString *) inColor andShape:(NSString *) inShape;

-(NSString *) description;

@end

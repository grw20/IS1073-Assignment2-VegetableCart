//
//  VCVegetable.m
//  IS1073-Assignment2-VegetableCart
//
//  Created by Geoffrey Wolf on 2/7/13.
//  Copyright (c) 2013 Geoffrey Wolf. All rights reserved.
//

#import "VCVegetable.h"

@implementation VCVegetable

-initWithName:(NSString *) inName andColor:(NSString *)inColor andShape:(NSString *)inShape
{
    _name = inName;
    _shape = inShape;
    _color = inColor;
    
    return self;
}

-(NSString *) description
{
    return _name;
}

@end

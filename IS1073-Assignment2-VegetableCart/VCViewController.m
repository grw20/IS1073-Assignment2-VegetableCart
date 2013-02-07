//
//  VCViewController.m
//  IS1073-Assignment2-VegetableCart
//
//  Created by Geoffrey Wolf on 2/7/13.
//  Copyright (c) 2013 Geoffrey Wolf. All rights reserved.
//

#import "VCViewController.h"
#import "VCVegetable.h"
#import "VCPotato.h"
#import "VCOnion.h"
#import "VCPumpkin.h"

@interface VCViewController ()

@end

@implementation VCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _cart = [NSMutableArray arrayWithCapacity:0];
    
    for(int i=0; i<50; i++){
        NSString * vegetableName = [NSString stringWithFormat:@"Carrot %d", i];
        if((i % 10) == 0){
            vegetableName = [NSString stringWithFormat:@"Free Carrot %d", i];
        }
        VCVegetable * anonVegetable = [[VCVegetable alloc] initWithName:vegetableName andColor:@"Orange" andShape:@"Rod"];
        [_cart addObject:anonVegetable];
        
        
        
        
                                       
    }
    
    VCPotato * potato = [[VCPotato alloc] init];
    VCOnion * onion = [[VCOnion alloc] init];
    VCPumpkin * pumpkin = [[VCPumpkin alloc] init];
    
    [_cart addObject: potato];
    [_cart addObject: onion];
    [_cart addObject: pumpkin];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Vegetable";
}

-(int) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cart count];
}

-(UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"TableViewCell"];
    }
    
    VCVegetable * tempVegetable = [_cart objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [tempVegetable name];
    cell.detailTextLabel.text = [tempVegetable color];
    
    return cell;
}

@end

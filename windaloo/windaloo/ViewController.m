//
//  ViewController.m
//  windaloo
//
//  Created by Mario Stallone on 06/09/13.
//  Copyright (c) 2013 Mario Stallone. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,retain) NSArray *data;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"sample" ofType:@"json"];
    NSData *sample = [NSData dataWithContentsOfFile:path];
    NSError *error = nil;
    _data = [NSJSONSerialization JSONObjectWithData:sample options:NSJSONReadingMutableContainers error:&error];
    NSLog(@"%@",_data);
	// Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    cell.textLabel.text = [[_data objectAtIndex:indexPath.row] valueForKey:@"name"];
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

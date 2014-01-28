//
//  ViewController.m
//  CollectionViewExample
//
//  Created by Wan Ahmad Lutfi Wan Md Hatta on 28/01/14.
//  Copyright (c) 2014 wan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *items;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    items = @[@"cat", @"dog", @"mouse", @"lion", @"elephant", @"boar", @"horse", @"zebra", @"giraffe", @"fish", @"goat", @"sheep", @"rat"];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Datasource

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)view cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [view dequeueReusableCellWithReuseIdentifier:@"sample" forIndexPath:indexPath];
    UILabel *label = [[UILabel alloc] initWithFrame:cell.bounds];
    label.backgroundColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:13];
    
    label.text = items[indexPath.row];
    [cell.contentView addSubview:label];
    return cell;
}


#pragma mark - Delegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog([NSString stringWithFormat:@"Selected %@", items[indexPath.row]] );
}

@end

//
//  CollectionViewController.m
//  CollectionViewTest
//
//  Created by Brad Bambara on 5/25/16.
//  Copyright © 2016 Brad Bambara. All rights reserved.
//

#import "CollectionViewController.h"

static NSString * const kCollectionViewControllerItemID = @"ItemID";

@interface CollectionViewItem : NSCollectionViewItem
@end

@implementation CollectionViewItem
@end

@implementation CollectionViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	NSCollectionViewFlowLayout *layout = [[NSCollectionViewFlowLayout alloc] init];
	[layout setItemSize:CGSizeMake(100, 100)];
	
	_collectionView = [[NSCollectionView alloc] init];
	[_collectionView setTranslatesAutoresizingMaskIntoConstraints:NO];
	[_collectionView setCollectionViewLayout:layout];
	[_collectionView setDataSource:self];
	[_collectionView setDelegate:self];
	[_collectionView registerClass:[CollectionViewItem class] forItemWithIdentifier:kCollectionViewControllerItemID];
	[[self view] addSubview:_collectionView];
	[[self view] addConstraints:@[
								  [NSLayoutConstraint constraintWithItem:_collectionView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:[self view] attribute:NSLayoutAttributeTop multiplier:1.0f constant:0],
								  [NSLayoutConstraint constraintWithItem:_collectionView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:[self view] attribute:NSLayoutAttributeLeading multiplier:1.0f constant:0],
								  [NSLayoutConstraint constraintWithItem:[self view] attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:_collectionView attribute:NSLayoutAttributeBottom multiplier:1.0f constant:0],
								  [NSLayoutConstraint constraintWithItem:[self view] attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:_collectionView attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:0],
								  ]];
}

- (NSInteger)collectionView:(NSCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
	return 1;
}

- (NSCollectionViewItem *)collectionView:(NSCollectionView *)collectionView itemForRepresentedObjectAtIndexPath:(NSIndexPath *)indexPath
{
	//this method is never called
	return [collectionView makeItemWithIdentifier:kCollectionViewControllerItemID forIndexPath:indexPath];
}

@end

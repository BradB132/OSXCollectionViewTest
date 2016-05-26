//
//  CollectionViewController.h
//  CollectionViewTest
//
//  Created by Brad Bambara on 5/25/16.
//  Copyright © 2016 Brad Bambara. All rights reserved.
//

@import Cocoa;

@interface CollectionViewController : NSViewController  <NSCollectionViewDelegate, NSCollectionViewDataSource>

@property (nonatomic, strong) NSCollectionView *collectionView;

@end

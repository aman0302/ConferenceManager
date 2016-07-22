//
//  BookCollectionViewCell.h
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/21/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *coverLabel;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

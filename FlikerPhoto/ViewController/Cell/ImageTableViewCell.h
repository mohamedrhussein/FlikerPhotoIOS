//
//  ImageTableViewCell.h
//  FlikerPhoto
//
//  Created by Mohamed Rabie on 7/31/18.
//  Copyright © 2018 Mohamed Rabie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgFliker;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end

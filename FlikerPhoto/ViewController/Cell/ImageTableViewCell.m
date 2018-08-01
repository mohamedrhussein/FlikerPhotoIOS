//
//  ImageTableViewCell.m
//  FlikerPhoto
//
//  Created by Mohamed Rabie on 7/31/18.
//  Copyright © 2018 Mohamed Rabie. All rights reserved.
//

#import "ImageTableViewCell.h"

@implementation ImageTableViewCell

@synthesize imgFliker,lblTitle;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

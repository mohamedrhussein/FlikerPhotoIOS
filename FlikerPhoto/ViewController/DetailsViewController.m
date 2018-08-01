//
//  DetailsViewController.m
//  FlikerPhoto
//
//  Created by Mohamed Rabie on 7/31/18.
//  Copyright © 2018 Mohamed Rabie. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *imageTitle;
@property (weak, nonatomic) IBOutlet UIImageView *detailsImage;
@property (weak, nonatomic) IBOutlet UILabel *imageDescription;

@end

@implementation DetailsViewController


@synthesize title;
@synthesize description;
NSString *imageUrl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)back:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

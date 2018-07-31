//
//  ViewController.m
//  FlikerPhoto
//
//  Created by Mohamed Rabie on 7/30/18.
//  Copyright © 2018 Mohamed Rabie. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation ViewController

NSArray *tableData;


- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    // Initialize table data
    tableData = [NSArray arrayWithObjects:@"IOS", @"Android",@"Testing", nil];
    // Do any additional setup after loading the view, typically from a nib.
    // mohamed work call func to get data
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        static NSString *CellIdentifier = @"CellDetails";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        }
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"CellDetails" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"CellDetails"])
    {
        NSLog(@"segue");
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        //send data to second view
        DetailsViewController *second = segue.destinationViewController;        
    }
}

//get data from fliker API





//great table view programmatically
//-(UITableView *)makeTableView
//{
//    CGFloat x = 0;
//    CGFloat y = 50;
//    CGFloat width = self.view.frame.size.width;
//    CGFloat height = self.view.frame.size.height - 50;
//    CGRect tableFrame = CGRectMake(x, y, width, height);
//
//    UITableView *tableView = [[UITableView alloc]initWithFrame:tableFrame style:UITableViewStylePlain];
//
//    tableView.rowHeight = 45;
//    tableView.sectionFooterHeight = 22;
//    tableView.sectionHeaderHeight = 22;
//    tableView.scrollEnabled = YES;
//    tableView.showsVerticalScrollIndicator = YES;
//    tableView.userInteractionEnabled = YES;
//    tableView.bounces = YES;
//
//    tableView.delegate = self;
//    tableView.dataSource = self;
//
//    return tableView;
//}
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    self.tableView = [self makeTableView];
//    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CellDetails"];
//    [self.view addSubview:self.tableView];
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"CellDetails";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
//
//
//  //  present data in table view cell from model
//  //  labletitle
//  //  image
//
//    return cell;
//}
//
//-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self performSegueWithIdentifier:@"CellDetails" sender:self];
//}
//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
//{
//
//    if ([segue.identifier isEqualToString:@"CellDetails"])
//    {
//
//        NSLog(@"segue");
//
//        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
//    }
//}

@end

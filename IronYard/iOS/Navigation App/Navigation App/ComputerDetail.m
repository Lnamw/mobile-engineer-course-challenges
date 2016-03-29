//
//  ComputerDetail.m
//  Navigation App
//
//  Created by Elena Maso Willen on 23/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "ComputerDetail.h"
#import "ComputerList.h"

@interface ComputerDetail ()

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *computerImageView;




@end


@implementation ComputerDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _descriptionLabel.text = _selectedComputer;
    NSString *fullImageName = [NSString stringWithFormat:@"%@.png", _selectedComputer];
    UIImage *myimage = [UIImage imageNamed:fullImageName];
    _computerImageView.image = myimage;
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

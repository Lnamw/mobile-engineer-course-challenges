//
//  CharacterPictureViewController.m
//  Table Challenge 2
//
//  Created by Elena Maso Willen on 29/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "CharacterPictureViewController.h"

@interface CharacterPictureViewController ()

@property (weak, nonatomic) IBOutlet UILabel *pictureLabel;
@property (weak, nonatomic) IBOutlet UIImageView *characterImageView;

@end

@implementation CharacterPictureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _pictureLabel.text = _selectedCharacter;
    NSString *fullImageName = [NSString stringWithFormat:@"%@.png", _selectedCharacter];
    UIImage *myImage = [UIImage imageNamed:fullImageName];
    _characterImageView.image = myImage;


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

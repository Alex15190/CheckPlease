//
//  ViewController.m
//  CheckPlease
//
//  Created by Alex Chekodanov on 09.09.2018.
//  Copyright © 2018 MERA. All rights reserved.
//

#import "ViewController.h"
#import "BIDCheckMarkRecognizer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BIDCheckMarkRecognizer *check = [[BIDCheckMarkRecognizer alloc] initWithTarget:self action:@selector(doCheck:)];
    [self.view addGestureRecognizer:check];
}

- (void)doCheck:(BIDCheckMarkRecognizer *)check
{
    self.label.text = @"Checkmark";
    [self performSelector:@selector(eraseLabel) withObject:nil afterDelay:1.6];
}

-(void)eraseLabel;
{
    self.label.text = @"";
}

@end

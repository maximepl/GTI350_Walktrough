//
//  ViewController.m
//  ExempleUI
//
//  Created by Pelletier-Legault, Maxime on 2017-05-11.
//  Copyright © 2017 Pelletier-Legault, Maxime. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)AlloBouton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *nomAChanger;
@property (weak, nonatomic) IBOutlet UITextField *champsPrenom;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)AlloBouton:(UIButton *)sender {
    
    self.nomAChanger.text = self.champsPrenom.text;
    [self.champsPrenom resignFirstResponder];
    NSLog(@"Log dans la methode AlloBouton");
    
    UIAlertController* alert = [UIAlertController
        alertControllerWithTitle:@"TItre de mon alerte"
        message:@"Ceci est une alerte"
        preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
        style:UIAlertActionStyleDefault
        handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(IBAction)textFieldReturn:(id)sender {
    
    [sender resignFirstResponder];
}
@end

//
//  TipViewController.m
//  Tipster
//
//  Created by Christine Sun on 6/22/21.
//

#import "TipViewController.h"

@interface TipViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipPercentageControl;

@end

@implementation TipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)onTap:(id)sender {
    NSLog(@"hello");
    
    [self.view endEditing:(true)];
}

// Editing Change on Bill Field
- (IBAction)updateLabels:(id)sender {
    // An array to hold the possible tip percentages
    double tipPercentages[] = {0.15, 0.2, 0.25};
    
    // The tip percentage based on what is selected in tipPercentageControl
    double tipPercentage = tipPercentages[self.tipPercentageControl.selectedSegmentIndex];
    
    // Read the bill field
    double bill = [self.billAmountField.text doubleValue];
    
    // Calculate the tip and total
    double tip = bill * tipPercentage;
    double total = bill + tip;
    
    // Display tip and total with currency format
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f", tip];
    self.totalLabel.text = [NSString stringWithFormat: @"$%.2f", total];
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

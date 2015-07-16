//
//  CustomViewCell.h
//  obj-c-testApp1
//
//  Created by Mateusz Florczak on 16/07/15.
//  Copyright (c) 2015 Kainos Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *myTitle;
@property (weak, nonatomic) IBOutlet UILabel *myDescription;

@end

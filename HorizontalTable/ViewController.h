//Om Sri Sai Ram
//  ViewController.h
//  HorizontalTable
//
//  Created by PrasadBabu KN on 10/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSArray *arrItems;
    
    IBOutlet UITableView *myTableView;
    UIFont *textFont;
}
@end

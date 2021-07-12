//
//  ViewController.m
//  OCSegmentSlider
//
//  Created by 张晓光 on 2021/7/9.
//

#import "ViewController.h"
#import "Masonry.h"
#import "OCSegmentSliderView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //WithFrame:CGRectMake(0, 100, self.view.frame.size.width, 40)
    OCSegmentSliderView *sliderView = [[OCSegmentSliderView alloc] init];
    [self.view addSubview:sliderView];
    sliderView.configure.padding = 15;
    sliderView.configure.spacing = 20;
    [sliderView showSliderSwitchItemButton:@[@"全部",@"等待付款",@"交易成功"]];
    [sliderView mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.left.equalTo(self.view).offset(0);
        make.right.equalTo(self.view).offset(-100);
        make.top.equalTo(self.view).offset(100);
        make.height.mas_equalTo(40);
    }];
    
    
}


@end

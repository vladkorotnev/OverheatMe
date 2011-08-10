#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BBWeeAppController-Protocol.h"

float VIEW_HEIGHT = 70.0f;

@interface meh : NSObject
{
	UIButton *lifesaver;
}
-(void)heh;
-(void)huh;
@property (nonatomic,retain) UIButton *lifesaver;
@end

@implementation meh
@synthesize lifesaver;
-(void)heh {
            Class away = NSClassFromString(@"SBAwayController");
            
    [[away sharedAwayController]setShowOverheatUI:true];
   lifesaver = [UIButton buttonWithType:UIButtonTypeCustom];
		lifesaver.frame = [[UIScreen mainScreen] bounds];
		[lifesaver setTitle:@"" forState:(UIControlState)UIControlStateNormal];
		[lifesaver addTarget:self action:@selector(huh) forControlEvents:UIControlEventTouchUpInside];
    [[[away sharedAwayController]awayView]addSubview:lifesaver];
}

-(void)huh {
Class away = NSClassFromString(@"SBAwayController");
[[away sharedAwayController]setShowOverheatUI:false];
[lifesaver removeFromSuperview];
}

@end
//----------------------------------------------------------------------

@interface overheatmeController : NSObject <BBWeeAppController>
{
	UIView *_view;
}

@end

@implementation overheatmeController

- (id)init
{
	if ((self = [super init]))
	{
		
	}
	return self;
}

- (UIView *)view
{
	if (!_view)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2.0f, 0.0f, 316.0f, VIEW_HEIGHT)];

		UIImage *bgImg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/StocksWeeApp.bundle/WeeAppBackground.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(35.0f, 4.0f, 35.0f, 4.0f)];
        UIImageView *bg = [[UIImageView alloc] initWithImage:bgImg];
        bg.frame = CGRectMake(0.0f, 0.0f, 316.0f, VIEW_HEIGHT);
        [_view addSubview:bg];
        [bg release];
        
        meh *heat = [[meh alloc]init];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
		button.frame = CGRectMake(0.0f, 0.0f, 316.0f, VIEW_HEIGHT);
		[button setTitle:@"Overheat" forState:(UIControlState)UIControlStateNormal];
		[button addTarget:heat action:@selector(heh) forControlEvents:UIControlEventTouchDown];
				[button addTarget:heat action:@selector(heh) forControlEvents:UIControlEventTouchUpInside];
		[self.view addSubview:button];
	}

	return _view;
}

- (float)viewHeight
{
	return VIEW_HEIGHT;
}

@end

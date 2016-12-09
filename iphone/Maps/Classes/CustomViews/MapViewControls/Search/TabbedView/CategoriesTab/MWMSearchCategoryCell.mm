#import "MWMSearchCategoryCell.h"
#import "Common.h"
#import "Macros.h"
#import "UIColor+MapsMeColor.h"
#import "UIFont+MapsMeFonts.h"
#import "UIImageView+Coloring.h"

@interface MWMSearchCategoryCell ()

@property (weak, nonatomic) IBOutlet UIImageView * icon;
@property (weak, nonatomic) IBOutlet UILabel * label;

@end

@implementation MWMSearchCategoryCell

- (void)awakeFromNib
{
  [super awakeFromNib];
  if (IPAD)
    self.contentView.backgroundColor = [UIColor white];
  CALayer * sl = self.layer;
  sl.shouldRasterize = YES;
  sl.rasterizationScale = UIScreen.mainScreen.scale;
}

- (void)setCategory:(NSString *)category
{
  UILabel * label = self.label;
  label.text = L(category);
  label.textColor = [UIColor blackPrimaryText];
  self.icon.mwm_name = [NSString stringWithFormat:@"ic_%@", category];
}

@end

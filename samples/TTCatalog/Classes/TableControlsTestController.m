#import "TableControlsTestController.h"

///////////////////////////////////////////////////////////////////////////////////////////////////

@implementation TableControlsTestController

///////////////////////////////////////////////////////////////////////////////////////////////////
// NSObject

- (id)init {
  if (self = [super init]) {
    self.tableViewStyle = UITableViewStyleGrouped;
    self.autoresizesForKeyboard = YES;
    self.variableHeightRows = YES;
    
    UITextField* textField = [[UITextField alloc] init];
    textField.placeholder = @"UITextField";
    textField.font = TTSTYLEVAR(font);

    UITextField* textField2 = [[UITextField alloc] init];
    textField2.font = TTSTYLEVAR(font);
    textField2.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    TTTableControlItem* textFieldItem = [TTTableControlItem itemWithCaption:@"TTTableControlItem"
                                                            control:textField2];
    
    UITextView* textView = [[UITextView alloc] init];
    textView.text = @"UITextView";
    textView.font = TTSTYLEVAR(font);
    
    TTTextEditor* editor = [[TTTextEditor alloc] init];
    editor.font = TTSTYLEVAR(font);
    editor.backgroundColor = TTSTYLEVAR(backgroundColor);
    editor.autoresizesToText = NO;
    editor.minNumberOfLines = 3;
    editor.placeholder = @"TTTextEditor";
    
    UISwitch* switchy = [[UISwitch alloc] init];
    TTTableControlItem* switchItem = [TTTableControlItem itemWithCaption:@"UISwitch" control:switchy];

    UISlider* slider = [[UISlider alloc] init];
    TTTableControlItem* sliderItem = [TTTableControlItem itemWithCaption:@"UISlider" control:slider];
    
    self.dataSource = [TTListDataSource dataSourceWithObjects:
      textField,
      editor,
      textView,
      textFieldItem,
      switchItem,
      sliderItem,
      nil];
  }
  return self;
}

@end

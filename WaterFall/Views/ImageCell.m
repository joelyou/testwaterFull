//
//  ImageCell.m
//  Demo
//
//  Created by Rain on 2016/12/27.
//  Copyright © 2016年 Youxiake. All rights reserved.
//

#import "ImageCell.h"


@implementation ImageCell

-(id) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if( self ){
        
        _backImageView = [[UIImageView alloc]initWithFrame:self.bounds];
        [self.contentView addSubview:_backImageView];
        
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.textColor = [UIColor whiteColor];
        _nameLabel.font = [UIFont systemFontOfSize:12.0];
        [self.contentView addSubview:_nameLabel];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _backImageView.frame = self.bounds;
    
    [_nameLabel sizeToFit];
    _nameLabel.frame = CGRectMake(5, self.bounds.size.height - _nameLabel.frame.size.height, _nameLabel.frame.size.width, _nameLabel.frame.size.height);
}


@end

//
//  PickerWindow.m
//  Picker
//
//  Created by Devin Chalmers on 11/4/13.
//
//

#import "PickerWindow.h"

#import "PickerBackgroundView.h"

@implementation PickerWindow

- (id)initWithSize:(CGSize)sz;
{
    if (!(self = [super initWithContentRect:(CGRect){.size = sz} styleMask:NSBorderlessWindowMask backing:NSBackingStoreBuffered defer:NO]))
        return nil;
    
    sz.height += 10;
	PickerBackgroundView *v = [[PickerBackgroundView alloc] initWithFrame:(CGRect){.size = sz}];
    
    [self setHasShadow:YES];
	[self setLevel:NSStatusWindowLevel];
	[self setOpaque:NO];
	[self setBackgroundColor:[NSColor clearColor]];
	[self setCollectionBehavior:NSWindowCollectionBehaviorStationary];
    
	[self setContentView:v];
	[v release];
    
    return self;
}

- (BOOL)canBecomeKeyWindow;
{
    return YES;
}

@end

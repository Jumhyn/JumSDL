//
//  SDLWindow.m
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import "JumWindow.h"

@implementation JumWindow

@synthesize window;

-(id)initWithTitle:(NSString *)title origin:(CGPoint)origin size:(CGSize)size flags:(Uint32)flags {
    if (self = [super init]) {
        window = SDL_CreateWindow(title.UTF8String, origin.x, origin.y, size.width, size.height, flags);
        if (self.window == NULL) {
            NSException *exception = [[NSException alloc] initWithName:@"Initialization Exception" reason:[NSString stringWithFormat:@"%s", SDL_GetError()] userInfo:nil];
            [exception raise];
        }
    }
    return self;
}

-(void)dealloc {
    SDL_DestroyWindow(self.window);
}

@end

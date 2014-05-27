//
//  SDLSurface.m
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import "SDLSurface.h"

@implementation JumSurface

@synthesize surface;

-(id)initWithBMPFile:(NSString *)path {
    if (self = [super init]) {
        surface = SDL_LoadBMP(path.UTF8String);
        if (self.surface == NULL) {
            NSException *exception = [[NSException alloc] initWithName:@"Initialization Exception" reason:[NSString stringWithFormat:@"%s", SDL_GetError()] userInfo:nil];
            [exception raise];
        }
    }
    return self;
}

-(void)free {
    SDL_FreeSurface(self.surface);
}

@end

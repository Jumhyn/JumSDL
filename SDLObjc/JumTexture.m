//
//  SDLTexture.m
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import "JumTexture.h"

@implementation SDLTexture

@synthesize texture;

-(id)initWithBaseTexture:(SDL_Texture *)newTexture {
    if (self = [super init]) {
        texture = newTexture;
    }
    return self;
}

+(SDLTexture *)textureWithBaseTexture:(SDL_Texture *)newTexture {
    return [[SDLTexture alloc] initWithBaseTexture:newTexture];
}

-(void)dealloc {
    SDL_DestroyTexture(self.texture);
}

@end

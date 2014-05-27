//
//  SDLRenderer.m
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import "SDLRenderer.h"

@implementation SDLRenderer

@synthesize renderer;

-(id)initWithWindow:(SDLWindow *)window index:(int)index flags:(Uint32)flags {
    if (self = [super init]) {
        renderer = SDL_CreateRenderer(window.window, index, flags);
        if (self.renderer == NULL) {
            NSException *exception = [[NSException alloc] initWithName:@"Initialization Exception" reason:[NSString stringWithFormat:@"%s", SDL_GetError()] userInfo:nil];
            [exception raise];
        }
    }
    return self;
}

-(SDLTexture *)textureFromSurface:(SDLSurface *)surface {
    return [SDLTexture textureWithBaseTexture:SDL_CreateTextureFromSurface(self.renderer, surface.surface)];
}

-(void)clear {
    SDL_RenderClear(renderer);
}

-(void)copyTexture:(SDLTexture *)texture fromRect:(CGRect *)sourceRect toRect:(CGRect*)destinationRect {
    SDL_Rect *rect1;
    SDL_Rect *rect2;
    if (sourceRect == NULL) {
        rect1 = NULL;
    }
    else {
        rect1 = malloc(sizeof(SDL_Rect));
        rect1->x = (int)sourceRect->origin.x;
        rect1->y = (int)sourceRect->origin.y;
        rect1->w = (int)sourceRect->size.width;
        rect1->h = (int)sourceRect->size.height;
    }
    
    if (destinationRect == NULL) {
        rect2 = NULL;
    }
    else {
        rect2 = malloc(sizeof(SDL_Rect));
        rect2->x = (int)destinationRect->origin.x;
        rect2->y = (int)destinationRect->origin.y;
        rect2->w = (int)destinationRect->size.width;
        rect2->h = (int)destinationRect->size.height;
    }
    SDL_RenderCopy(self.renderer, texture.texture, rect1, rect2);
    free(rect1);
    free(rect2);
}

-(void)present {
    SDL_RenderPresent(self.renderer);
}

-(void)dealloc {
    SDL_DestroyRenderer(self.renderer);
}

@end

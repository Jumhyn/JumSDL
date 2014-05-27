//
//  SDLRenderer.h
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SDL2/SDL.h>
#import "JumTexture.h"
#import "JumSurface.h"
#import "JumWindow.h"

@interface JumRenderer : NSObject

-(id)initWithWindow:(SDLWindow *)window index:(int)index flags:(Uint32)flags;

-(SDLTexture *)textureFromSurface:(SDLSurface *)surface;
-(void)clear;
-(void)copyTexture:(SDLTexture *)texture fromRect:(CGRect *)sourceRect toRect:(CGRect *)destinationRect;
-(void)present;

@property(nonatomic, readonly) SDL_Renderer *renderer;

@end

//
//  SDLTexture.h
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SDL2/SDL.h>

@interface JumTexture : NSObject

+(JumTexture *)textureWithBaseTexture:(SDL_Texture *)newTexture;

@property(nonatomic, readonly) SDL_Texture *texture;

@end

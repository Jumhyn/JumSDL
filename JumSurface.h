//
//  SDLSurface.h
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SDL2/SDL.h>

@interface JumSurface : NSObject

-(id)initWithBMPFile:(NSString *)path;

-(void)free;

@property(nonatomic, readonly) SDL_Surface *surface;

@end

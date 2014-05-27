//
//  SDLWindow.h
//  SDLObjc
//
//  Created by Freddy Kellison-Linn on 5/26/14.
//  Copyright (c) 2014 Jumhyn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SDL2/SDL.h>

@interface JumWindow : NSObject

-(id)initWithTitle:(NSString *)title origin:(CGPoint)origin size:(CGSize)size flags:(Uint32)flags;

@property(nonatomic, readonly) SDL_Window *window;

@end

// Copyright (c) 2011 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

attribute vec4 aPosition;

varying vec4 vColor;

void main()
{
   gl_Position = aPosition;
   vec2 texcoord = vec2(aPosition.xy * 0.5 + vec2(0.5, 0.5));
   vec4 color = vec4(
       texcoord,
       texcoord.x * texcoord.y,
       (1.0 - texcoord.x) * texcoord.y * 0.5 + 0.5);
   vColor = ceil(
       color * 8.0 - vec4(4, 4, 4, 4)) / 8.0 + vec4(0.5, 0.5, 0.5, 0.5);
}




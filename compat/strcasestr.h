/*  RetroArch - A frontend for libretro.
 *  Copyright (C) 2010-2013 - Hans-Kristian Arntzen
 * 
 *  RetroArch is free software: you can redistribute it and/or modify it under the terms
 *  of the GNU General Public License as published by the Free Software Found-
 *  ation, either version 3 of the License, or (at your option) any later version.
 *
 *  RetroArch is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
 *  without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
 *  PURPOSE.  See the GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License along with RetroArch.
 *  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef RARCH_STRCASESTR_H
#define RARCH_STRCASESTR_H

#include <string.h>

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#ifndef HAVE_STRCASESTR

#ifdef __cplusplus
extern "C" {
#endif
// Avoid possible naming collisions during link since we prefer to use the actual name.
#define strcasestr(haystack, needle) strcasestr_rarch__(haystack, needle)

char *strcasestr(const char *haystack, const char *needle);
#ifdef __cplusplus
}
#endif
#endif

#endif


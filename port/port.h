// Copyright (c) 2011 The LevelDB Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file. See the AUTHORS file for names of contributors.

#ifndef PROGRAM_MYLDB_PORT_PORT_H
#define PROGRAM_MYLDB_PORT_PORT_H

#include <string.h>

// Include the appropriate platform specific file below.  If you are
// porting to a new platform, see "port_example.h" for documentation
// of what the new port_<platform>.h file must provide.
#if defined(MYLDB_PLATFORM_POSIX)
#  include "port/port_posix.h"
//#elif defined(MYLDB_PLATFORM_CHROMIUM)
//#  include "port/port_chromium.h"
#endif

#endif  // PROGRAM_MYLDB_PORT_PORT_H

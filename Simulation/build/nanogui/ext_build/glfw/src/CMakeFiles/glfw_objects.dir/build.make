# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vismay/ElasticBodies/Simulation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vismay/ElasticBodies/Simulation/build

# Include any dependencies generated for this target.
include nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/depend.make

# Include the progress variables for this target.
include nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/progress.make

# Include the compile flags for this target's objects.
include nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/context.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/context.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/context.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/context.c > CMakeFiles/glfw_objects.dir/context.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/context.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/context.c -o CMakeFiles/glfw_objects.dir/context.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/init.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/init.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/init.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/init.c > CMakeFiles/glfw_objects.dir/init.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/init.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/init.c -o CMakeFiles/glfw_objects.dir/init.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/input.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/input.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/input.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/input.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/input.c > CMakeFiles/glfw_objects.dir/input.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/input.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/input.c -o CMakeFiles/glfw_objects.dir/input.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/monitor.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/monitor.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/monitor.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/monitor.c > CMakeFiles/glfw_objects.dir/monitor.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/monitor.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/monitor.c -o CMakeFiles/glfw_objects.dir/monitor.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/window.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/window.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/window.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/window.c > CMakeFiles/glfw_objects.dir/window.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/window.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/window.c -o CMakeFiles/glfw_objects.dir/window.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_init.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/x11_init.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_init.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/x11_init.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_init.c > CMakeFiles/glfw_objects.dir/x11_init.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/x11_init.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_init.c -o CMakeFiles/glfw_objects.dir/x11_init.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_monitor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/x11_monitor.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_monitor.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/x11_monitor.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_monitor.c > CMakeFiles/glfw_objects.dir/x11_monitor.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/x11_monitor.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_monitor.c -o CMakeFiles/glfw_objects.dir/x11_monitor.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_window.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/x11_window.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_window.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/x11_window.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_window.c > CMakeFiles/glfw_objects.dir/x11_window.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/x11_window.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/x11_window.c -o CMakeFiles/glfw_objects.dir/x11_window.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/xkb_unicode.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/xkb_unicode.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/xkb_unicode.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/xkb_unicode.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/xkb_unicode.c > CMakeFiles/glfw_objects.dir/xkb_unicode.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/xkb_unicode.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/xkb_unicode.c -o CMakeFiles/glfw_objects.dir/xkb_unicode.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/linux_joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/linux_joystick.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/linux_joystick.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/linux_joystick.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/linux_joystick.c > CMakeFiles/glfw_objects.dir/linux_joystick.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/linux_joystick.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/linux_joystick.c -o CMakeFiles/glfw_objects.dir/linux_joystick.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_time.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/posix_time.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_time.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/posix_time.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_time.c > CMakeFiles/glfw_objects.dir/posix_time.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/posix_time.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_time.c -o CMakeFiles/glfw_objects.dir/posix_time.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_tls.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/posix_tls.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_tls.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/posix_tls.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_tls.c > CMakeFiles/glfw_objects.dir/posix_tls.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/posix_tls.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/posix_tls.c -o CMakeFiles/glfw_objects.dir/posix_tls.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o


nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/flags.make
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o: /home/vismay/libigl/external/nanogui/ext/glfw/src/glx_context.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vismay/ElasticBodies/Simulation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfw_objects.dir/glx_context.c.o   -c /home/vismay/libigl/external/nanogui/ext/glfw/src/glx_context.c

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfw_objects.dir/glx_context.c.i"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/vismay/libigl/external/nanogui/ext/glfw/src/glx_context.c > CMakeFiles/glfw_objects.dir/glx_context.c.i

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfw_objects.dir/glx_context.c.s"
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && /usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/vismay/libigl/external/nanogui/ext/glfw/src/glx_context.c -o CMakeFiles/glfw_objects.dir/glx_context.c.s

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.requires:

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.provides: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.requires
	$(MAKE) -f nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.provides.build
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.provides

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.provides.build: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o


glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o
glfw_objects: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build.make

.PHONY : glfw_objects

# Rule to build all files generated by this target.
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build: glfw_objects

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/build

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/context.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/init.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/input.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/monitor.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/window.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_init.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_monitor.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/x11_window.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/xkb_unicode.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/linux_joystick.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_time.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/posix_tls.c.o.requires
nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires: nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/glx_context.c.o.requires

.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/requires

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/clean:
	cd /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src && $(CMAKE_COMMAND) -P CMakeFiles/glfw_objects.dir/cmake_clean.cmake
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/clean

nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/depend:
	cd /home/vismay/ElasticBodies/Simulation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vismay/ElasticBodies/Simulation /home/vismay/libigl/external/nanogui/ext/glfw/src /home/vismay/ElasticBodies/Simulation/build /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src /home/vismay/ElasticBodies/Simulation/build/nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nanogui/ext_build/glfw/src/CMakeFiles/glfw_objects.dir/depend


@echo off
echo Starting compilation...

:: Compile C++ source file
g++ -g -c main.cpp -I./src/Include -L./src/lib -lmingw32 -lSDL2main -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lSDL2
if errorlevel 1 (
    echo Compilation failed at step 1!
    exit /b
)

echo Compilation successful, linking object files...

:: Link the object file to create the executable
g++ -g -o Game main.o -L./src/lib -lmingw32 -lSDL2main -lSDL2_image -lSDL2_ttf -lSDL2_mixer -lSDL2
if errorlevel 1 (
    echo Linking failed!
    exit /b
)

echo Executing Game...

:: Run the compiled game executable
Game.exe
echo Game successfully compiled and launched!
REM pause

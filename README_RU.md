![Linux build](https://github.com/efreyu/tusur-asu-pascal/workflows/Linux%20build/badge.svg?branch=master)

##### Репозиторий содержит студенческие работы для моего курса в университете.
##### В работе использовался CMake и Free Pascal

[English](https://github.com/efreyu/tusur-asu-pascal/blob/master/README.md) | Russian

#### Требования: 
`cmake` and `fpc`
#### Установка:
##### linux
```bash
apt install cmake fpc
```
##### MacOS
```bash
brew install cmake fpc
```
#### Компиляция:
```bash
mkdir build
cd build
cmake ..
make
```
#### Использование:
Можно просто запустить бинарный файл, например `./example_name` где вместе `example_name` нужно подставить цель сборки.

Этот репозиторий содержит модули CMake, которые идентифицируют и позволяют использовать компилятор freepascal для CMake.

CMake модули были реализованы Vittorio Giovara, с текущим и другими модулями вы можете ознакомиться в проекте [hedgewars](https://github.com/hedgewars/hw)
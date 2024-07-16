# Room Escape Game

2019 Fall Semester **Computer Graphics** Final Project @[**UNIST**](https://unist.ac.kr)

2019년 2학기 UNIST **컴퓨터 그래픽스** 강의 최종 프로젝트

**C++ OpenGL**을 사용한 방탈출 게임

## Information

- 기간: 2019.11 - 2019.12
- 기술: `C++`, `OpenGL 2.0`

### Team Members

- 20131064 **김동훈**
  - 좌표, 마우스, 트랙볼, 오브젝트 회전
- 20141440 **이승원**
  - 오브젝트 로더, 오브젝트 세팅 (Blender), 텍스트 출력, 카메라 무빙
- 20151506 **정하빈**
  - 오브젝트 로더, 오브젝트 선택 (Picking, Selection), 라이팅, 비밀번호

### Project Abstract

We thought making a game is a good project to apply knowledge that we have learned through this semester.
Thus, we made a simple room escape game with first person viewpoint.
Various technique such as VBO, texture, and lighting are used in this game.

To clear the game, a player should answer the correct numbers which are hidden in the objects.
Since we made a special selection view mode when a player clicks the objects, the player can observe the objects in detail.
Thus, the player has to explore the room and examine the objects.

## Project Result

### Demo

[![video](https://img.youtube.com/vi/dIqHDlAxGdw/0.jpg)](https://youtu.be/dIqHDlAxGdw)

### Report

[PDF](https://nbviewer.jupyter.org/github/habijung/room-escape-game/blob/main/Team-2-Final-Report.pdf)

## Build Project (Windows)

### Prerequisites

| Name          | Version     |
|:--------------|:------------|
| OpenGL        | 2.0         |
| CMake         | 3.5         |
| Visual Studio | 2022        |
| Windows SDK   | 10.0.22621  |

### Build

**Use shell script**

```shell
sh build.sh
```

### Run

```shell
./cmake-build/Debug/room-escale.exe
```

---
**Last Updated:** 2024.07.16

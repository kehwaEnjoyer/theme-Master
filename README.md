<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![project_license][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">ThemeMaster</h3>

  <p align="center">
    An automated, wallpaper-driven desktop environment engine powered by C++ K-Means palette extraction and dynamic shell coordination.
    <br />
    <a href="https://github.com/kehwaEnjoyer/theme-Master"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/kehwaEnjoyer/theme-Master/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    &middot;
    <a href="https://github.com/kehwaEnjoyer/theme-Master/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

**ThemeMaster** is an automated, wallpaper-driven desktop theme engine. Built on a C++ K-Means clustering backend and modular shell coordination scripts, it dynamically extracts dominant color palettes from wallpaper images, compiles native application configurations from custom user templates, and synchronizes your entire visual environment on the fly.

### Key Features
* **C++ K-Means Palette Extraction**: Performs vector quantization directly on raw wallpaper pixels.
* **Asynchronous Directory Watcher**: Automates palette generation by monitoring target wallpaper directories.
* **Template-Based Config Compiler**: Generates target configuration files for desktop tools using flexible, user-defined template variables.
* **Atomic Environment Synchronization**: Switches active wallpapers and broadcasts palette changes across running applications simultaneously.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* [![C++][CPP-shield]][CPP-url]
* [![Bash][Bash-shield]][Bash-url]
* [![CMake][CMake-shield]][CMake-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Follow these steps to build and set up ThemeMaster on your machine.

### Prerequisites

* GCC / Clang with C++17 support
* Eigen for c++
* CMake (`>= 3.10`)
* OpenMP (optional, for accelerated matrix operations)

```sh
# Arch Linux
sudo pacman -S base-devel cmake

# Ubuntu / Debian
sudo apt install build-essential cmake
```

### Installation

1. Clone the repository
   ```sh
   git clone https://github.com/kehwaEnjoyer/theme-Master.git
   cd theme-Master
   ```
2. Build the C++ core engine
   ```sh
   mkdir build && cd build
   cmake ..
   make -j$(nproc)
   ```
3. give setup execution privalages for it to run and set up all scripts and directories and set terminal commands:
   ```sh
   chmod +x setup.sh
   ./setup.sh
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->
## Usage

### 1. Direct Palette Extraction
Generate color configurations for a single image:
```bash
themeMaster /path/to/wallpaper.jpg /path/to/output/ 
```

### 2. Directory Watcher
The code automatically watches directory at ~/Wallpapers , to run the daemon:
```bash
themeMasterdaemon
```

### 3. Switch Theme & Wallpaper
Switch active wallpaper and apply matching application themes instantly:
```bash
themeMaster-set /path/to/wallpaper.jpg
```

### 4. Switch Theme & Wallpaper to the next
Switch active wallpaper and apply matching application themes instantly on the next wallpaper:
```bash
themeMaster-next 
```

### 5. Templates
The program autogenerates palettes color setup for you to link or import in your programs, by using the templete file stored in themeMasterPalettes/templetes. simply create a new template or .tpl file for it to be generated for each wall paper and used. there are a few already there. use them as references 

### 6. Program restarts
Most programs require restarts to take effect, as such any restart commands can be appended to -set script for it to take effect.



<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Notes:
 * both -set and -next only switch the wallpaper and do not call the engine binary. Therefore all wallpapers need to go through the daemon first.  
 * some applications or compositors dont behave well when -used to change from -next or -set with keybinds , sometimes hanges take too long to take effect and such, the soloution is to either run it through a terminal or a system service or use the compositors own executer/dispatcher (recommended).

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/kehwaEnjoyer/theme-Master/issues) for a full list of proposed features and known issues.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Top contributors:

<a href="https://github.com/kehwaEnjoyer/theme-Master/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=kehwaEnjoyer/theme-Master" alt="contrib.rocks image" />
</a>

<!-- LICENSE -->
## License

Distributed under the Apache-2.0 License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

Email: [yahyasmughal@gmail.com](mailto:yahyasmughal@gmail.com)

Project Link: [https://github.com/kehwaEnjoyer/theme-Master](https://github.com/kehwaEnjoyer/theme-Master)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/kehwaEnjoyer/theme-Master.svg?style=for-the-badge
[contributors-url]: https://github.com/kehwaEnjoyer/theme-Master/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/kehwaEnjoyer/theme-Master.svg?style=for-the-badge
[forks-url]: https://github.com/kehwaEnjoyer/theme-Master/network/members
[stars-shield]: https://img.shields.io/github/stars/kehwaEnjoyer/theme-Master.svg?style=for-the-badge
[stars-url]: https://github.com/kehwaEnjoyer/theme-Master/stargazers
[issues-shield]: https://img.shields.io/github/issues/kehwaEnjoyer/theme-Master.svg?style=for-the-badge
[issues-url]: https://github.com/kehwaEnjoyer/theme-Master/issues
[license-shield]: https://img.shields.io/github/license/kehwaEnjoyer/theme-Master.svg?style=for-the-badge
[license-url]: https://github.com/kehwaEnjoyer/theme-Master/blob/main/LICENSE

[CPP-shield]: https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=cplusplus&logoColor=white
[CPP-url]: https://isocpp.org/
[Linux-shield]: https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black
[Linux-url]: https://www.kernel.org/
[Bash-shield]: https://img.shields.io/badge/GNU_Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white
[Bash-url]: https://www.gnu.org/software/bash/
[CMake-shield]: https://img.shields.io/badge/CMake-064F8C?style=for-the-badge&logo=cmake&logoColor=white
[CMake-url]: https://cmake.org/
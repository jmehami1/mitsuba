Mitsuba — Physically Based Renderer
===================================

### Additions

Implemented irradiance integrator for perspective camera. Used to get irradiance arriving on surface of objects.

### General Info

Simulator successfully compiled and built on Ubuntu 18.04

Spectral compilation of **100 channels** capable of rendering EXR hypercubes of:

- Radiance
- Reflectance
- Irradiance 



## Instructions

### Cloning Spectral Repo

```
git clone -b spectral https://github.com/jmehami1/mitsuba.git mitsuba_spectral
```



### Dependencies

```bash
# All regular dependencies
sudo apt-get install build-essential scons git mercurial libjpeg-dev libilmbase-dev libxerces-c-dev libboost-all-dev libopenexr-dev libglewmx-dev libxxf86vm-dev libpcrecpp0v5 libeigen3-dev libfftw3-dev qt5-default libqt5opengl5-dev libqt5xmlpatterns5-dev


# Missing libpng fix
sudo add-apt-repository ppa:linuxuprising/libpng12
sudo apt update
sudo apt install libpng12-0

sudo apt-get install libcollada-dom2.4-dp-dev
```

https://medium.com/@sree_here/10-steps-to-install-mitsuba-renderer-on-ubuntu-38a9318fbcdf

http://mitsuba-renderer.org/



### Compiling

```bash
cd mitsuba_spectral
scons -j8
```



### Bash Script Function

A convenient BASH script has been written to run *Mitsuba* simulations from terminal given a scene file. Source the file `run-mitsuba.sh` to `.bashrc`:

```bash
source **FULL PATH TO**/mitsuba_spectral/run-mitsuba.sh
```



In terminal, you can run simulations as follows:

```bash
mitsuba-spectral **reflectance/irradiance** **MY_SCENE_FILE**.xml
```
The first argument after *mitsuba-spectral* should be either **reflectance**  or **irradiance**. If no argument is present then **reflectance** is set by default.




## About

Mitsuba is a research-oriented rendering system in the style of PBRT, from which it derives much inspiration. It is written in portable C++, implements unbiased as well as biased techniques, and contains heavy optimizations targeted towards current CPU architectures. Mitsuba is extremely modular: it consists of a small set of core libraries and over 100 different plugins that implement functionality ranging from materials and light sources to complete rendering algorithms.

In comparison to other open source renderers, Mitsuba places a strong emphasis on experimental rendering techniques, such as path-based formulations of Metropolis Light Transport and volumetric modeling approaches. Thus, it may be of genuine interest to those who would like to experiment with such techniques that haven't yet found their way into mainstream renderers, and it also provides a solid foundation for research in this domain.

The renderer currently runs on Linux, MacOS X and Microsoft Windows and makes use of SSE2 optimizations on x86 and x86_64 platforms. So far, its main use has been as a testbed for algorithm development in computer graphics, but there are many other interesting applications.

Mitsuba comes with a command-line interface as well as a graphical frontend to interactively explore scenes. While navigating, a rough preview is shown that becomes increasingly accurate as soon as all movements are stopped. Once a viewpoint has been chosen, a wide range of rendering techniques can be used to generate images, and their parameters can be tuned from within the program.

## Documentation

For compilation, usage, and a full plugin reference, please see the [official documentation](http://mitsuba-renderer.org/docs.html).

## Releases and scenes

Pre-built binaries, as well as example scenes, are available on the [Mitsuba website](http://mitsuba-renderer.org/download.html).

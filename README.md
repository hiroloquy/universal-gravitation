# Universal Gravitation
This gnuplot script simulates universal gravitation between the Earth and the Moon.

## Demo
<img src="universal_gravitation.gif" alt="universal_gravitation.gif" width=400>

## Modeling
<img src="https://render.githubusercontent.com/render/math?math=%5CLarge+%5Cdisplaystyle+%5Cbegin%7Balign%7D%0A%5Cmathrm%7BEarth%7D%5C+%3A%5C++%26+%5Cvec%7BR%7D+%3D+%5B0%2C+0%5D%5ET%5Cnonumber%5C%5C%0A%5Cmathrm%7BMoon%7D%5C+%3A%5C++%26+%5Cvec%7Br%7D+%3D%5Bx%2C+y%5D%5ET%5Cnonumber%0A%5Cend%7Balign%7D" 
alt="\begin{align}\mathrm{Earth}\ :\  & \vec{R} = [0, 0]^T\nonumber\\\mathrm{Moon}\ :\  & \vec{r} =[x, y]^T\nonumber\end{align}">  
<img src="https://render.githubusercontent.com/render/math?math=%5CLarge+%5Cdisplaystyle+m+%5Cfrac%7B%5Cmathrm%7Bd%7D%5E2%5Cvec%7Br%7D%7D%7B%5Cmathrm%7Bd%7Dt%5E2%7D%3D-G%5Cfrac%7BmM%7D%7B%5Cleft%5C%7C%5Cvec%7Br%7D%5Cright%5C%7C%5E3%7D%5Cvec%7Br%7D" alt="m \frac{\mathrm{d}^2\vec{r}}{\mathrm{d}t^2}=-G\frac{mM}{\left\|\vec{r}\right\|^3}\vec{r}">


<!-- ## Features
You enable to switch terminal type `qt` or `pngcairo` by using **`qtMode`**.
- If you select `qt` terminal (`qtMode==1`), gnuplot opens qt window and you can run this simulator.
The drawing speed of the qt window can be adjusted with the `pause` command and the variable `DELAY_TIME`.

- On the other hand, in `pngcairo` terminal (`qtMode!=1`), you can get a lot of PNG images of the simulation.
By using the outputted images, you can make a video or an animated GIF. -->

<!-- # Operating environment -->
## Requirement
- macOS Big Sur 12.2 / Macbook Air (M1, 2020) 16GB
- gnuplot version 5.4 patchlevel 3

<!-- # Installation -->
 
## Usage
```
git clone https://github.com/hiroloquy/universal-gravitation.git
cd universal-gravitation
gnuplot
load 'universal_gravitation.plt'
```

## Author
* Hiro Shigeyoshi
* Twitter: [@hiroloquy](https://twitter.com/hiroloquy)

### Blog
This article is written in English. You can translate it in your language.  
https://hirossoliloquy.blogspot.com/2018/10/universal-gravitation.html

### YouTube
https://youtu.be/vz9N5GG8Tfw  
[![Universal Gravitation Animation [gnuplot]](http://img.youtube.com/vi/8i3RoEP0pgw/0.jpg)](https://youtu.be/8i3RoEP0pgw "Universal Gravitation Animation [gnuplot]")

## License
"universal-gravitation" is under [MIT license](https://github.com/hiroloquy/universal-gravitation/blob/master/LICENSE).
 

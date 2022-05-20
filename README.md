# Universal Gravitation
This gnuplot script simulates universal gravitation between the Earth and the Moon.

## Demo
<img src="universal_gravitation.gif" alt="universal_gravitation.gif" width=400>

## Modeling
Let
$$
    \mathrm{Earth}: \boldsymbol{R} = \begin{bmatrix}0\\0\end{bmatrix}\ ,\ 
    \mathrm{Moon}: \boldsymbol{r} = \begin{bmatrix}x\\y\end{bmatrix}.
$$
Then, 
$$
m \frac{\mathrm{d}^2\boldsymbol{r}}{\mathrm{d}t^2}=-G\frac{mM}{\left\|\boldsymbol{r}\right\|^3}\boldsymbol{r}
$$

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
 

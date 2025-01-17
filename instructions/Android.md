# Інструкції встановлення proxy_finder на Android через Termux

!!!УСІ ПУНКТИ ОБОВ'ЯЗКОВІ!!!  

!!! СКАЧУВАТИ ТРЕБА САМЕ APK НА GITHUB, У GOOGLE PLAY НЕ ПІДІЙТЕ (бо там більше не підтримується - будуть помилки) !!!   

https://github.com/termux/termux-app/releases - обираєте там `termux-app_v0.118.0+github-debug_universal.apk` та скачуєте  

!!! ПІСЛЯ СКАЧУВАННЯ ПРИ ВСТАНОВЛЕННІ ТРЕБА НАДАВИТИ УСІ ДОЗВОЛИ ПРОГРАМІ!!!

Якщо виникли будь-які проблеми на будь-якому етапі пишіть в телеграм: @brainqdead

## Налаштування системи та встановлення скрипта
```shell
apt update && apt upgrade -y
```
у процесі виконання команди вам потрібно буде пару разів прописати Y, щоб підвердити оновлення, тому слідкуйте уважно, наприклад:  
![image](https://user-images.githubusercontent.com/74729549/167951097-968270a2-d5f6-4761-8709-4ccdcc66f103.png)

```shell
pkg install python -y && pkg install rust -y && pkg install git -y
pip install --upgrade pip
cd ~
```  
  
***команда `cd ~` нічого не виводить, але це нормально - йдіть далі***  
  
Далі специфічно в залежності від архітектури процесора. Але виставив пріоритет, якщо ви не знаєте яка у вас архітектура то пробуйте встановлювати цю зміну перебираючи цей пріоритет до поки запуск пошуку не буде успішним.  
  
***команда `export ...` нічого не виводить, але це нормально - йдіть далі***  
  
  
Пріоритети(обирайте один з усіх):  
- export CARGO_BUILD_TARGET=aarch64-linux-android
- export CARGO_BUILD_TARGET=arm-linux-androideabi
- export CARGO_BUILD_TARGET=armv7-linux-androideabi
- export CARGO_BUILD_TARGET=i686-linux-android
- export CARGO_BUILD_TARGET=thumbv7neon-linux-androideabi
- export CARGO_BUILD_TARGET=x86_64-linux-android  

У одного адміна спрацювало так:  
- export CARGO_BUILD_TARGET=aarch64-linux-android
У іншого так:  
- export CARGO_BUILD_TARGET=x86_64-linux-android

**ЯКЩО ВИ ОБЕРЕТЕ НЕ ТУ АРХІТЕКТУРУ ТО ПРИ ЗАПУСКУ ПОШУКУ БУДЕ ПОМИЛКА  - РІШЕННЯ: ОБИРАТИ НАСТУПНУ АРХІТЕКТУРУ І РОБИТИ УСІ КОМАНДИ, ЩО НИЖЧЕ** 
  
```shell
termux-setup-storage
pkg install git -y
cd ~/storage/shared
rm -rf proxy_finder
git clone https://github.com/porthole-ascend-cinnamon/proxy_finder
cd proxy_finder
pip install -r termux_requirements.txt
```  
  
***команда `rm -rf proxy_finder` може нічого не вивести, або вивести таку помилку `rm: cannot remove 'proxy_finder': No such file or directory`, але це нормально - йдіть далі:***  
## Запуск пошуку
після усіх встановлень вам залишиться кожен день робити лишей цей пункт:  
```shell
cd ~/storage/shared/proxy_finder
python finder.py --threads 5000
```
де 5000 можна замінити на будь-яке значення від 1 до 10000, але **ми рекомендуємо саме 5000, які стоять за замовчуванням**  
Приклад успішного запуску:  
![image](https://user-images.githubusercontent.com/74729549/167952372-d54097a7-a112-4fc3-89b0-1d38951305f8.png)


Також через Termux ви можете запускати mhddos_proxy, ось інструкція як це зробити: https://telegra.ph/mhddos-proxy-for-Android-with-Termux-03-31


# vortex-_- Dotfiles

Моя персональная конфигурация рабочего стола на базе "Arch Linux", "MangoWM" и "DankMaterialShell (DMS)".

## Особенности

 -"MangoWM": Плавающие окна, плавные анимации, скруглённые углы.
 -"DankMaterialShell": Стильная панель с центром управления.
 -"Kitty": Настроенный терминал с прозрачностью и анимацией курсора.

## Зависимости

 *sudo pacman -S mango dms kitty swaybg xdg-desktop-portal-gtk polkit-kde-agent msnap*

## Установка

1.Склонируйте репозиторий:

 *git clone https://github.com/НИК/vortex-dots.git*

2.Запустите скрипт:
 *chmod +x install.sh*
 *./install.sh*

## Горячие клавиши (схожие с "Windows", для легкого перехода на WM)

 -'Super+T' -Терминал (kitty)
 -'Super+D' -Поиск приложений DMS
 -'Super+E' -Проводник (nautilus)
 -'Alt+F4' -Закрыть окно
 -'Alt+Shift' -Сменить раскладку (RU-EN)
 -'Super + U' -Скриншот

## Скриншоты

![Showcase 1](screenshots/showcase1.png)
![Showcase 2](screenshots/showcase2.png)
![Showcase 3](screenshots/showcase3.png)

## Благодарности

Особая благодарность **[xtheeq](https://github.com/xtheeq)** за разработку **[msnap](https://github.com/xtheeq/msnap)**. Этот превосходный инструмент для создания скриншотов был специально создан для MangoWM. Его интуитивно понятный интерфейс и бесшовная интеграция делают рабочий процесс гораздо более плавным и приближённым к тому, что пользователи привыкли видеть в GNOME.

*Если вы находите функцию скриншотов полезной, пожалуйста, рассмотрите возможность поставить оценку оригинальному [репозиторию msnap](https://github.com/xtheeq/msnap)!*

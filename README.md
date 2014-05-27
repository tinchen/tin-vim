基本目錄結構
===========================


  - bundle：各式外部的 vim plugins，主要透過下面的指令加入：
    > git submodule add https://github.com/plugin-path.git bundle/vim-plugin-name

  - 1st-init：用來存放個人客製化的 vim 設定：

    > * ftdetect：   檔案類型判斷與對應設定

    > * ftplugin：  依據不同檔案類型才載入執行的設定

    > * plugin：     全域執行的設定

    > * vim-airline：清楚而且漂亮的 status line 顯示需一併下載 powerline-fonts 使用

  - colors：   各式的顏色主題檔案

  - docs：     個人學習紀錄的文件

----------

參考資料
===========================


[Plugin Layout in the Dark Ages] [1]

[1]:http://goo.gl/HpKVj


# Flyme_devices_F100

金立智能手机F100 FlymeOS 基于官底amigo3.1.14适配（Android 5.1.1）。

1.下载代码
===
使用下面的命令下载Flyme代码：

    $ mkdir FlymeOS
    $ cd FlymeOS
    $ repo init -u https://github.com/FlymeOS/manifest.git -b lollipop-5.1
    $ repo sync -c -j4

2.编译刷机包
===
还是在devices目录，使用下面的命令下载代码：

    $ git clone https://github.com/GuaiYiHu/Flyme_devices_F100.git -b lollipop-5.1 F100
    $ source ../build/envsetup.sh && cF100 && make fullota -j8

3.已知bug
===

* 无法接收短信（似乎是部分MTK机器的通病）


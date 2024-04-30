basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ uname -a
Linux basfeo-Standard-PC-Q35-ICH9-2009 6.2.0-39-generic #40-Ubuntu SMP PREEMPT_DYNAMIC Tue Nov 14 14:18:00 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ uname
Linux
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ cat>Pets<<EOT
> dogs
> cats
> hamsters
> EOT
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ ls -la | grep Pets
-rw-rw-r--  1 basfeo basfeo        19 Apr 15 15:48 Pets
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ cat Pets 
dogs
cats
hamsters
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ cat>Pack_animals<<EOT
> horses
> donkeys
> camels
> EOT
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ cat Pack_animals
horses
donkeys
camels
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ cat Pets >> Pack_animals && mv Pack_animals Human_Friends && cat Human_Friends
horses
donkeys
camels
dogs
cats
hamsters
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$

basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ ls 
Desktop  Documents  Downloads  GB  google-chrome-stable_current_amd64.deb  Human_Friends  Music  nginx-docker  Pets  Pictures  Public  snap  stepic-db-intro  Templates  Videos

Тут надо вставить скрин.

basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ mkdir Human_Friends_dir && mv Human_Friends Human_Friends_dir && ls Human_Friends_dir
Human_Friends

Тут скрин с заущенным mysql и mysql workbench

sudo apt download vim
[sudo] password for basfeo: 
Get:1 http://ru.archive.ubuntu.com/ubuntu lunar-updates/main amd64 vim amd64 2:9.0.1000-4ubuntu3.3 [1,811 kB]
Fetched 1,811 kB in 1s (2,615 kB/s)
W: Download is performed unsandboxed as root as file '/home/basfeo/vim_2%3a9.0.1000-4ubuntu3.3_amd64.deb' couldn't be accessed by user '_apt'. - pkgAcquire::Run (13: Permission denied)
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ ls -la
total 103496
drwxr-x--- 23 basfeo basfeo      4096 Apr 15 16:16 .
drwxr-xr-x  3 root   root        4096 Oct 10  2023 ..
-rw-------  1 basfeo basfeo      7695 Mar 27 12:01 .bash_history
-rw-r--r--  1 basfeo basfeo       220 Jan  7  2023 .bash_logout
-rw-r--r--  1 basfeo basfeo      3771 Jan  7  2023 .bashrc
drwx------ 12 basfeo basfeo      4096 Jan  4 16:15 .cache
drwx------ 17 basfeo basfeo      4096 Mar 12 16:04 .config
drwxr-xr-x  2 basfeo basfeo      4096 Oct 10  2023 Desktop
drwxr-xr-x  2 basfeo basfeo      4096 Oct 10  2023 Documents
drwxr-xr-x  2 basfeo basfeo      4096 Jan  4 15:48 Downloads
drwxrwxr-x  5 basfeo basfeo      4096 Mar  4 11:02 GB
drwx------  3 basfeo basfeo      4096 Oct 10  2023 .gnome
drwx------  2 basfeo basfeo      4096 Apr 15 15:45 .gnupg
-rw-rw-r--  1 basfeo basfeo 104030680 Oct  2  2023 google-chrome-stable_current_amd64.deb
drwxrwxr-x  2 basfeo basfeo      4096 Apr 15 15:56 Human_Friends_dir
-rw-------  1 basfeo basfeo        20 Apr 15 15:57 .lesshst
drwx------  4 basfeo basfeo      4096 Oct 10  2023 .local
drwxr-xr-x  2 basfeo basfeo      4096 Oct 10  2023 Music
drwx------  3 basfeo basfeo      4096 Jan  4 15:50 .mysql
drwxrwxr-x  2 basfeo basfeo      4096 Feb 26 13:04 nginx-docker
-rw-rw-r--  1 basfeo basfeo        19 Apr 15 15:48 Pets
drwxr-xr-x  3 basfeo basfeo      4096 Oct 19 15:02 Pictures
drwx------  3 basfeo basfeo      4096 Oct 10  2023 .pki
-rw-r--r--  1 basfeo basfeo       807 Jan  7  2023 .profile
drwxr-xr-x  2 basfeo basfeo      4096 Oct 10  2023 Public
drwx------  5 basfeo basfeo      4096 Mar 12 15:25 snap
drwx------  2 basfeo basfeo      4096 Jan  4 15:57 .ssh
drwxrwxr-x 11 basfeo basfeo      4096 Jan  4 15:50 stepic-db-intro
-rw-r--r--  1 basfeo basfeo         0 Oct 10  2023 .sudo_as_admin_successful
drwxr-xr-x  2 basfeo basfeo      4096 Oct 10  2023 Templates
drwxr-xr-x  2 basfeo basfeo      4096 Oct 10  2023 Videos
-rw-r--r--  1 root   root     1810648 Dec 14 18:25 vim_2%3a9.0.1000-4ubuntu3.3_amd64.deb
-rw-------  1 basfeo basfeo      5877 Mar  4 10:57 .viminfo
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ sudo dpkg -i vim_2%3a9.0.1000-4ubuntu3.3_amd64.deb 
basfeo@basfeo-Standard-PC-Q35-ICH9-2009:~$ sudo dpkg -i vim_2%3a9.0.1000-4ubuntu3.3_amd64.deb 
Selecting previously unselected package vim.
(Reading database ... 212117 files and directories currently installed.)
Preparing to unpack vim_2%3a9.0.1000-4ubuntu3.3_amd64.deb ...
Unpacking vim (2:9.0.1000-4ubuntu3.3) ...
Setting up vim (2:9.0.1000-4ubuntu3.3) ...
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/ex (ex) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rview (rview) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/rvim (rvim) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vi (vi) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/view (view) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vim (vim) in auto mode
update-alternatives: using /usr/bin/vim.basic to provide /usr/bin/vimdiff (vimdiff) in auto mode


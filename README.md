
gyazzcmd
========
use [gyazz](http://gyazz.com) on CUI

Install
=======

  % git clone git://github.com/shokai/gyazzcmd.git


Use
===

  % gyazz
  % gyazz search "hashimoto" "shokai"
  % gyazz getdata "shokai" "test" 3


Make plugins
============

Put ruby script in "cmds" directory.

And implement following methods.

* run
* help

so few.

see [plugins](http://github.com/shokai/gyazzcmd/tree/master/cmds/).

# Intro 
This project manages a sandbox for [netflow](http://bsdly.blogspot.ca/2014/02/yes-you-too-can-be-evil-network.html)

# Usage

This box uses NFS since openbsd does not support Virtualbox tools, you will need to:

 * Install local NFS server:
```bash
$ sudo apt-get install nfs-kernel-server nfs-common portmap
```

 * Expose NFS ports to the private network see [this](http://askubuntu.com/questions/103910/nfs-is-blocked-by-ufw-even-though-ports-are-opened).

 * Then you can proceed as usuaul:

```bash
  $ bundle install 
  $ librarian-puppet install 
  $ vagrant up
```

The Openbsd box can be created via [this](https://github.com/narkisr/veewee/tree/master/templates/openbsd54_amd64) veewee template.

Configuration is based upon:

* http://sinaninyeri.blogspot.co.il/2013/02/openbsd-nfsen-install.html
* http://meefirst.blogspot.co.il/2012/02/installing-nfsen-on-freebsd-9.html
* http://mailman.theapt.org/pipermail/openbsd-newbies/2012-June/004545.html
* http://bsdly.blogspot.co.il/
* http://www.hautefeuille.eu/netflow-openbsd.html

# Copyright and license

Copyright [2014] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at:

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

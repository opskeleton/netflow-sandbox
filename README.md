# Intro 
This project manages a sandbox for [netflow](url)

# Usage

This box uses NFS since openbsd does not support Virtualbox tools, you will need to:

 * Install local NFS server
```bash
$ sudo apt-get install nfs-kernel-server nfs-common portmap.
```

 * Expose NFS ports to the private network see [this](http://askubuntu.com/questions/103910/nfs-is-blocked-by-ufw-even-though-ports-are-opened)

```bash
  $ bundle install 
  $ librarian-puppet install 
  $ vagrant up
```

# Copyright and license

Copyright [2014] [First Last Name]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.

You may obtain a copy of the License at:

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

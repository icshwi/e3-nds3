# e3-nds3

**Not recommend to use any system for any future development**.



## ESS bitbucket account is need

One needs to have the ESS bitbucket accout. **make init** will ask the ESS user name and its password. In order to minimize that case, one can add the ssh key in ones account. After that, the following command should be executed in order to use the different url instead of the default one.


```
git config --global url."git@bitbucket.org:".insteadOf https://bitbucket.org/
```

## Procedure

```
make init
make patch
make build
make install
```

## Notice
### Patch
It is mandatory to apply patch files now. 

```
make patch
```

### Headers location
Due to the limitation of require makefile, we cannot put headers in target directory include/nds3, so the workaround without changing any codes in require and nds3, we use the symbolic links of all headers file while compiling. It was done by 

```
make headerlinks
```
We add that rule in the install rule. Please see configure/E3/RULES_{E3, NDS}. 


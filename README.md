# data_over_git_ssh

These scripts are useful in following case

- You have ssh access to a server where you can store data.
- You want git to manage your data.

If you can, you should set-up `gitolite`. Setting up gitolite is bit involved but once set-up, it is incredibly powerful utility. 

Most of the scripts are wrapper over git commands. I use `sshpass` here since public/private key authentication was not working on my data-server. 

`bhandar` is Hindi for storage. Replace `bhandar` with git to make sense of scripts. The documentation of this repository is still evolving. 

If you are interested using these scripts, do let me know. It will give me motivation to write the documentation.

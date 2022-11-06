## RedditFilter (IPA)
- This is the sideloaded version of RedditFilter, which was made by @level3tjg. 
- What does it do? See [here](https://level3tjg.me/repo/depictions/?p=com.level3tjg.redditfilter).
- I'm quite busy but I'll try to update this repo once in a while.

## Building
_Since [RedditFilter](https://github.com/level3tjg/RedditFilter) and [RedditSideloadFix](https://github.com/level3tjg/RedditSideloadFix) are open-source, you can always build your own ipa from the source code._

### Method 1: theos-jailed
#### Requirement:
- Xcode & Xcode Command Line Tools.
- theos & theos-jailed (see [theos.dev](https://theos.dev)).

#### Step:
1. Clone this repo: 

`git clone --recursive https://github.com/qnblackcat/https://github.com/qnblackcat/RedditFilter_Sideloaded.git`

2. Update submodules: 

`cd ./RedditFilter_Sideloaded && git submodule update --remote --merge`

3. Open the `Makefile` and edit the path to your decrypted Reddit ipa: 

`open ./Makefile`

4. Run `make package`. The process might take several minutes. The IPA is stored in `./RedditFilter_Sideloaded/packages`

***
```
$ git clone --recursive https://github.com/qnblackcat/https://github.com/qnblackcat/RedditFilter_Sideloaded.git
$ cd ./RedditFilter_Sideloaded && git submodule update --remote --merge
$ make package
```

### Method 2: Github action
#### Requirement:
- A Github account.
- A decrypted Reddit ipa: you must upload it to a cloud storage service such as Dropbox, OneDrive, Google Drive... or whatever you want. After that, get the direct download link to the IPA.

## Step:
1. Fork this repository.
2. In your forked repository, go to the **Actions** tab > Select **Build and Release RedditFilter** action > **Run workflow** > Enter everything it requires. _Make sure you use a direct link to the IPA._
3. That's it! Grab a coffee ☕️ The process might take several minutes. You will see the IPA in the **Releases tab** of your repository.

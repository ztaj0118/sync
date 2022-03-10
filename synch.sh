echo "send file"
#!/bin/bash
export HOME=/tmp # so Git can write .gitconfig here
CLONE_DIR=/tmp/src-repo
sudo chmod -R 777 /tmp/src-repo
DEST_REPO='https://aj0118+1-at-547321245783:fjJvzOFnk0fM02pV0NMJLH7sIRALPh3FXpFbQ8EBWYs=@git-codecommit.ap-south-1.amazonaws.com/v1/repos/sync'
SRC_REPO='https://ztaj0118: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@github.com/ztaj0118/sync.git'

rm -rf $CLONE_DIR
mkdir $CLONE_DIR
git clone --mirror "$SRC_REPO" $CLONE_DIR
cd $CLONE_DIR
git remote add dest "$DEST_REPO"
git push dest --mirror
echo 'DONE! Successfully mirrored source repo to destination!'

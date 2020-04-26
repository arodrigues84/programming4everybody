#to test commit
=begin
GITHUB_USERNAME="arodrigues84"
cd ~/code/$GITHUB_USERNAME

# Clone the repository from github and connect to @lewagonlisbon's one (run JUST ONCE):
git clone https://github.com/$GITHUB_USERNAME/programming4everybody.git
cd programming4everybody
git remote add upstream https://github.com/lewagonlisbon/programming4everybody.git
git fetch --all
git reset --hard upstream/master

# if you don't have any change (type `git status` in your terminal), just push the commits you just got from the upstream (us!) to your github repo:
git push -f origin master
​
# or
​
# if you have changes (remember, ONLY add/edit/delete files in your test folder! if you touch our files the changes you do will be overwritten the next time you reset to the upstream):
git add . # add these changes to the "staging area" (a "place" where we put the changed files we decided to save)
git commit -m "A short description of the changes" # create a commit (doing a commit saves the state of your app, it's like adding a "checkpoint")
git push -f origin master # push everything to github! (our new commits + your new commit)
​
# Notes:
# - the `.` in the git add means all the changes from all the files inside the repo. The `.` frequently means all/everything when used in the terminal
# - the `-m` in the git commit is just to add a message (you have to! otherwise you don't know what you did before and can't eventually go back)
# - the `-f` in the git push is to force a push, you might need to force the push here, because we could have different versions, so let's just use it (nothing bad will happen otherwise!)
=end
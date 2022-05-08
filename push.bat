@echo off
set project=zcu104_demo
git add %project%.gen
git add %project%.hw
git add %project%.ip_user_files
git add %project%.sim
git add %project%.srcs
git add %project%.xpr
git add push.bat README.md 
git commit -m "No commit message"
git push origin main
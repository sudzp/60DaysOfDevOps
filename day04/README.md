### Day 04 Challenges: 

🔹Challenge 1: Perform an interactive rebase to modify commit history (rename, squash, reorder commits).

        git rebase -i HEAD~4
        git push origin --force  (Be careful when force-pushing, especially on shared branches)

🔹 Challenge 2: Use git cherry-pick to apply a specific commit from another branch to your current branch.

        #Check the commit history of the branch where the commit exists:
        git log --oneline hotfix-branch 
        #Copy the commit hash & switch to target branch
        git checkout main
        git cherry-pick <commit hash>


🔹 Challenge 3: Create a merge conflict scenario and manually resolve it using git merge and git rebase.

        touch conflict.txt ( create file in main branch)
        git checkout -b feature_one ( create one branch)
        echo "This change is from feature_one" > conflict.txt
        git add conflict.txt
        git commit -m "This is feature branch one changes"

        #Create one more branch
        git checkout main
        git checkout -b feature_two ( create another branch)
        echo "This change is from feature_two" > conflict.txt
        git add conflict.txt
        git commit -m "This change is from feature_two"

        #Now lets try to merge branch_one to branch_two
        git checkout feature_two
        git merge feature_one

        # Now Open conflict.txt, and resolve conflict:
        git add conflict.txt
        git commit -m "Resolved merge conflict"


        ##Create a Conflict Using git rebase
        git reset --hard HEAD~1 ( using same branches and commit)
        git checkout feature_one
        git rebase feature_two

        # now again git detects conflict, Resolve the conflict 
        git add conflict.txt
        git rebase --continue


🔹 Challenge 4: Undo a commit using git reset (soft, mixed, and hard) and git revert – understand the differences.

🔹 Challenge 5: Amend the last commit message and add a forgotten file to the last commit using git commit --amend.

🔹 Challenge 6: Set up Git hooks (pre-commit or post-commit) to automate a simple check before committing changes.

🔹 Challenge 7: Rebase a feature branch on top of the main branch without creating unnecessary merge commits.

🔹 Challenge 8: Create a branch, make multiple commits, then squash them into a single commit using git rebase -i.
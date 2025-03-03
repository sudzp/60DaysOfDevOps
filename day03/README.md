### Day 03 Challenges:  
🔹 Challenge 1: Fork and clone an open-source project (Sample Project Link)

        git clone https://github.com/sudzp/eks-auto-mode.git
🔹 Challenge 2: Create a new branch (feature-branch), switch, and commit changes.

        git checkout -b feature-branch
        echo "This is feature-branch" >> feature.md
        git add feature.md
        git commit -m "Adding new feature"


🔹 Challenge 3: Merge feature-branch into main and push the changes.

        git checkout main
        git merge feature-branch
        git push origin main

🔹 Challenge 4: Use git reset or git revert to undo a commit.

        git checkout feature-branch
        git revert f1549d8c200b2b44063cf94481502676c9fe3c95

🔹 Challenge 5: Rebase feature-branch onto main and understand the difference.

        git checkout feature-branch
        git rebase main


🔹 Challenge 6: Create a PR on GitHub from a feature branch.

        https://github.com/sudzp/eks-auto-mode/pull/1

🔹 Challenge 7: Create conflicting changes in different branches and resolve them.


🔹 Challenge 8: git stash to save and restore uncommitted changes.

        touch second-feature.txt
        git add second-feature.txt
        git status
        git stash
        git status

🔹 Challenge 9: Add version tags to commits and push them.
    
        git tag -a v1.0.0 -m "Released second feature"
        git push origin v1.0.0


🔹 Challenge 10: Use git commit --amend and git rebase -i to edit past commits.

        git commit --amend
        git commit --amend -m "New improved commit message"
        git push origin --force
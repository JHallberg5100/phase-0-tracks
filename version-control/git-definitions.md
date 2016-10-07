# Git Definitions -Jim Hallberg

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is the ability to protect your code base while also mucking about making changes.  It allows a developer to work on code, and have the ability to quarantine newly made work so that it does not break old reliable code.  Then, once it is stable it can be merged into the working file.  It also allows rolling back to old versions of code just in case a hidden bug makes everything burst into metaphorical flame.

* What is a branch and why would you use one?
A branch is a quarantined version of code.  It is a copy of the preexisting code in a separate working directory.  This allows experimentation in safety.  Also, it can be used to manage multiple aspects of a project at once, by having separate branches for each feature set during development, before final merging.

* What is a commit? What makes a good commit message?
A commit makes a savepoint in the code.  One should commit any time they made changes worth keeping and are leaving.  The commit message should be pithy, and describe what work was done in this commit as opposed to priors.  This makes determining what commit to role back to easy.

* What is a merge conflict?
A merge conflict is when branches are unable to be combined back into the master.  This can happen for multiple reasons, but often because there are two+ versions of the same thing all trying to overwrite the master.  When there are multiple differing attempts to lay claim to the same metaphorical real estate, the computer brain running the process gets confused and does not know what to do.  

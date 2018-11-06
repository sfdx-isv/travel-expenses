# Prerequisite Certification: SFDX for ISVs (Workshop Two)

In order to certify that you've completed the prerequisites for the second **Salesforce DX for ISVs Workshop**, please complete the five steps as presented in this document.

> :warning:**IMPORTANT:** You must complete the steps as presented in this document **without taking shortcuts** that might be apparent to experienced users. Completing the steps as presented will help to surface any technical issues with your local and/or GitHub account setup.  Finding and fixing these issues ahead of time will help you get the most out of the workshop.

## Step One: Make sure you are logged into GitHub.com

If you're not already logged in to GitHub, go to https://github.com/login and log in with the GitHub account that you plan on using with the **Salesforce DX for ISVs Workshop**.

## Step Two: Fork the `sfdx-isv/travel-expenses` repository

After logging into GitHub, you will need to make a personal copy of the `sfdx-isv/travel-expenses` repository by forking it.

To fork the `sfdx-isv/travel-expenses` repository, follow these steps.

### Use the GitHub Website to fork the `sfdx-isv/travel-expenses` repository:

1. Open your web browser to https://github.com/sfdx-isv/travel-expenses
2. Click the **Fork** button at the top-right of the repository's page

![How to Fork a Repository](/images/W00_U02_fork-travel-expenses-repo.png)

### You will see this image while your fork is being created:

![Repository Fork in Progress](/images/W00_U02_forking-travel-expenses-repo-in-progress.png)

### Once the `sfdx-isv/travel-expenses` repository has been forked, your screen will look similar to this:

1. The URL will include your GitHub username after `github.com` and before `travel-expenses`, indicating that the forked repository is now part of your account.
2. The title of the repository will also indicate that this repository belongs to your GitHub account, and that it was originally forked from the [`sfdx-isv/travel-expenses`](https://github.com/sfdx-isv/travel-expenses) repo.

![Repository Fork in Progress](/images/W00_U02_forking-travel-expenses-repo-success.png)


## Step Three: Clone your fork of the `sfdx-isv/travel-expenses` repository to your local machine

After forking the `sfdx-isv/travel-expenses` repository, you must clone it to your local machine in order to add your information to the Prerequisite Certification table.

To clone your fork of the `sfdx-isv/travel-expenses` repository, follow these steps.

### Get the HTTPS URI of your forked repository:

1. From the **Code** tab of your forked repository, click the **Clone or Download** button.
2. Make sure that the **Clone with HTTPS** option is specified.
3. Click the **Copy to Clipboard** 

![Get the HTTPS URI of your Forked Repository](/images/W00_U02_copy-travel-expenses-fork-repo-url.png)


### Execute the `git clone` command using your terminal or command prompt:
```bash
git clone  PASTE_YOUR_GITHUB_URI_HERE  my-travel-expenses-fork
```
1. Type the `git clone` command at the command line.
    * **IMPORTANT:** Make sure to use the HTTPS URI of your forked repository in place of `PASTE_YOUR_GITHUB_URI_HERE`.
    * **IMPORTANT:** Remember to specify the local folder name `my-travel-expenses-fork` **after** your GitHub URI to ensure that your forked repository is cloned into a local folder using that name.
    * The screenshot shows the what this command and its results look like when used by the developer "Jessie Daniels".

![Use 'git clone' to get a local copy of your forked repository](/images/W00_U02_git-clone-forked-repo-success.png)


## Step Four: Edit `CERTIFICATION.md` and push the changes to your forked repository on GitHub

After cloning your forked repository, you will have a local copy of it on your local machine.  From here you'll need to add your information to the file `CERTIFICATION.md` before pushing your changes back into your forked repository on GitHub.

To do this, follow these steps.

### Open the file `CERTIFICATION.md` in VS Code:

1. Using VS Code, open the folder containing your cloned repository (`my-travel-expenses-fork`).
2. In the VS Code Explorer, double-click on the file `CERTIFICATION.md` to open it.
3. Observe the last row of the markdown table (line 11). 
    * In the next step you will be editing this line.

![Open the file CERTIFICATION.md in VS Code](/images/W00_U02_open-certification-md-in-vs-code.png)

### Edit the file `CERTIFICATION.md`, then stage and commit your changes:

1. Substitute your name, GitHub username, and today's date for the values `**YOUR NAME HERE**`, `**YOUR GITHUB USERNAME HERE**`, and `DATE YOU ADDED YOUR NAME`.
    * **IMPORTANT:** Remember to save your changes to this file.
2. Open the VS Code integrated terminal by pressing `CMD+J` (`CTRL+J` on Windows) and clicking on the **TERMINAL** tab in the panel.
3. Execute the command `git add -A` to stage your change
4. Execute the command `git status` to verify that `CERTIFICATION.md` is staged for commit.
5. Execute the command `git commit -m "Update CERTIFICATION.md - YOUR_FIRST_AND_LAST_NAME"` 
    * **IMPORTANT:** Make sure that you substitute your own first and last name for `YOUR_FIRST_AND_LAST_NAME`.

![Edit the file CERTIFICATION.md then stage and commit your changes](/images/W00_U02_edit-and-commit-certification-md.png)

### Push your changes to GitHub:

1. Execute the command `git status`
    * You should see that your local branch is ahead of `origin/master` by 1 commit.
2. Execute the command `git push origin master`
    * You should see output that is similar to the screenshot, below.

![Push your changes to GitHub](/images/W00_U02_execute-git-status-and-git-push.png)

## Step Five: Create a Pull Request to merge your forked repository with the base repository

The final step in the Workshop Prerequisite Certification process is the creation of a pull request to merge the changes from your forked repository into the base **sfdx-isv/travel-expenses** repository.  

To do this, follow these steps.

### Begin creation of a new Pull Request:

1. Open the GitHub website and make sure that you are inside of **your** forked `travel-expenses` repository.
2. Open the **Pull requests** tab in your forked repository.
3. Click the **New pull request** button to start the process of creating a new pull request.

![Begin creation of a new Pull Request](/images/W00_U02_begin-creating-pull-request.png)

### Verify the details of your Pull Request.

1. Clicking the **New pull request** button on the previous step opens the **Compare Tool** in the `sfdx-isv/travel-expenses` base repository.
2. Verify that you are comparing changes **FROM** your forked `travel-expenses` repository (on the right) **TO** the base `sfdx-isv/travel-expenses` repository (on the left).
3. Near the bottom of the page, you'll see a list of files that are different between the forked and base repositories.  
    * You should see a message that you have **1 changed file**,
    * You should also be able to see the details of the change you made to `CERTIFICATION.md`.
4. If everything looks right, click the **Create pull request** button.

![Verify the details of your Pull Request](/images/W00_U02_compare-changes-before-creating-pull-request.png)

### Add a subject and comments for your Pull Request, then create it.

1. Add the subject `Prerequisite Certification - YOUR_FIRST_AND_LAST_NAME_HERE`.  Make sure to replace the placeholder text with your actual first and last name.
2. Add a comment explaining that you are certifying your completion of the prerequisites for **Salesforce DX for ISVs - Workshop Two**.
3. Click the **Create pull request** button.

![Add a subject and comments for your Pull Request before creating it](/images/W00_U02_finalize-details-and-open-the-pull-request.png)

### Verify that your Pull Request was created successfully.

1. Make sure you're in the base repository, `sfdx-isv/travel-expenses`.
2. Open the **Pull requests** tab.
3. Look for the Pull Request that you created (ie. the one that has a title with your name in it).

![Verify that your Pull Request was created successfully](/images/W00_U02_confirm-the-creation-of-your-pull-request.png)

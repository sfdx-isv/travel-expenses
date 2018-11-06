# Prerequisite Certifiation: SFDX for ISVs (Workshop Two)

In order to certify that you've completed the prerequisites for the second **Salesforce DX for ISVs Workshop**, you must take the following steps.

## Step One: Make sure you are logged into GitHub.com

Go to https://github.com/login and log in to GitHub with the GitHub account that you plan on using with the **Salesforce DX for ISVs Workshop**.

## Step Two: Fork the "travel-expenses" repository

After logging into GitHub, you will need to make a personal copy of the **travel-expenses** repository by forking it.  

### Use the GitHub Website to fork the "travel-expenses" repository:

1. Open your web browser to https://github.com/sfdx-isv/travel-expenses
2. Click the **Fork** button at the top-right of the repository's page

![How to Fork a Repository](/images/W00_U02_fork-travel-expenses-repo.png)

### You will see this image while your fork is being created:

![Repository Fork in Progress](/images/W00_U02_forking-travel-expenses-repo-in-progress.png)

### Once the "travel-expenses" repository has been forked, your screen will look similar to this:

1. The URL will include your GitHub username after `github.com` and before `travel-expenses`, indicating that the forked repository is now part of your account.
2. The Title of the repository will also indicate that this repository belongs to your GitHub account, and that it was originally forked from the [sfdx-isv/travel-expenses](https://github.com/sfdx-isv/travel-expenses) repo.

![Repository Fork in Progress](/images/W00_U02_forking-travel-expenses-repo-success.png)


## Step Three: Clone your fork of the "travel-expenses" repository to your local machine

After forking the **travel-expenses** repository, you must clone it to your local machine in order to add your information to the Prerequisite Certification table.

To clone your fork of the **travel-expenses** repository, follow these steps.

### Get the HTTPS URI of your forked repository:

1. From the **Code** tab of your forked repository, click the **Clone or Download** button.
2. Make sure that the **Clone with HTTPS** option is specified.
3. Click the **Copy to Clipboard** 

![Get the HTTPS URI of your Forked Repository](/images/W00_U02_copy-travel-expenses-fork-repo-url.png)


### Execute this command to clone your forked repository:
```bash
git clone  PASTE_YOUR_GITHUB_URI_HERE  my-travel-expenses-fork
```
1. Type the `git clone` command at the command line, **making sure to use the HTTPS URI of your forked repository**. The screenshot below shows the URI of the forked repository belonging to an imaginary developer, Jessie Daniels.

![Use 'git clone' to get a local copy of your forked repository](/images/W00_U02_git-clone-forked-repo-success.png)

### Open the file `CERTIFICATION.md` in VS Code:

1. Using VS Code, open the folder containing your cloned repository (`my-travel-expenses-fork`).
2. In the VS Code Explorer, double-click on the file `CERTIFICATION.md` to open it.
3. Observe the last row of the markdown table (line 11). In the next step you will be editing this line.

![Open the file CERTIFICATION.md in VS Code](/images/W00_U02_open-certification-md-in-vs-code.png)

### Edit the file `CERTIFICATION.md`, then stage, commit, and push the changes:

1. Substitute your name, GitHub username, and today's date for the values `**YOUR NAME HERE**`, `**YOUR GITHUB USERNAME HERE**`, and `DATE YOU ADDED YOUR NAME`.
    * **IMPORTANT:** Remember to save your changes to this file.
2. Open the VS Code integrated terminal by pressing `CMD+J` (`CTRL+J` on Windows) and clicking on the **TERMINAL** tab in the panel.
3. Execute the command `git add -A` to stage your change
4. Execute the command `git status` to verify that `CERTIFICATION.md` is staged for commit.
5. Execute the command `git commit -m "Update CERTIFICATION.md - YOUR_FIRST_AND_LAST_NAME"` 
    * **IMPORTANT:** Make sure that you substitute your own first and last name for `YOUR_FIRST_AND_LAST_NAME`.

![Edit the file CERTIFICATION.md then commit and push changes](/images/W00_U02_edit-and-commit-certification-md.png)

### Begin creation of a new Pull Request:

1. Content TBA
2. Content TBA
3. Content TBA

![Begin creation of a new Pull Request](/images/W00_U02_begin-creating-pull-request.png)

### Verify the details of your Pull Request.

1. Content TBA
2. Content TBA
3. Content TBA

![Verify the details of your Pull Request](/images/W00_U02_compare-changes-before-creating-pull-request.png)

### Add a subject and comments for your Pull Request, then create it.

1. Content TBA
2. Content TBA
3. Content TBA

![Add a subject and comments for your Pull Request before creating it](/images/W00_U02_finalize-details-and-open-the-pull-request.png)

### Verify that your Pull Request was created successfully.

1. Content TBA
2. Content TBA
3. Content TBA

![Verify that your Pull Request was created successfully](/images/W00_U02_confirm-the-creation-of-your-pull-request.png)

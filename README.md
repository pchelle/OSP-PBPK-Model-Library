# OSP-PBPK-Model-Library

Library of released PBPK substance models and evaluation reports

## How to create evaluation reports

### Workflow

- Create a new branch from `create-reports` branch (e.g. `my-new-reports`)
- Define versions of evaluation tools by updating the csv file: `tools.csv`
- Define models to be evaluated by updating the csv file: `models.csv`
- Go to __Actions__ tab and select __Automated Evaluation Reports and Projects__ action.<br>
The following message should appear along with a __Run workflow__ button: `This workflow has a workflow_dispatch event trigger.`.
- Click on "Run workflow"
  - Select the branch you created and updated (e.g. `my-new-reports`)
  - Click on the green button "Run workflow" to trigger the action
- Wait for the evaluations to run and update the branch (e.g. `my-new-reports`)

### Checking reports

Once the evaluation have run successfully, the action appears with a green check mark &#x2705; and a new pull request to the `develop` branch with updated reports will be available.

You can then check the created/updated reports either on your branch or through the Pull Request.

> [!NOTE]
> The README file will be updated to indicate the tools used for the evaluations and models that were reported.
> This summary will account for models that could not be evaluated successfully by the workflow.

# Task: Power BI Set Credentials

## Overview

Sets credentials for the datasources of a dataset, dataflow, or report.

## Schema

```
- task: PowerBISetCredentials@1
  displayName: {string}
  inputs:
    connection: {string}
    type: {pickList}
    workspace: {string}
    name: {string}
    connectionStrings: {multiLine}
```

## Inputs

| Name | Label | Required | Type | Description
|------|-------|----------|------|------------
| Connection | Power BI connection | True | string | The service connection to Power BI.
| Type | Type | True | pickList | <ul><li>Dataflow</li><li>Dataset</li><li>Report</li></ul>
| Workspace | Workspace | False | string | The ID or name of the workspace. If not specified, your personal workspace will be used.
| Name | Name | True | string | The ID or name of the dataset, dataflow, or report.
| ConnectionStrings | Connection Strings | False | multiLine | Connection strings in JSON format. The keys are the names of the data sources.  The values are the connection strings.

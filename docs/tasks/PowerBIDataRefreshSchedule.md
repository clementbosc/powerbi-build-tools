# Task: Power BI Data Refresh Schedule

## Overview

Updates the data refresh schedule of a dataset or dataflow.

## Schema

```
- task: PowerBIDataRefreshSchedule@1
  displayName: {string}
  inputs:
    connection: {string}
    type: {pickList}
    workspace: {string}
    name: {string}
    enabled: {pickList}
    days: {string}
    times: {string}
    timeZone: {string}
    notifyOption: {pickList}
```

## Inputs

| Name | Label | Required | Type | Description
|------|-------|----------|------|------------
| Connection | Power BI connection | True | string | The service connection to Power BI.
| Type | Type | True | pickList | <ul><li>Dataflow</li><li>Dataset</li></ul>
| Workspace | Workspace | False | string | The ID or name of the workspace. If not specified, your personal workspace will be used.
| Name | Name | True | string | The ID or name of the dataset or dataflow.
| Enabled | Status | False | pickList | <ul><li>Disabled</li><li>Enabled</li><li>None</li></ul>
| Days | Days | False | string | An array of the days of the week.<br><br>Example: `[ "Monday", "Wednesday", "Friday" ]`
| Times | Times | False | string | An array of the times of the day.<br><br>Example: `[ "10:00", "14:00" ]`
| Time Zone | Time Zone | False | string | The name of the time zone from this list. [link](https://support.microsoft.com/help/973627/microsoft-time-zone-index-values).<br><br>Example: `Central Standard Time`
| NotifyOption | Notify Option | False | pickList | <ul><li>MailOnCompletion</li><li>MailOnFailure</li><li>None</li><li>NoNotification</li></ul>

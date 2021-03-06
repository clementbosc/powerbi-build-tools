# Task: Power BI Export

## Overview

Export a report.

## Schema

```
- task: PowerBIExport@1
  displayName: {string}
  inputs:
    connection: {string}
    workspace: {string}
    name: {string}
    fileFormat: {pickList}
    path: {filePath}
```

## Inputs

| Name | Label | Required | Type | Description
|------|-------|----------|------|------------
| Connection | Power BI connection | True | string | The service connection to Power BI.
| Workspace | Workspace | False | string | The ID or name of the workspace. If not specified, your personal workspace will be used.
| Name | Name | True | string | The ID or name of the report.
| FileFormat | File Format | True | pickList | <ul><li>PBIX</li><li>PDF</li><li>PNG</li><li>PPTX</li></ul>
| Path | Path | True | filePath | The path to save the exported file to.

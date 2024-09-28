# RemoveNotionPrefix.ps1

A PowerShell script to clean up file names by removing a specific prefix from all files within a given directory and its subdirectories. Designed for renaming files exported from Notion, but can be used in any scenario where files need to be renamed to remove a prefix.

## Features
- Recursively searches through all subdirectories of the specified path.
- Removes the prefix from file names up to the first occurrence of `__`.
- Automatically renames files without modifying the content.

## How to Use
1. Open the script in a text editor to specify the directory containing the files you want to rename. Update the `$directory` variable with the path to your target directory:
    ```powershell
    $directory = 'C:\path\to\your\directory'
    ```
   
2. Save the script as `RemoveNotionPrefix.ps1`.

3. Open PowerShell and navigate to the directory where the script is located:
    ```powershell
    cd "C:\path\to\script\location"
    ```

4. Run the script:
    ```powershell
    .\RemoveNotionPrefix.ps1
    ```

5. The script will process all files in the specified directory and its subdirectories, removing the prefix from file names.

### Example
If you have files named like:
- `9c025eef-3f1a-4d47-b914-d0c5c42f6308__Active_Directory_Overview`
- `a8b2ce4f-71f2-4a90-a927-94d4e7d92fbb__Attacking_Active_Directory`

After running the script, they will be renamed to:
- `Active_Directory_Overview`
- `Attacking_Active_Directory`

## Prerequisites
- Windows PowerShell.
- Basic knowledge of PowerShell scripting (to edit and run the script).

## Notes
- Ensure you have the necessary permissions to rename files in the target directory.
- Run the script in a safe environment before using it on important files.

###########################################
# Split the city file into smaller chunks #
###########################################

# Set the line counter to 0
$linecount = 0
# Set the file counter to 1
$filenumber = 1

# Set the file path
$sourcefilename = $PSScriptRoot + "\Cities.sql"

Write-Host "Splitting into file 1 ..."

# Set the size of the new chunk files
$maxsize = 252500

# The process reads each line of the source file, writes it to the target file and increments the line counter
$content = get-content $sourcefilename | % {
 Add-Content ($PSScriptRoot + "\04 - Insert Cities " + $filenumber + ".sql") "$_"
  $linecount++
  If ($linecount -eq $maxsize) {
    $filenumber++
    $linecount = 0
    Write-Host "Splitting into file" $filenumber "..."
  }
}

# Clean up
[gc]::collect() 
[gc]::WaitForPendingFinalizers()


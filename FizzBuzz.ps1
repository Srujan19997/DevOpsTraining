 [int]$StartNumber = Read-Host  'Enter the start number'
[int]$StopNumber = Read-Host 'Enter the stop number'
[int]$ElementsInLine=  Read-Host  'Enter number of elements to print in one line'
[int]$temp=0;
For($x = $StartNumber ; $x -le $StopNumber ; $x++,$temp++) {
  $Threes = $x % 3
  $Fives = $x % 5
  if($temp -eq $ElementsInLine)
  {
  $temp=0  
  Write-Host " "
  
  }

  If (($Threes -eq 0) -and ($Fives -eq 0)) 
  {
    Write-Host   "  FizzBuzz($x)" -NoNewline
  }
   Elseif ($Threes -eq 0) {
    Write-Host  "  Fizz($x)  " -NoNewline 
  } 
  Elseif ($Fives -eq 0) {
    Write-Host  "  Buzz($x)  " -NoNewline 
  } 
  Else {
    Write-Host  " "$x -NoNewline
  }
}

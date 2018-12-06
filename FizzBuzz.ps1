For($x = 1; $x -le 100; $x++) {
  $Threes = $x % 3
  $Fives = $x % 5

  If (($Threes -eq 0) -and ($Fives -eq 0)) 
  {
    Write-Host "FizzBuzz"
  }
   Elseif ($Threes -eq 0) {
    Write-Host "Fizz"
  } 
  Elseif ($Fives -eq 0) {
    Write-Host "Buzz"
  } 
  Else {
    Write-Host $x
  }
}
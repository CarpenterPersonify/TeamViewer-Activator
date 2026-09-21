Write-Host "Simple Calculator in PowerShell"

Write-Host "Enter the first number:"
$num1 = Read-Host
if (-not [double]::TryParse($num1, [ref]$null)) {
    Write-Host "Please enter a valid number!"
    exit
}
$num1 = [double]$num1

Write-Host "Enter an operator (+, -, *, /):"
$operator = Read-Host

Write-Host "Enter the second number:"
$num2 = Read-Host
if (-not [double]::TryParse($num2, [ref]$null)) {
    Write-Host "Please enter a valid number!"
    exit
}
$num2 = [double]$num2

switch ($operator) {
    "+" {
        $result = $num1 + $num2
    }
    "-" {
        $result = $num1 - $num2
    }
    "*" {
        $result = $num1 * $num2
    }
    "/" {
        if ($num2 -eq 0) {
            Write-Host "Error: Division by zero is not allowed!"
            exit
        }
        $result = $num1 / $num2
    }
    default {
        Write-Host "Invalid operator! Please use +, -, * or /."
        exit
    }
}

Write-Host "Result: $num1 $operator $num2 = $result"

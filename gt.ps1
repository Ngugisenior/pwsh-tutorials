function commit {
    Param
    (
         [Parameter(Mandatory=$true, Position=0)]
         [string] $message,
         [Parameter(Mandatory=$true, Position=1)]
         [string] $branch
    )

    $result = $message+(date)
    git add .
    git commit -m $result

    git push -u origin $branch

    Write-Output $result
    
}

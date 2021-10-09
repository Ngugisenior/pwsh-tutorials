function commit {
    Param
    (
         [Parameter(Mandatory=$true, Position=0)]
         [string] $message,
         [Parameter(Mandatory=$true, Position=1)]
         [string] $branch
    )

    git add .
    git commit -m $message+ date

    git push -u origin $branch
    
}

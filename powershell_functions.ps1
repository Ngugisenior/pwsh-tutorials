function cmmit {
    
    Param
    (
         [Parameter(Mandatory=$true, Position=0)]
         [string] $message,
         [Parameter(Mandatory=$true, Position=1)]
         [string] $branch
    )

    $message = $message + "" + (Get-Date)
    
    git add .

    git commit -m $message

    git push -u origin $branch

}

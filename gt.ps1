function commit {
    Param
    (
         [Parameter(Mandatory=$true, Position=0)]
         [string] $message,
         [Parameter(Mandatory=$true, Position=1)]
         [string] $branch
    )

    if (!$message){
        $message = "updates"
    }
    if (!$branch){
        $branch = "master"
    }


    git add .
    git commit -m $message

    git push -u origin $branch
    
}

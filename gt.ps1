function commit($message, $branch) {
    git add .
    git commit -m '{$message}'

    git push -u origin $branch
    
}

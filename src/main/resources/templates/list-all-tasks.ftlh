<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>All Tasks</title>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <h1 class="text-center my-3">To Do List</h1>
            <div class="list-group">
                <#list tasksList as task>
                    <div class="list-group-item list-group-item-action">
                        <div class="row">
                            <div class="col-9">
                                <h5 class="mb-1">${task.taskName}</h5>
                                <p>${task.details}</p>
                            </div>
                            <div class="col-3">
                                <small class="<#if task.status=="done">text-success<#elseif task.status=="pending">text-secondary</#if>">Status: ${task.status}</small><br>
                                <small>Due Date: ${task.taskDate}</small>
                            </div>
                        </div>
                        <a href="/task/update/id=${task.taskID}" class="btn btn-primary mt-2">Update</a>
                        <a href="/task/delete/id=${task.taskID}" class="btn mt-2">Remove</a>
                    </div>
                </#list>
            </div>
            <div>
                <a class="btn btn-primary text-center my-4" href="/task/create">Create New Task</a>
            </div>
        </div>
        <div class="col-3"></div>
    </div>
</body>
</html>
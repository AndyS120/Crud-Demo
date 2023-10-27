<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title><#if !isUpdate>Create New<#else>Update</#if> Task</title>
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="row">
        <div class="col"></div>
        <form class="col p-3 mt-2" action="<#if isUpdate>/task/update/id=${task.taskID}<#else>/task/create</#if>" name="task" method="post">
            <h1 class="form-label my-5"><#if !isUpdate>Create New<#else>Update</#if> Task</h1>
            <div class="input-group mb-2">
                <span class="input-group-text">Task Name:</span>
                <input type="text" class="form-control" placeholder="Task Name">
                <span class="input-group-text">Due Date:</span>
                <input type="date" class="form-control">
                <span class="input-group-text">Status:</span>
                <select class="form-select" id="status" name="status">
                    <option value="pending">Pending</option>
                    <option value="in-progress">In Progress</option>
                    <option value="done">Done</option>
                </select>
            </div>
            <div class="mb-3">
                <label class="form-label">Details</label>
                <textarea class="form-control" rows="3"></textarea>
            </div>
        <button type="submit" class="btn btn-primary">Save</button>
        </form>
        <div class="col"></div>
    </div>
</body>
</html>

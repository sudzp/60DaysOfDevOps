from django.shortcuts import render, redirect, get_object_or_404
from django_app.models import Task
from django_app.forms import TaskForm

# List all tasks
def task_list(request):
    tasks = Task.objects.all()
    return render(request, "django_app/task_list.html", {"tasks": tasks})

# Create a new task
def task_create(request):
    if request.method == "POST":
        form = TaskForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect("task_list")
    else:
        form = TaskForm()
    return render(request, "django_app/task_form.html", {"form": form})

# Update an existing task
def task_update(request, pk):
    task = get_object_or_404(Task, pk=pk)
    if request.method == "POST":
        form = TaskForm(request.POST, instance=task)
        if form.is_valid():
            form.save()
            return redirect("task_list")
    else:
        form = TaskForm(instance=task)
    return render(request, "django_app/task_form.html", {"form": form})

# Delete a task
def task_delete(request, pk):
    task = get_object_or_404(Task, pk=pk)
    if request.method == "POST":
        task.delete()
        return redirect("task_list")
    return render(request, "django_app/task_confirm_delete.html", {"task": task})


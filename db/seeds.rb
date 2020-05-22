User.destroy_all
Project.destroy_all
Task.destroy_all

user1 = User.create(
  {
    login: "user1",
    email: "test1@test.com",
    password: "12345678"
  }
)

user2 = User.create(
  {
    login: "user2",
    email: "test2@test.com",
    password: "12345678"
  }
)

project1 = Project.create(name: "Project1", user: user1)
project2 = Project.create(name: "Project2", user: user1)
project3 = Project.create(name: "Project3", user: user2)
project4 = Project.create(name: "Project4", user: user2)

task1 = Task.create(name: "Task1", status: "in_process", project: project1)
task2 = Task.create(name: "Task2", status: "in_process", project: project1)
task3 = Task.create(name: "Task1", status: "in_process", project: project2)
task4 = Task.create(name: "Task2", status: "in_process", project: project2)
task5 = Task.create(name: "Task1", status: "in_process", project: project3)
task6 = Task.create(name: "Task2", status: "in_process", project: project3)
task7 = Task.create(name: "Task1", status: "in_process", project: project4)
task8 = Task.create(name: "Task2", status: "in_process", project: project4)

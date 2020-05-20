# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)\
require 'faker'

Member.destroy_all
Team.destroy_all
Project.destroy_all
Task.destroy_all
Label.destroy_all



members = 
    [
    {name: "Coral", username: "coral_fussman", password: "c12345", email: Faker::Internet.safe_email, notifications: false},
    {name: "Ramon", username: "dark_laughter", password: "e12345", email: Faker::Internet.safe_email, notifications: false},
    {name: "Ian", username: "ian_is_goat", password: "i12345", email: Faker::Internet.safe_email, notifications: false},
    {name: "Greg", username: "super_duper_g", password: "beautiful", email: Faker::Internet.safe_email, notifications: false},
    {name: "Matt", username: "vaporwave", password: "m12345", email: Faker::Internet.safe_email, notifications: false}
    ]
    members.each do |member|
        Member.create(member)
      end 

      3.times do 
        MemberTeam.create[{member_id: Member.all.sample.id, team_id: Member.all.sample.id}]
      end



teams = 
    [
    {name: "Risk Assesment", category: ["Work", "Personal", "Social", "Family"]},
    {name: "Sales", category: ["Work", "Personal", "Social", "Family"]},
    {name: "Marketing", category: ["Work", "Personal", "Social", "Family"]}
    ]
    teams.each do |team|
        Team.create(team)
    end 

    20.times do 
        Project.create(team_id: Team.all.sample.id, name: Faker::Company.industry, description: Faker::Company.bs, date: Faker::Date.forward)
      end 


# projects = 
#     [
#     {name: "Smith & Co.", description: "risk assesing new aquisitions", member_id: "c12345", date: 5/13},
#     {name: "Meyer & Associates", username: "pitch new partnership", password: "e12345"},
#     {name: "Trailblazer", username: "ian_is_goat", password: "i12345"},
#     {name: "New Wave Co.", username: "super_duper_g", password: "beautiful"},
#     {name: "Empire Group", username: "vaporwave", password: "m12345"}
#     ]
#     projects.each do |project|
#         Project.create(project)
#     end 

    20.times do 
        Task.create(project_id: Project.all.sample.id, member_id: Member.all.sample.id, name: Faker::Marketing.buzzwords, description: Faker::Company.bs, date: Faker::Date.forward)
        end 


    
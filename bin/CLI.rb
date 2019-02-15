
require 'pry'


class CLI

  def initialize
     @student_user = nil
  end

  def start
    login
    loop do
      greet
      input = get_input
      case input
      when 'q' #get out of the program
        break
      when '1' #register for a course
        register_student
      when '2'#update my rating
        view_my_courses
      when '3'  #delete my course registration
        delete_registration
      end
    end
  end

  def greet
    puts '*   *   *   *   Welcome to CLIENT   *   *   *   *'
    puts ''
    puts '   An online course listing evaluation tool'
    puts ''
    puts ''
    puts 'Press q to exit CLIENT.'
    puts ''
    puts 'Press 1 to register for a course.'
    puts ''
    puts 'Press 2 to view your courses.'
    puts ''
    puts 'Press 3 to delete your registration.'
    puts ''
    print '> '
  end

  def get_input
    input = gets
    input ||= ''
    input.chomp
  end

  def login
    puts "Enter your name."#ask for student name
    name = gets.chomp
    current_student = Student.find_by(name: name)
      if current_student == nil
        @student_user = Student.create(:name => name)
        puts "Thank you, " + name + ". You\'re now a registered CLIENT user."
      else
        @student_user = current_student
        puts "Welcome back " + @student_user.name + "!"
      end
    #if it exists, assign it to an instance variable
    #if not exists, create student
  end

  # def create_student(name)
  #   binding.pry
  #   Student.create(:name => name)
  #   puts "Thank you, " + name + ". You\'re now a registered CLIENT user."
  #   sleep(3)
  # end

  def find_student
    current_student = Student.find_by(name: @student_user)
    # If me_student.is_empty? == true || me_student == nil
      puts "Welcome back " + me_student.name.to_s + "! Press Return to continue."
      gets

    # else
    #   puts "No record exists for " + me_student + ". Please try again."
    #   break
    # end
  end


  def register_student
    view_courses
    puts "Enter the ID of the course you want to take."
    course_id=get_input
    course_ids = Course.all.map {|ci| ci.id}
      while true
      if course_ids.include?(course_id.to_i)
        reg = StudentCourse.create(student_id: @student_user.id, course_id: course_id.to_i, rating: 0)
        puts "Registration successful!"
        puts "Press Enter to continue."
        gets
        # sleep(2)
        break
      else
        puts "Please select an ID from the course list."
      end
    end
  end

  def view_courses
    puts "Here are the available courses."
    courses = Course.all
    courses.each { |c|
                      puts c.id.to_s + " - " + c.title
                      }
  end

  def view_my_courses
      if @student_user.courses.length != 0
        puts "You are registered for these courses:"
            @student_user.courses.each {|c|
                          puts c.id.to_s + " - " + c.title
                                      }
        # puts "Press Return to continue."
        # puts ""
        # puts ">>"
        # gets
      else
        puts "You haven't registered for any courses. Press Return to continue."
        gets
      end
  end

  def update_rating
    view_my_courses
    puts ""
    puts ""
    puts "Enter the number of the course rating you would like to update. "
    puts ""
    puts ""
    puts ">"
    course_id = get_input
    puts ""
    puts ""
    puts "Enter the new rating. "
    puts ""
    puts ""
    puts ">"
    new_rating = get_input

    rating_to_change=@student_user.courses.up

  end

  def delete_registration
    view_my_courses
    puts ""
    puts ""
    puts "Enter the number of the course registration you would like to delete. "
    puts ""
    puts ""
    puts ">"
    course_id = get_input
    course_to_drop = @student_user.courses.destroy(course_id.to_i)
    # .where(course_id: course_id.to_i).destroy
    puts "You are no longer registered for: "+course_to_drop.name+ ". Press Return to continue."
    gets

  end


  # def learn
  #   loop do
  #     puts 'Choose an adventure!'
  #     puts
  #     @learntopics.keys.each do |topic|
  #       puts topic
  #     end
  #     print '> '
  #     input = get_input
  #     if @learntopics.has_key?(input)
  #       puts "WISDOM: #{@learntopics[input]}"
  #     else
  #       break
  #     end
  #   end
  # end
  #
  #
  # def user_posts
  #   users = get_data("#{@api_url}/users")
  #   users = users.first(5)
  #   loop do
  #     puts 'Choose a user!'
  #     puts
  #     users.each do |user|
  #       puts user["name"]
  #     end
  #     print '> '
  #     username = get_input
  #     user = users.find { |user| user["name"] == username }
  #     if user
  #       show_user_titles(user)
  #     else
  #       break
  #     end
  #   end
  # end

  # def show_user_titles(user)
  #   titles = get_data("#{@api_url}/posts?userId=#{user["id"]}")
  #   titles = titles.first(5)
  #   puts "Titles by #{user["name"]}:"
  #   puts
  #   titles.each do |title|
  #     puts title["title"]
  #   end
  end

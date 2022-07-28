class CreateCoursesArticlesJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :courses, :articles
  end
end

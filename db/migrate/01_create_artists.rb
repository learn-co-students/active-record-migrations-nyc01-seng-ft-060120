class CreateArtists < ActiveRecord::Migration[4.2] #must specify which version of Rails the migration was written for 
    #def up #do | define cody to execute when migration is run 
    #end
   
    #def down #undo | define code to execute when migration is rolled back 
    #end

    def change #replaces up and down | more common for basic migrations
        create_table :artists do |t| #Artist is the name of the table
            t.string :name #t. creates column 
            t.string :genre #string is datatype
            t.integer :age #:age is column name 
            t.string :hometown #ActiveRecord auto adds and increments the primary key
    end #can create tables using only Ruby since ActiveRecord configured the database
end #has access to all these methods (https://edgeguides.rubyonrails.org/active_record_migrations.html#writing-a-migration)

end
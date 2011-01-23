class Survey < ActiveRecord::Base
  
  has_many :questions, :dependent => :destroy 
  accepts_nested_attributes_for :questions, :reject_if => lambda {|a| a['content'].blank? }, 
                                            :allow_destroy =>true
  validates_uniqueness_of :name
  validates_length_of :name, :within => 7..20, :too_short => "please enter at least {{count}} character"
  
 # before_filter :question_required, :only => [:new, :edit]
  
     def question_required
          if @survey.questions.answers
             flash[:notice] = "You cant give answer without a question"
             render :action => 'new'
          end
     end 
  
 end

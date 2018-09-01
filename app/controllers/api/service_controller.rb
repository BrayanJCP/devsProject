class Api::ServiceController < ApiController
    def createUser
        user_params = params.require(:user).permit(:username, :password, :phone, :role_id, :email)
        unless user_params.nil?
          User.create(user_params)
        end
      end
      def createEvent
        event_params = params.require(:event).permit(:title, :describe, :user_id)
        unless event_params.nil?
          Event.create(event_params)
        end
        redirect_to :controller => 'home', :action => 'index'
      end
      def getEvents
        @events=Event.all
      end
      def getRoles
        @roles=Role.all        
      end
end
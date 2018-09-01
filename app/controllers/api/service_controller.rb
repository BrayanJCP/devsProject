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
      end
      def getEvents
        @events=Event.all
      end
      def getRoles
        @roles=Role.all        
      end
      def getUsers
        @users=User.all        
      end
      def getUser
        user_params = params.require(:user).permit(:id) 
        @user=User.find(user_params[:id])
        puts(@user)
      end
end
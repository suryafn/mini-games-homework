require_relative '../models/user.rb'
class User_controller
    def save(params)
        user = User.new(params)
        result = user.save

        if result==200
            return {
                'status' => result,
                'message' => 'Success',
                'data' => 'success save post'
            }
        else
            return {
                'status' => result,
                'message' => 'Fail',
                'data' => "Error code #{result}"
            }
        end

    end
end

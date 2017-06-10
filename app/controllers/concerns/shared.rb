module Shared
    def set_object
        @object = controller_name.classify.constantize.find(params[:id])
    end
end
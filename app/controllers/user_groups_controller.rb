class UserGroupsController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    @usergroup = UserGroup.new
    @usergroup.user = current_user
    @usergroup.group = @group
    @usergroup.save
    redirect_to group_path(@group)
  end

  def destroy
    @usergroup = Usergroup.find(params[:usergroup_id])
    @usergroup.destroy
    redirect_to dashboard_path, notice: "User removed successfully."
  end
end

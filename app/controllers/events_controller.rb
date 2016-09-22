class EventsController < ApplicationController
  def index
  	@events = Event.order("created_at DESC")
  end

  def new
  	@event = Event.new
  	@event.user_paids.build
  	@users = User.select("id","name")
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
      flash[:success] = "Event created successfully"
      per_user_amount  = @event.amount/@event.user_paids.count
      @event.user_paids.each do |user_paid|
      	amount_to_pay = per_user_amount - user_paid.amount
      	if amount_to_pay < 0
      	  user_paid.update_attributes( amount_to_get: amount_to_pay.abs.round(2) )
      	else
      	  user_paid.update_attributes( amount_to_pay: amount_to_pay.round(2))
      	end
      end
      redirect_to events_path
    else
      render :new
    end
  end


  private



  def event_params
    params.require(:event).permit(:name,:date_of_event, :location,:amount,:user_paids_attributes => [:id, :user_id, :amount])
  end

end

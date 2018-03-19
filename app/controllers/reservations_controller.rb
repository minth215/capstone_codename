class ReservationsController < ApplicationController
  before_action :set_reservation, only: [:show]
  
  # 예약 페이지 - 날짜 선택
  # def reservation
  #   @reservation = Reservation.new(theme_id: 1, date: params[:date])
  # end
  
  # 예약 페이지 - 날짜/시간/인원/예약자 정보 입력
  def new
    @reservation = Reservation.new
  end
  
  # 예약 action & 예약 완료 문구
  def create
    @reservation = Reservation.create(reservation_params)
  end
  
  # 예약 확인
  def index
    @reservations = Reservation.all
  end
  
  # 예약 수정 - 관리자 페이지
  # def edit
  # end
  
  # 예약 수정 action
  # def update
  #   @reservation.update(reservation_params)
  #   redirect_to check_all_path
  # end
  
  # 예약 삭제 - 관리자 페이지
  # def destroy
  #   @reservation.destroy
  #   redirect_to :back
  # end
  
  private
  def reservation_params
    params.require(:reservation).permit(:theme_id, :date, :time, :member, :name, :phone)
  end
  
  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end
end

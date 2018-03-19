class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.belongs_to :theme     # 외래키 (테마)
      t.date :date            # 날짜
      t.time :time            # 시간
      t.integer :member       # 인원
      t.string :name          # 예약자 이름
      t.string :phone         # 예약자 번호
      t.timestamps null: false
    end
  end
end

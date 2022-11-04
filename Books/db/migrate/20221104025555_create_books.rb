class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :mahs_251
      t.string :hoten_251
      t.string :lop_251
      t.string :msach_251
      t.string :tensach_251
      t.string :tentacgia_251
      t.string :soBM_251
      t.date :ngaymuon_251
      t.date :ngaytra_251
      t.text :ghichu_251

      t.timestamps
    end
  end
end

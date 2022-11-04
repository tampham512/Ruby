require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ghichu 251", with: @book.ghichu_251
    fill_in "Hoten 251", with: @book.hoten_251
    fill_in "Lop 251", with: @book.lop_251
    fill_in "Mahs 251", with: @book.mahs_251
    fill_in "Msach 251", with: @book.msach_251
    fill_in "Ngaymuon 251", with: @book.ngaymuon_251
    fill_in "Ngaytra 251", with: @book.ngaytra_251
    fill_in "Sobm 251", with: @book.soBM_251
    fill_in "Tensach 251", with: @book.tensach_251
    fill_in "Tentacgia 251", with: @book.tentacgia_251
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ghichu 251", with: @book.ghichu_251
    fill_in "Hoten 251", with: @book.hoten_251
    fill_in "Lop 251", with: @book.lop_251
    fill_in "Mahs 251", with: @book.mahs_251
    fill_in "Msach 251", with: @book.msach_251
    fill_in "Ngaymuon 251", with: @book.ngaymuon_251
    fill_in "Ngaytra 251", with: @book.ngaytra_251
    fill_in "Sobm 251", with: @book.soBM_251
    fill_in "Tensach 251", with: @book.tensach_251
    fill_in "Tentacgia 251", with: @book.tentacgia_251
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end

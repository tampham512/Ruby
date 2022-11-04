require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { ghichu_251: @book.ghichu_251, hoten_251: @book.hoten_251, lop_251: @book.lop_251, mahs_251: @book.mahs_251, msach_251: @book.msach_251, ngaymuon_251: @book.ngaymuon_251, ngaytra_251: @book.ngaytra_251, soBM_251: @book.soBM_251, tensach_251: @book.tensach_251, tentacgia_251: @book.tentacgia_251 } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { ghichu_251: @book.ghichu_251, hoten_251: @book.hoten_251, lop_251: @book.lop_251, mahs_251: @book.mahs_251, msach_251: @book.msach_251, ngaymuon_251: @book.ngaymuon_251, ngaytra_251: @book.ngaytra_251, soBM_251: @book.soBM_251, tensach_251: @book.tensach_251, tentacgia_251: @book.tentacgia_251 } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end

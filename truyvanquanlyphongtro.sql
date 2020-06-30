SELECT TenKH,TenDV
FROM KHACHHANG KH, DICHVU DV, CHITIETHOADON CTHD, HOADON HD
WHERE KH.Makh = HD.makh and dv.madv = cthd.madv and CTHD.mahoadon = hd.mahoadon

-- Đưa ra danh sách tất cả các phòng đang được thuê(chưa được sử dụng)
SELECT *
FROM PHONGTRO
WHERE MaPhong IN(	SELECT MaPhong
					FROM HOPDONG
					WHERE Ngaythue>GETDATE())
-- Đưa ra mã phòng thuê, tên khách hàng phòng có tổng tiên cao nhất
SELECT *
FROM PHONGTRO
WHERE GiaPhong IN(SELECT MAX(GiaPhong)
					FROM PHONGTRO)
-- Đưa ra mã phòng và hiện trạng của từng phòng
-- Đưa ra tất cả các dịch vụ mà phòng PT001 đang sử dụng
-- Đưa ra thông tin khách hàng dag thuê phòng PT001
-- Đưa ra thông tin các khách hàng là sinh viên
-- Đưa ra thông tin khách hàng và mã phòng 1 tháng nữa sẽ hết hạn họp đồng
-- Đưa ra thông tin phòng có sử dung dịch vụ wifi trong tháng này 
-- Đưa ra tên mã phòng thuê và số điện thoại của các khách hàng đang thuê trọ 
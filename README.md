# RE
## Table of Content
* [Tổng quan](#general-info)
* [Lộ trình](#road-map)
* [Assembly Challenge](#challenge)
* [Other post](#other-post)

<a name="general-info"/>

## Tổng quan
**1. Học RE sau này có thể làm gì?**

Theo mình được biết thì sau này RE có thể hướng tới trở thành Malware Analyst, Researcher, BugBountyHunter (require Gosu lever), ở trong môi trường doanh nghiệp thì còn có các job liên quan đến SystemProgramming, backend-dev (not web), … Và đa số người mình gặp sau này thường đá sang exploit.
Trong môi trường đại học thì các bạn sẽ pro khá nhiều môn vì đa số các môn học trên trường đều liên quan đến computer science.

**2. RE dành cho ai?**

Mọi người đều có thể và có khả năng học mảng này. Tuy nhiên với 1 số cá nhân có những khả năng sau thì câu chuyện sẽ dễ dàng hơn:
- Người có hứng thú về cách một chiếc máy tính hoạt động từ phần cứng cho tới phần mềm. Ví dụ như Hệ điều hành được khởi động như thế nào. Cách các tiến trình(process) được khởi động và hoạt động ra sao, …
- Người có khả năng code thành thạo C/C++ từ những function nhỏ nhất cho tới những chương trình phức tạp. Nắm rõ các cấu trúc dữ liệu máy tính sử dụng được biểu diễn như thế nào, có khả năng code/debug.
- Người không tiếp xúc với ngôn ngữ lập trình bậc cao quá sớm.
- Khả năng tự học, tự vọc và Google,…

<a name="road-map"/>

## Lộ trình

Dưới đây là 1 lộ trình chi tiết trong 1 khoảng thời gian ngắn (~1/60 of lifetime) mà các bạn apply có thể follow theo:

- **Học kiến trúc máy tính, vi xử lí:** Cách máy tính xử lí dữ liệu binary, các thanh ghi, các thành phần phần cứng được kết nối và đảm nhận những nhiệm vụ gì, … n câu hỏi về computer science)

- **Học assembly x86/x64:** Đây là quá trình khá dài và dễ gây nản vì nhiều khi các bạn sẽ tự hỏi mình học để làm gì =)) Các bạn sẽ học song song (hoặc nối tiếp) 2 dạng asm hay gặp là nasm (netwide asm) và masm (macro asm), làm quen với window programming và linux programming. Trong quá trình này cũng sẽ kết hợp với dịch ngược một số chương trình tương tự thông qua các sample đơn giản.

- **Học dịch ngược nâng cao:** Làm quen với các dạng obfuscate, các dạng mã hóa dữ liệu thường gặp, thành thạo các kiểu dữ liệu, … Trong đó phần khá quan trọng là anti-disassembly, anti-debug, antiVM.

- **System Programming:** Lập trình các dạng mã độc cơ bản (backdoor-reverse shell, dropper, downloader, …), các function steal system information, TCP/IP, socket programming, …

- **Malware Analyst:** Đến tầm này thì coi như dấn thân hoàn toàn vào con đường này rồi. Các bạn sẽ làm quen với các dạng mã độc thực tế, cách thức các mã độc triển khai, cơ chế duy trì (persistence), dấu hiệu nhận biết (IOC), … tới đây thì mọi thứ sẽ khác CTF vì làm malware cần chú trọng vào luồng thực thi của mã độc một cách chi tiết, vẽ ra các hướng khai thác, giả lập môi trường, viết rule nhận diện malware, blabla, …

Các bạn có thể đọc thêm [bài viết](https://hackemall.live/index.php/2020/05/01/reverse-engineering-roadmap/)

<a name="challenge"/>

## Assembly Challenge

Dưới đây sẽ là một vài Challenge căn bản cho các bạn trong giai đoạn đầu:

**1. Hello world**

Viết chương trình in ra màn hình dòng chữ "Hello World!". Yêu cầu:
- Hệ điều hành: Windows/Linux

**2. Echo**

Viết chương trình nhập vào đoạn văn bản, in ra đoạn văn bản vừa nhập. Yêu cầu:
- Hệ diều hành: Windows/Linux
- Chiều dài đoạn văn bản: 32 kí tự

**3. Upper case**

Viết chương trình nhập vào đoạn văn bản, in ra đoạn văn bản vừa nhập dưới dạng viết hoa. Yêu cầu:
- Hệ diều hành: Windows/Linux
- Chiều dài đoạn văn bản: 32 kí tự

**4. Simple Addition**

Viết chương trình tính tổng 2 số nguyên dương nhập vào từ bàn phím.  

Yêu cầu:
* Hệ điều hành: Windows & Linux
* Độ lớn tối đa nhập vào: 31 bit(2^31-1)


**5. Tìm xâu con**
  
Viết chương trình tìm xâu con:
* Nhập vào xâu S(100 ký tự) và xâu C(10 ký tự)
* Tìm số lần xuất hiện xâu con trong sâu S và các vị trí xuất hiện  
  
Yêu cầu:
* Hệ điều hành: Windows & Linux
* Nhập vào từ bàn phím sâu S và C
* In ra: Dòng 1 chứa tổng số lần xuất hiện xâu con C, Dòng 2 chứa vị trí xuất hiện xâu con C(Tính từ 0 là vị trí bắt đầu xâu S)
* Sử dụng ít nhất 1 proceduce


**6. Đảo ngược xâu**
  
Viết chương trình đảo ngược xâu nhập vào  
  
Yêu cầu:
* Hệ điều hành: Windows & Linux
* Chiều dài xâu nhập vào: 256 ký tự 
* Sử dụng ít nhất 1 proceduce


**7. Fibonaci**

Viết chương trình nhập vào số nguyên N, in ra N số Fibonaci đầu tiên.  
  
Yêu cầu:
* Hệ điều hành: Windows & Linux 
* N < 100
* Sử dụng ít nhất 1 proceduce
  

**8. Cộng số lớn**
  
Viết chương trình nhập vào 2 số nguyên dương có 20 chữ số. Tính tổng 2 số vừa nhập.  
  
Yêu cầu:
* Hệ điều hành: Windows & Linux
* Lưu trữ số nhập vào thành mảng, cộng từng chữ số từ phải qua trái 
* Sử dụng ít nhất 1 proceduce


**9. Array min, max**
  
Viết chương trình nhập vào dãy số nguyên dương, in ra giá trị lớn nhất và nhỏ nhất của dãy số.
  
Yêu cầu:
* Hệ điều hành: Windows & Linux
* Số lượng phần tử: < 100
* Giá trị lớn nhất của 1 phần tử: 32 bit(2^32-10)


**10. Tổng chẵn lẻ**
  
Viết chương trình nhập vào dãy số nguyên dương, tính tổng các phần tử chẵn, lẻ của dãy số.  
  
Yêu cầu:
* Hệ điều hành: Windows & Linux
* Số lượng phần tử: < 100
* Giá trị lớn nhất của 1 phần tử: 32 bit(2^32-1)


**11. Simple calculator**
  
Viết chương trình mô phỏng máy tính các phép toán cộng, trừ, nhân, chia.  
  
Yêu cầu:
* Hệ điều hành: Windows & Linux
* Hiển thị 4 tùy chọn tương ứng 4 phép tính toán  
  
1. Cộng  
2. Trừ  
3. Nhân  
4. Chia  
  
* Lựa chọn phép tính bằng cách nhập số tương ứng
* Nhập vào 2 toán hạng 
* Tính toán và in ra kết quả


**12. ELF header**
  
Viết chương trình đọc và hiện thị ELF header.  
  
Yêu cầu:
* Hệ điều hành: Linux
* Hiểu rõ cấu trúc ELF header
* Nhập vào đường dẫn file cần đọc 
* Hiển thị ELF header của file nhập vào format tương tự lệnh `readelf -e`


**13. PE header**
  
Viết chương trình đọc và hiển thị các trường trong PE header.  
  
Yêu cầu:
* Hệ điểu hành: Windows
* Hiểu rõ cấu trúc PE header
* Nhập vào đường dẫn file PE cần đọc 
* Hiển thị PE header của file nhập vào, bao gồm: DOS Header, NT Header, Section Header, Import Directory, Export Directory


**14. Bouncing Ball**
  
Viết chương trình hiển thị cửa sổ Bouncing Ball.  
  
Yêu cầu:
* Hệ điều hành: Windows 
* Hiển thị cửa sổ trên nền trắng 
* Bên trong vẽ quả bóng(hinh tròn đỏ viền đen), ban đầu xuất hiện tại vị trí ngẫu nhiên(X,Y), di chuyển theo 1 trong 4 hướng ngẫu nhiên (45 độ, 135 độ, 225 độ, 315 độ)
* Quả bóng bật lại nếu gặp cạnh cửa sổ


**15. Text Reverse**
  
Viết chương trình đảo ngược xâu trên Windows.  
  
Yêu cầu:
* Hệ điều hành: Windows 
* Chương trình có giao diện cửa sổ, gồm 1 control dạng Editbox để nhập text, 1 control dạng Editbox để hiện thị text đã nhập theo thứ tự ngược lại
* Editbox nhập text: Hiện thị bình thường
* Editbox hiện text đảo ngược: thuộc tính readonly, thay đổi hiện thị tương ứng từng ký tự nhập vào


**16. Anti-Browser**
  
Viết chương trình đóng các cửa sổ trình duyệt.  
  
Yêu cầu:
* Hệ điều hành: Windows
* Architechture: 64-bit
* Chương trình tự động tìm và đóng các cửa sổ trình duyệt mỗi 5 giây
* Sử dụng timer và hàm EnumWindows

**17. Anti-Netcat**

Viết chương trình đóng các tiến trình netcat.  
  
Yêu cầu: 
* Hệ điều hành: Linux 
* Architechture: 64-bit 
* chương trình tự động tìm và đóng các tiến trình netcat mỗi 10s
* Sử dụng timer

**Tài liệu tham khảo:**
* Windows Assembly:
  * [assembly-language-for-x86-processors-7th-edition](./References/assembly-language-for-x86-processors-7th-edition.pdf)
* Windows Programming Basic:
  * [Charles Petzold - Programming Windows - 5th Ed](./References/Charles%20Petzold%20-%20Programming%20Windows%20-%205th%20Ed.pdf)
* NASM:
  * https://asmtutor.com/
  * https://www.tutorialspoint.com/assembly_programming/index.htm
* PE:
  * [PE Parser](https://www.ired.team/miscellaneous-reversing-forensics/pe-file-header-parser-in-c++)
  * [PE tutorial](./References/PE_Tutorials.pdf)



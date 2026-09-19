# Quy tắc dịch Spring Boot sang tiếng Việt

Kế thừa quy tắc dịch tại `vandunxg/JavaGuide/CLAUDE.md`, điều chỉnh định dạng Markdown/VuePress thành AsciiDoc/Antora.

## Phạm vi và nguồn

- Chỉ làm việc trên `vandunxg/spring-boot`, không phải `spring-framework`.
- Giữ nguyên toàn bộ file upstream. Chỉ ghi bản dịch và tài liệu quản lý bản dịch dưới `vi/`.
- Source chính: `documentation/spring-boot-docs/src/docs/antora/`.
- Mapping: `<source-root>/modules/<module>/<family>/<path>` thành `vi/modules/<module>/<family>/<path>`.
- Tài liệu Maven plugin, Gradle plugin và Actuator REST API có source-root riêng. Phải ghi đúng source-root trong bảng tiến độ; không suy đoán nội dung.
- Dịch theo navigation chính thức từ đầu đến cuối. Một trang là một file trong `pages/`, không tính navigation, redirect, glossary, tiến độ hoặc code mẫu thành trang dịch.

## Nội dung

1. Đọc toàn bộ file gốc trước khi dịch. Không dựa vào tiêu đề hoặc kiến thức nhớ lại.
2. Dịch đầy đủ, không tóm tắt, không thêm ý, không bỏ ví dụ, cảnh báo, điều kiện, bảng hoặc danh sách.
3. Văn phong kỹ thuật, trực tiếp, tự nhiên; không kéo dài câu không cần thiết.
4. Giữ thuật ngữ chuyên ngành bằng tiếng Anh theo `GLOSSARY.md`; dịch phần diễn giải xung quanh.
5. Giữ nguyên tên API, class, method, package, annotation, property, identifier, command, URL, số liệu và phiên bản.
6. Dịch heading, prose, nhãn link, caption, alt text, text trong bảng và comment giải thích; không dịch code executable, output log hoặc giá trị mẫu có ý nghĩa kỹ thuật.
7. Không thêm bài tập hoặc lời bình vào bản dịch nếu nguồn không có.

## AsciiDoc và Antora

Giữ nguyên explicit anchor/ID, xref target, include target, attribute reference, macro, conditional directive, source language, delimiter, callout, role và tên khóa cấu hình. Chỉ dịch text hiển thị. Không đổi đường dẫn để Việt hóa slug.

Các macro như `javadoc:`, `include-code::`, `configprops::` phải được giữ nguyên. Nội dung được sinh từ code hoặc được include không được thay bằng văn bản tự suy diễn.

## Tiến độ và kiểm tra

- `PROGRESS.md` ghi trạng thái thực tế, source commit và file tiếp theo.
- Chỉ đánh dấu một trang đã dịch khi toàn bộ trang đã được dịch, không phải khi mới tạo file hoặc sao chép tiếng Anh.
- Phân biệt dịch nội dung, kiểm tra cấu trúc và build website. Không ghi build thành công khi chưa chạy.
- Đối chiếu số section, anchor, xref, include, source block, bảng, danh sách và điều kiện với nguồn trước khi ghi tiến độ.
- Commit của công việc GitHub này chỉ đưa nội dung vào nhánh dịch; không tự merge vào `main`, không sửa hoặc xóa nhánh khác.

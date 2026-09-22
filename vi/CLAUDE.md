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
4. Ưu tiên giữ technical/domain terms bằng tiếng Anh theo ngữ cảnh. `GLOSSARY.md` là baseline, không phải whitelist; term chưa có trong glossary vẫn giữ English nếu đó là cách viết tự nhiên và chính xác hơn trong tài liệu kỹ thuật.
5. Giữ nguyên tên API, class, method, package, annotation, property, identifier, command, URL, số liệu và phiên bản.
6. Dịch heading, prose, nhãn link, caption, alt text, text trong bảng và comment giải thích; không dịch code executable, output log hoặc giá trị mẫu có ý nghĩa kỹ thuật.
7. Không thêm bài tập hoặc lời bình vào bản dịch nếu nguồn không có.

## English-first theo ngữ cảnh

Mục tiêu: bản dịch phải đọc giống tài liệu kỹ thuật do developer Việt viết, không phải bản Việt hóa từng từ.

- `GLOSSARY.md` là baseline, không phải whitelist. Term chưa có trong glossary vẫn giữ English nếu đó là technical/domain concept và cách dùng English tự nhiên, chính xác hơn trong ngữ cảnh.
- Không ép dịch một term chỉ vì có từ tiếng Việt tương đương. Ưu tiên giữ English cho các concept trong architecture, runtime, workflow và domain model như `system`, `backend`, `frontend`, `service`, `module`, `request`, `response`, `payload`, `repository`, `entity`, `transaction`, `query`, `filter`, `handler`, `listener`, `message`, `event`, `job`, `task`, `workflow`, `upstream`, `downstream`, `sync`, `async`, `batch`, `retry`, `timeout`, `fallback`, `cache`, `validation`, `mapping`, `binding`, `build`, `deploy`.
- Với domain/business workflow, ưu tiên term mà system/team dùng như một concept: `order`, `approval`, `inventory`, `fulfillment`, `procurement`, `finance`, `payment`, `price`, ... nếu Việt hóa làm mất tính nhất quán với model/API/flow.
- Technical verbs có thể giữ English khi cách đó tự nhiên và chính xác hơn: `validate`, `map`, `bind`, `serialize`, `deserialize`, `persist`, `flush`, `commit`, `rollback`, `retry`, `resolve`, `reserve`, `publish`, `consume`, `mock`, `override`.
- Dịch phần ngữ pháp, liên từ và diễn giải thông thường sang tiếng Việt. Mục tiêu là một câu tiếng Việt có English technical terms đúng chỗ, không phải biến cả câu thành English.
- Quyết định theo meaning trong câu, không theo token. Ví dụ: `request` là HTTP/domain object thì giữ `request`; “request access” dùng như động từ thông thường có thể dịch là “yêu cầu quyền truy cập”. `order` là domain entity thì giữ `order`; “in order to” phải dịch theo nghĩa ngữ pháp.
- Một concept dùng một term nhất quán trong cùng file/section. Không xen kẽ `request`/“yêu cầu”, `transaction`/“giao dịch”, `repository`/“kho lưu trữ” nếu đang nói cùng technical concept.
- Không tự thêm bản dịch tiếng Việt trong ngoặc sau mỗi English term. Chỉ giải thích ở lần đầu nếu concept khó và source/ngữ cảnh thực sự cần làm rõ.
- API/type/identifier giữ đúng casing gốc như `Authentication`, `JpaRepository`; prose term dùng casing thông thường như `request`, `transaction`, `repository`.

Ví dụ style mục tiêu:

> System chủ yếu phục vụ nhân viên procurement và finance, phụ trách tra cứu sản phẩm, tạo order, approval, đồng bộ trạng thái thanh toán và tra cứu fulfillment. Backend được tách thành các module order, inventory và approval; khi tạo order, trước tiên sẽ validate request và price, sau đó tạo order và reserve inventory. Sau khi thành công, system gửi message để downstream hoàn thành các task async như thông báo approval.

Không sửa meaning của source chỉ để làm câu “kỹ thuật hơn”; chỉ giữ English khi term đó thực sự là technical/domain concept trong ngữ cảnh.


## AsciiDoc và Antora

Giữ nguyên explicit anchor/ID, xref target, include target, attribute reference, macro, conditional directive, source language, delimiter, callout, role và tên khóa cấu hình. Chỉ dịch text hiển thị. Không đổi đường dẫn để Việt hóa slug.

Các macro như `javadoc:`, `include-code::`, `configprops::` phải được giữ nguyên. Nội dung được sinh từ code hoặc được include không được thay bằng văn bản tự suy diễn.

## Tiến độ và kiểm tra

- `PROGRESS.md` ghi trạng thái thực tế, source commit và file tiếp theo.
- Chỉ đánh dấu một trang đã dịch khi toàn bộ trang đã được dịch, không phải khi mới tạo file hoặc sao chép tiếng Anh.
- Phân biệt dịch nội dung, kiểm tra cấu trúc và build website. Không ghi build thành công khi chưa chạy.
- Đối chiếu số section, anchor, xref, include, source block, bảng, danh sách và điều kiện với nguồn trước khi ghi tiến độ.
- Commit của công việc GitHub này chỉ đưa nội dung vào nhánh dịch; không tự merge vào `main`, không sửa hoặc xóa nhánh khác.

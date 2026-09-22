# Glossary — Spring Boot tiếng Việt

Giữ nguyên các thuật ngữ sau; dịch phần giải thích bằng tiếng Việt.

## Nguyên tắc English-first theo ngữ cảnh

- Glossary này là **baseline, không phải whitelist**. Term kỹ thuật chưa có trong bảng vẫn có thể và nên giữ English nếu đó là cách viết chuẩn/tự nhiên hơn trong ngữ cảnh.
- Không ép Việt hóa các concept thuộc architecture, runtime, workflow hoặc domain model. Các term thường giữ English khi mang nghĩa kỹ thuật gồm: `system`, `backend`, `frontend`, `service`, `module`, `request`, `response`, `payload`, `message`, `event`, `job`, `task`, `workflow`, `upstream`, `downstream`, `sync`, `async`, `batch`, `retry`, `timeout`, `fallback`, `validation`, `mapping`, `binding`.
- Domain term như `order`, `approval`, `inventory`, `fulfillment`, `procurement`, `finance`, `payment`, `price` giữ English khi chúng là concept của system/model/API/flow; nếu chỉ mang nghĩa đời thường thì dịch theo nghĩa câu.
- Technical verbs như `validate`, `map`, `bind`, `serialize`, `deserialize`, `persist`, `flush`, `commit`, `rollback`, `retry`, `resolve`, `reserve`, `publish`, `consume`, `mock`, `override` có thể giữ English khi tự nhiên hơn.
- Không mặc định viết “bản dịch tiếng Việt (English term)” ở lần xuất hiện đầu. Term phổ biến dùng English trực tiếp; chỉ giải thích thêm khi concept khó và thực sự cần cho người đọc.
- Cùng một technical concept phải dùng nhất quán một term trong cùng file/section.


| Nhóm | Thuật ngữ giữ nguyên |
| --- | --- |
| Spring | Spring Boot, Spring Framework, bean, IoC container, dependency injection, auto-configuration, starter, ApplicationContext, BeanFactory, component scanning, classpath |
| Java | JVM, JDK, JRE, class, interface, annotation, reflection, generic, lambda, stream, thread, virtual thread, exception, checked exception, unchecked exception |
| Cấu hình | profile, property, configuration metadata, externalized configuration, binding, validation, lifecycle, callback |
| Build và triển khai | Maven, Gradle, Ant, build, deploy, production, JAR, WAR, executable jar, native image, AOT, GraalVM, container image, Dockerfile, buildpack |
| Web và bảo mật | Servlet, Spring MVC, WebFlux, reactive, HTTP, REST, JSON, XML, YAML, OAuth2, SAML2, JWT, endpoint, filter, interceptor |
| Dữ liệu | JDBC, R2DBC, JPA, Hibernate, ORM, SQL, NoSQL, DataSource, connection pool, transaction, propagation, isolation level, rollback, cache |
| Vận hành | Actuator, health check, metrics, tracing, observability, graceful shutdown, logging |
| Kiểm thử | unit test, integration test, mock, assertion, Testcontainers, test slice |

Tên API, annotation, config key và command phải giữ nguyên chính tả, kể cả khi không có trong bảng.

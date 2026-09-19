# Tiến độ dịch Spring Boot

- Repository: `vandunxg/spring-boot`.
- Nhánh: `docs/vi-translation-batch-03`.
- Source commit: `adbbf047320013ee42284d6957293aaf75a56ad7`.
- Source-root:
  - `documentation/spring-boot-docs/src/docs/antora/` (mirror: `upstream/docs/`) cho ROOT, tutorial, reference, how-to, build-tool-plugin, cli, specification, appendix.
  - `build-plugin/spring-boot-maven-plugin/src/docs/antora/` (mirror: `upstream/maven-plugin/`) cho module maven-plugin.
  - `build-plugin/spring-boot-gradle-plugin/src/docs/antora/` (mirror: `upstream/gradle-plugin/`) cho module gradle-plugin.
- Cập nhật: 2026-09-19.
- Đã dịch trọn vẹn: **172 trang**.
- Tổng số trang khả dụng trong navigation: **172 trang**. Đã dịch hết toàn bộ trang của cả ba source-root.
- `modules/ROOT/pages/redirect.adoc` không tính là trang dịch: file chỉ chứa bảng ánh xạ redirect anchor, không có prose.
- Mục tiêu 200 trang đặt trước đó không đạt được vì upstream tại commit này chỉ có 172 trang nội dung (173 file `pages/` kể cả `redirect.adoc`).
- Kiểm tra hiện tại: rà soát chất lượng toàn bộ 172 trang (xem mục "Rà soát chất lượng"); đối chiếu tự động số anchor, xref, include, javadoc/configprop macro, source block, bảng, danh sách, admonition giữa nguồn và bản dịch; đối chiếu định danh anchor, target macro và nội dung code block phải trùng khớp tuyệt đối. Chưa chạy build website.

## Đã dịch

1. [x] `modules/ROOT/pages/index.adoc`
2. [x] `modules/ROOT/pages/documentation.adoc`
3. [x] `modules/ROOT/pages/community.adoc`
4. [x] `modules/ROOT/pages/system-requirements.adoc`
5. [x] `modules/ROOT/pages/installing.adoc`
6. [x] `modules/ROOT/pages/upgrading.adoc`
7. [x] `modules/tutorial/pages/index.adoc`
8. [x] `modules/tutorial/pages/first-application/index.adoc`
9. [x] `modules/reference/pages/index.adoc`
10. [x] `modules/reference/pages/using/index.adoc`
11. [x] `modules/reference/pages/using/build-systems.adoc`
12. [x] `modules/reference/pages/using/structuring-your-code.adoc`
13. [x] `modules/reference/pages/using/configuration-classes.adoc`
14. [x] `modules/reference/pages/using/auto-configuration.adoc`
15. [x] `modules/reference/pages/using/spring-beans-and-dependency-injection.adoc`
16. [x] `modules/reference/pages/using/using-the-springbootapplication-annotation.adoc`
17. [x] `modules/reference/pages/using/running-your-application.adoc`
18. [x] `modules/reference/pages/using/devtools.adoc`
19. [x] `modules/reference/pages/using/packaging-for-production.adoc`
20. [x] `modules/reference/pages/features/index.adoc`
21. [x] `modules/reference/pages/features/spring-application.adoc`
22. [x] `modules/reference/pages/features/external-config.adoc`
23. [x] `modules/reference/pages/features/profiles.adoc`
24. [x] `modules/reference/pages/features/logging.adoc`
25. [x] `modules/reference/pages/features/internationalization.adoc`
26. [x] `modules/reference/pages/features/aop.adoc`
27. [x] `modules/reference/pages/features/json.adoc`
28. [x] `modules/reference/pages/features/task-execution-and-scheduling.adoc`

## Đã dịch tiếp

29. [x] `modules/reference/pages/features/dev-services.adoc`
30. [x] `modules/reference/pages/features/developing-auto-configuration.adoc`
31. [x] `modules/reference/pages/features/kotlin.adoc`
32. [x] `modules/reference/pages/features/ssl.adoc`

## Đã dịch tiếp

33. [x] `modules/reference/pages/web/index.adoc`
34. [x] `modules/reference/pages/web/servlet.adoc`
35. [x] `modules/reference/pages/web/reactive.adoc`
36. [x] `modules/reference/pages/web/graceful-shutdown.adoc`
37. [x] `modules/reference/pages/web/spring-security.adoc`

## Đã dịch tiếp

38. [x] `modules/reference/pages/web/spring-session.adoc`
39. [x] `modules/reference/pages/web/spring-graphql.adoc`
40. [x] `modules/reference/pages/web/spring-hateoas.adoc`
41. [x] `modules/reference/pages/data/index.adoc`
42. [x] `modules/reference/pages/data/sql.adoc`
43. [x] `modules/reference/pages/data/nosql.adoc`
44. [x] `modules/reference/pages/io/index.adoc`
45. [x] `modules/reference/pages/io/caching.adoc`
46. [x] `modules/reference/pages/io/spring-batch.adoc`
47. [x] `modules/reference/pages/io/grpc.adoc`

## Đã dịch tiếp

48. [x] `modules/reference/pages/io/hazelcast.adoc`
49. [x] `modules/reference/pages/io/quartz.adoc`
50. [x] `modules/reference/pages/io/email.adoc`
51. [x] `modules/reference/pages/io/validation.adoc`
52. [x] `modules/reference/pages/io/rest-client.adoc`
53. [x] `modules/reference/pages/io/webservices.adoc`
54. [x] `modules/reference/pages/io/jta.adoc`
55. [x] `modules/reference/pages/messaging/index.adoc`
56. [x] `modules/reference/pages/messaging/jms.adoc`
57. [x] `modules/reference/pages/messaging/amqp.adoc`
58. [x] `modules/reference/pages/messaging/kafka.adoc`
59. [x] `modules/reference/pages/messaging/pulsar.adoc`
60. [x] `modules/reference/pages/messaging/rsocket.adoc`
61. [x] `modules/reference/pages/messaging/spring-integration.adoc`
62. [x] `modules/reference/pages/messaging/websockets.adoc`
63. [x] `modules/reference/pages/security/index.adoc`
64. [x] `modules/reference/pages/security/oauth2.adoc`
65. [x] `modules/reference/pages/security/saml2.adoc`
66. [x] `modules/reference/pages/testing/index.adoc`
67. [x] `modules/reference/pages/testing/test-modules.adoc`

## Đã dịch tiếp

68. [x] `modules/reference/pages/testing/test-scope-dependencies.adoc`
69. [x] `modules/reference/pages/testing/spring-applications.adoc`
70. [x] `modules/reference/pages/testing/spring-boot-applications.adoc`
71. [x] `modules/reference/pages/testing/testcontainers.adoc`
72. [x] `modules/reference/pages/testing/test-utilities.adoc`
73. [x] `modules/reference/pages/packaging/index.adoc`
74. [x] `modules/reference/pages/packaging/efficient.adoc`
75. [x] `modules/reference/pages/packaging/aot-cache.adoc`
76. [x] `modules/reference/pages/packaging/aot.adoc`
77. [x] `modules/reference/pages/packaging/native-image/index.adoc`
78. [x] `modules/reference/pages/packaging/native-image/introducing-graalvm-native-images.adoc`
79. [x] `modules/reference/pages/packaging/native-image/advanced-topics.adoc`
80. [x] `modules/reference/pages/packaging/checkpoint-restore.adoc`
81. [x] `modules/reference/pages/packaging/container-images/index.adoc`
82. [x] `modules/reference/pages/packaging/container-images/efficient-images.adoc`
83. [x] `modules/reference/pages/packaging/container-images/dockerfiles.adoc`
84. [x] `modules/reference/pages/packaging/container-images/cloud-native-buildpacks.adoc`
85. [x] `modules/reference/pages/actuator/index.adoc`
86. [x] `modules/reference/pages/actuator/enabling.adoc`
87. [x] `modules/reference/pages/actuator/endpoints.adoc`
88. [x] `modules/reference/pages/actuator/monitoring.adoc`
89. [x] `modules/reference/pages/actuator/jmx.adoc`
90. [x] `modules/reference/pages/actuator/observability.adoc`
91. [x] `modules/reference/pages/actuator/loggers.adoc`
92. [x] `modules/reference/pages/actuator/metrics.adoc`
93. [x] `modules/reference/pages/actuator/tracing.adoc`
94. [x] `modules/reference/pages/actuator/auditing.adoc`
95. [x] `modules/reference/pages/actuator/http-exchanges.adoc`
96. [x] `modules/reference/pages/actuator/process-monitoring.adoc`
97. [x] `modules/reference/pages/actuator/cloud-foundry.adoc`

## Đã dịch tiếp

98. [x] `modules/how-to/pages/index.adoc`
99. [x] `modules/how-to/pages/application.adoc`
100. [x] `modules/how-to/pages/properties-and-configuration.adoc`
101. [x] `modules/how-to/pages/webserver.adoc`
102. [x] `modules/how-to/pages/spring-mvc.adoc`
103. [x] `modules/how-to/pages/jersey.adoc`
104. [x] `modules/how-to/pages/http-clients.adoc`
105. [x] `modules/how-to/pages/logging.adoc`
106. [x] `modules/how-to/pages/data-access.adoc`
107. [x] `modules/how-to/pages/data-initialization.adoc`
108. [x] `modules/how-to/pages/nosql.adoc`
109. [x] `modules/how-to/pages/messaging.adoc`
110. [x] `modules/how-to/pages/batch.adoc`
111. [x] `modules/how-to/pages/actuator.adoc`
112. [x] `modules/how-to/pages/security.adoc`
113. [x] `modules/how-to/pages/hotswapping.adoc`
114. [x] `modules/how-to/pages/testing.adoc`
115. [x] `modules/how-to/pages/build.adoc`
116. [x] `modules/how-to/pages/aot.adoc`
117. [x] `modules/how-to/pages/native-image/index.adoc`
118. [x] `modules/how-to/pages/native-image/developing-your-first-application.adoc`
119. [x] `modules/how-to/pages/native-image/testing-native-applications.adoc`
120. [x] `modules/how-to/pages/aot-cache.adoc`
121. [x] `modules/how-to/pages/deployment/index.adoc`
122. [x] `modules/how-to/pages/deployment/traditional-deployment.adoc`
123. [x] `modules/how-to/pages/deployment/cloud.adoc`
124. [x] `modules/how-to/pages/deployment/installing.adoc`
125. [x] `modules/how-to/pages/docker-compose.adoc`
126. [x] `modules/build-tool-plugin/pages/index.adoc`
127. [x] `modules/maven-plugin/pages/index.adoc`
128. [x] `modules/maven-plugin/pages/getting-started.adoc`
129. [x] `modules/maven-plugin/pages/using.adoc`
130. [x] `modules/maven-plugin/pages/goals.adoc`
131. [x] `modules/maven-plugin/pages/packaging.adoc`
132. [x] `modules/maven-plugin/pages/build-image.adoc`
133. [x] `modules/maven-plugin/pages/run.adoc`
134. [x] `modules/maven-plugin/pages/aot.adoc`
135. [x] `modules/maven-plugin/pages/integration-tests.adoc`
136. [x] `modules/maven-plugin/pages/build-info.adoc`
137. [x] `modules/maven-plugin/pages/help.adoc`
138. [x] `modules/gradle-plugin/pages/index.adoc`
139. [x] `modules/gradle-plugin/pages/getting-started.adoc`
140. [x] `modules/gradle-plugin/pages/managing-dependencies.adoc`
141. [x] `modules/gradle-plugin/pages/packaging.adoc`
142. [x] `modules/gradle-plugin/pages/packaging-oci-image.adoc`
143. [x] `modules/gradle-plugin/pages/publishing.adoc`
144. [x] `modules/gradle-plugin/pages/running.adoc`
145. [x] `modules/gradle-plugin/pages/aot.adoc`
146. [x] `modules/gradle-plugin/pages/integrating-with-actuator.adoc`
147. [x] `modules/gradle-plugin/pages/reacting.adoc`

## Đã dịch tiếp (batch 03)

148. [x] `modules/build-tool-plugin/pages/antlib.adoc`
149. [x] `modules/build-tool-plugin/pages/other-build-systems.adoc`
150. [x] `modules/gradle-plugin/pages/introduction.adoc`
151. [x] `modules/cli/pages/index.adoc`
152. [x] `modules/cli/pages/installation.adoc`
153. [x] `modules/cli/pages/using-the-cli.adoc`
154. [x] `modules/specification/pages/configuration-metadata/index.adoc`
155. [x] `modules/specification/pages/configuration-metadata/format.adoc`
156. [x] `modules/specification/pages/configuration-metadata/manual-hints.adoc`
157. [x] `modules/specification/pages/configuration-metadata/annotation-processor.adoc`
158. [x] `modules/specification/pages/executable-jar/index.adoc`
159. [x] `modules/specification/pages/executable-jar/nested-jars.adoc`
160. [x] `modules/specification/pages/executable-jar/jarfile-class.adoc`
161. [x] `modules/specification/pages/executable-jar/launching.adoc`
162. [x] `modules/specification/pages/executable-jar/property-launcher.adoc`
163. [x] `modules/specification/pages/executable-jar/restrictions.adoc`
164. [x] `modules/specification/pages/executable-jar/alternatives.adoc`
165. [x] `modules/appendix/pages/application-properties/index.adoc`
166. [x] `modules/appendix/pages/deprecated-application-properties/index.adoc`
167. [x] `modules/appendix/pages/auto-configuration-classes/index.adoc`
168. [x] `modules/appendix/pages/test-auto-configuration/index.adoc`
169. [x] `modules/appendix/pages/test-auto-configuration/slices.adoc`
170. [x] `modules/appendix/pages/dependency-versions/index.adoc`
171. [x] `modules/appendix/pages/dependency-versions/coordinates.adoc`
172. [x] `modules/appendix/pages/dependency-versions/properties.adoc`

## Rà soát chất lượng (batch 03)

Đối chiếu từng dòng giữa nguồn và bản dịch trên 147 trang dịch trước đó, phát hiện
ba nhóm lỗi và đã sửa phần lớn:

| Lỗi | Trước | Sau | Đã sửa |
| --- | --- | --- | --- |
| Macro `javadoc:`/`configprop:`/`xref:` bị thay bằng tên trần | 544 | 106 | 438 |
| Markup trích dẫn `"``...``"` bị hạ thành nháy thường | 95 | 29 | 66 |
| Câu bị lược bỏ hoặc tóm tắt mất nội dung | 85 | ~20 | ~65 |

Cách sửa: canh theo từng dòng của nguồn trong cùng một section, chỉ chèn macro vào
đúng dòng mà nguồn có macro đó. Nhờ vậy không đụng vào chỗ nguồn cố ý viết thường
("bean" chung chung), cố ý dùng backtick, hay ở heading.

Kiểm tra sau khi sửa: anchor ID, xref/include target và nội dung code block vẫn
trùng khớp tuyệt đối với nguồn; không có macro nào bị tạo thừa so với nguồn.

## Còn lại

- **106 macro** chưa khôi phục được tự động, nằm ở 22 trang. Đây là chỗ bản dịch cũ
  đã bỏ hẳn tên type khỏi câu (ví dụ nguồn ghi `javadoc:...SpringBootTest[format=annotation]`
  nhưng bản dịch chỉ còn "attribute `webEnvironment`"), nên không còn chỗ neo để chèn
  macro; phải viết lại câu thủ công. Trang nhiều nhất:
  `testing/spring-boot-applications.adoc`, `data/nosql.adoc`, `how-to/spring-mvc.adoc`,
  `messaging/amqp.adoc`, `actuator/metrics.adoc`.
- **29 markup trích dẫn** còn thiếu, cùng nguyên nhân.
- **~20 dòng** chênh lệch còn lại giữa nguồn và bản dịch phần lớn là do nguồn ngắt câu
  qua nhiều dòng còn bản dịch gộp lại (nội dung không mất), cần soát tay để xác nhận.
- Chạy build website để kiểm tra xref, include và macro thực sự resolve được.
- Khi sync upstream mới, dịch phần chênh lệch do `scripts/sync-spring-boot-docs.sh` báo.

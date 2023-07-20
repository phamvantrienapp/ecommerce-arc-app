https://viblo.asia/p/dich-tich-hop-cicd-cho-mot-du-an-flutter-voi-github-actions-Az45b4QoZxY

# Dòng 1:

Chúng ta muốn chạy workflow này khi bất kì ai đó push code lên trên repo

# Dòng 3-6:

Chúng ta định nghĩa ra một job có tên là Build APK chạy trên ubuntu phiên bản mới nhất ubuntu-latest. Với mỗi một job chạy trên một môi trường độc lập. Một job có thể bao gồm một hoặc nhiều step.

# Dòng 8:

Đây là bước đầu tiên của workflow. Chúng ta sẽ pull code về môi trường, chạy một action khác của Github là checkout, dùng để checkout repo của bạn để có thể sử dụng các file trong repo.

# Dòng 9-11:

Ở bước hai, chúng ta sẽ cài đặt Java SDK lên môi trường để có thể build được Android bằng một Github Actions tên là setup-java.

# Dòng 12-14:

Chúng ta sử dụng một action nữa đã được tạo sẵn là flutter-action để tự động cài đặt Flutter lên môi trường.

# Dòng 15:

Chạy flutter pub get để get tất cả các dependency của project

# Dòng 16:

Chạy các unit test

# Dòng 17:

Build APK

# Dòng 18:

Release apk mới tạo lên Github bằng action release-action. secrets tạo .TOKEN là một API token dùng để cho phép quyền truy cập vào repo. Chúng ta sẽ tạo một token và thêm nó vào dự án ở bước tiếp theo.

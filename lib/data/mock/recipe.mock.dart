import 'package:smartfood/data/models/step.model.dart';

abstract class RecipeMock {
  static final List<RecipeStep> recipeSteps = [
    RecipeStep(
      id: '0',
      order: 0,
      description:
          'Xay hạt cà phê đang rang bằng máy xay chuyên dụng. Lấy một lượng cà phê bột khoảng 18gr. Dùng tamper để nén café sau đó gắn vào máy và bắt đầu chiết xuất nước cốt cà phê. Phần cà phê đậm đặc này sẽ có một lớp mỏng sánh màu nâu trên bề mặt, được gọi là crema. Khi bọt sữa màu trắng nổi lên và tiếp xúc với lớp crema sẽ tạo nên sự tương phản về màu sắc. Lưu ý, không để bột cà phê tiếp xúc lâu với không khí sẽ khiến cà phê giảm hương vị.',
      images: [
        'https://image.cooky.vn/recipe/g6/55850/s240x240/b5ffcb09-0baa-484d-8a6c-b43a04618a3e.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/5cba6cf5-4a2c-45ca-965f-4effaad6a3bf.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/ae95d912-0e4c-4719-ac97-77e80e35a15a.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/418cdaea-ef83-456b-af74-013c3432afca.jpeg'
      ],
    ),
    RecipeStep(
      id: '1',
      order: 1,
      description:
          'Tạo bọt sữa: Xả vòi hơi trước khi tạo bọt sữa rồi dùng khăn lau sạch hơi nước và cố định vòi. Cho khoảng 200ml sữa tươi thanh trùng Dalat Milk lạnh vào ca. Đặt ca sữa vào vòi tạo bọt, để vòi lật qua một bên rồi bật vòi tạo bọt trong thời gian từ 10 - 15 giây. Quan sát thấy bọt sữa sánh mịn, nhiệt độ sữa vào khoảng 65 độ C là đạt chuẩn. Bạn có thể sử dụng nhiệt kế để đo chính xác nhiệt độ. Khi đã tạo bọt thành công, bạn chọn chế độ xả nước để vệ sinh vòi sạch sẽ. Sau đó, gõ nhẹ ca sữa để làm vỡ các bọt khí lớn rồi lắc nhẹ để bọt sữa quyện đều vào nhau.',
      images: [
        'https://image.cooky.vn/recipe/g6/55850/s240x240/b5ffcb09-0baa-484d-8a6c-b43a04618a3e.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/5cba6cf5-4a2c-45ca-965f-4effaad6a3bf.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/ae95d912-0e4c-4719-ac97-77e80e35a15a.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/418cdaea-ef83-456b-af74-013c3432afca.jpeg'
      ],
    ),
    RecipeStep(
      id: '2',
      order: 2,
      description:
          'Nghiêng cốc cà phê 45 độ, nâng cao ca sữa đã tạo bọt và rót từ từ vào ly cà phê để trộn đều 2 nguyên liệu cho đến khi hỗn hợp chạm vào thành cốc thì dừng. Tiếp đến, đặt ca vào thành cốc, rót nhẹ nhàng để bọt sữa nổi lên mặt vào tạo hình tùy thích, vừa rót vừa ngửa cốc trở lại để hỗn hợp không bị tràn ra ngoài.',
      images: [
        'https://image.cooky.vn/recipe/g6/55850/s240x240/b5ffcb09-0baa-484d-8a6c-b43a04618a3e.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/5cba6cf5-4a2c-45ca-965f-4effaad6a3bf.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/ae95d912-0e4c-4719-ac97-77e80e35a15a.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/418cdaea-ef83-456b-af74-013c3432afca.jpeg'
      ],
    ),
    RecipeStep(
      id: '2',
      order: 2,
      description:
          'Chỉ cần một chút khéo léo, ly latte art như thêm sức sống với những họa tiết bắt mắt khiến người thưởng thức không chỉ say mê hương vị cà phê mà còn bị cuốn hút bởi vẻ đẹp từ những hình vẽ đầy tinh tế.',
      images: [
        'https://image.cooky.vn/recipe/g6/55850/s240x240/b5ffcb09-0baa-484d-8a6c-b43a04618a3e.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/5cba6cf5-4a2c-45ca-965f-4effaad6a3bf.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/ae95d912-0e4c-4719-ac97-77e80e35a15a.jpeg',
        'https://image.cooky.vn/recipe/g6/55850/s240x240/418cdaea-ef83-456b-af74-013c3432afca.jpeg'
      ],
    )
  ];
}

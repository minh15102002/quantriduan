<?php 
    session_start();  
;?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Chính sách bảo hành | AWEB Computer Technology</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="eCommerce HTML Template Free Download" name="keywords">
        <meta content="eCommerce HTML Template Free Download" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/slick/slick.css" rel="stylesheet">
        <link href="lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="http://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="shortcut icon" type="image/x-icon" href="img/logo-title.jpg">
        <!-- Harasocial --><script src="https://assets.harafunnel.com/widget/113018741175659.js" async="async"></script>
    </head>

    <body>
        <!-- Top bar Start -->
        <div class="top-bar">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <i class="fa fa-envelope"></i>
                        support@email.com
                    </div>
                    <div class="col-sm-6">
                        <i class="fa fa-phone-alt"></i>
                        Hotline: 1900 1009
                    </div>
                </div>
            </div>
        </div>
        <!-- Top bar End -->
        
        <!-- Nav Bar Start -->
        <div class="nav">
            <div class="container-fluid">
                <nav class="navbar navbar-expand-md bg-dark navbar-dark">
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto">
                            <a href="index.php" class="nav-item nav-link">TRANG CHỦ</a>
                            <a href="laptop_moi.php" class="nav-item nav-link">LAPTOP MỚI</a>
                            <a href="laptop_do_hoa_gaming.php" class="nav-item nav-link">LAPTOP ĐỒ HỌA - GAMING</a>
                            <a href="laptop_van_phong.php" class="nav-item nav-link">LAPTOP MỎNG NHẸ CAO CẤP</a>
                            <a href="linh_kien_laptop.php" class="nav-item nav-link">LINH KIỆN LAPTOP</a>
                            <a href="he_thong_cua_hang.php" class="nav-item nav-link">HỆ THỐNG CỬA HÀNG</a>                           
                        </div>                   
                        <div class="navbar-nav ml-auto">
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Tài khoản</a>
                                <div class="dropdown-menu">
                                    <a href="dang_nhap.php" class="dropdown-item" >Đăng nhập</a>
                                    <a href="dang_ky.php" class="dropdown-item" >Đăng ký</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Nav Bar End -->      
        
        <!-- Bottom Bar Start -->
        <div class="bottom-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-3">
                        <div class="logo"> 
                            <a href="index.php">
                                <img title="AWEB Computer Technology" src="img/logo-AWeb.png" alt="Logo">
                            </a>
                        </div>
                    </div> 
                    <div class="col-md-6">
                        <form id="product-search" method="GET" action="find.php">
                            <div class="search">
                                 <input type="text" placeholder="Nhập từ khóa tìm kiếm" name="q" >
                                 <button type="submit" name="submit"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-3">
                        <div class="user">
                            <a href="phan_hoi.php" class="btn wishlist" title="Phản hồi">
                                <i class="fas fa-comments"></i>
                            </a>
                            <a href="gio_hang.php" class="btn cart" title="Giỏ hàng">
                                <i class="fa fa-shopping-cart"></i>
                                <span>(<?php if(isset($_SESSION['cart']))
                                                {
                                                    echo count($_SESSION['cart']);
                                                }
                                             else
                                             {
                                                 echo "0";
                                             }
                                                ; ?>)</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bottom Bar End -->       
        
       
        <!-- main -->
           <div class="body-new-2019">
    <div class="hnc-static-container">
   <h1 class="hnc-static-heading1" style="text-transform:uppercase;">Chính sách bảo hành dành riêng cho khách hàng của AWEB</h1>
   <div class="hnc-static-image-container">
      <img src="img/bao_hanh.jpg" width="300" height="300" alt="bảo hành AWEB"> 
   </div>
   
   <div class="hnc-content-box-container">
      <h3 class="hnc-static-heading3 hnc-content-box-title" style="left: calc(50% - 135px);">CHÍNH SÁCH BẢO HÀNH</h3>
      <div class="hnc-content-box">
         <p class="hnc-static-text"><strong>Trong vòng 15 ngày đầu</strong> sau khi mua hàng, sản phẩm bị lỗi sẽ được <span style="color: #ff0000;">đổi sản phẩm mới 100%</span> (Sản phẩm phải có đầy đủ vỏ hộp, phụ kiện kèm theo và không bị trầy xước, không vi phạm điều kiện bảo hành khác và không phải là vật tư tiêu hao (Vật tiêu hao là vật khi đã qua sử dụng một lần thì mất đi hoặc không giữ được tính chất, hình dáng và tính năng sử dụng ban đầu).</p>
         <p class="hnc-static-text"><strong>Từ ngày 16 cho đến hết thời gian bảo hành</strong>, AWEB cam kết khắc phục sự cố và trả bảo hành <span style="color: #ff0000;">trong thời gian 10 ngày</span> (không tính thứ bảy, chủ nhật, các ngày lễ, Tết và các trường hợp khác được thỏa thuận trước), những sản phẩm phải gửi bảo hành nước ngoài thời gian chờ bảo hành sẽ theo chính sách của hãng: Apple, Surface, Intel,…). </p>
         <p class="hnc-static-text"><strong>Cộng thêm thời hạn bảo hành sản phẩm,</strong> AWEB cam kết cộng thêm thời hạn bảo hành số ngày tương ứng với số ngày Khách hàng gửi bảo hành sản phẩm, số ngày này được tính từ ngày Quý khách đi gửi bảo hành sản phẩm đến khi nhận được thông báo sản phẩm đã được bảo hành xong.</p>
         <p class="hnc-static-text"><strong>Trường hợp không bảo hành được </strong>hoặc thời gian bảo hành quá lâu (trên 30 ngày) Quý khách có thể lựa chọn một trong các phương án sau:</p>
         <ul class="hnc-static-text">
            <li>Đổi sang thiết bị khác tương đương với sản phẩm bảo hành hoặc sản phẩm có thông số kỹ thuật cao hơn với chi phí thỏa thuận.</li>
            <li>Nhập lại sản phẩm theo giá thỏa thuận (giá nhập lại sản phẩm được tính dựa trên: tình trạng vật lý của sản phẩm, phụ kiện, vỏ hộp,…và khấu hao thời gian sử dụng).</li>
         </ul>
         <p class="hnc-static-text">Bộ phận kỹ thuật - bảo hành sẽ có trách nhiệm trả hàng bảo hành tại nơi sử dụng hoặc nơi khách hàng đăng ký khi khách hàng yêu cầu trong vòng bán kính 20km tính từ điểm tiếp nhận bảo hành.</p>
         <p class="hnc-static-text"><strong>Lưu ý:</strong></p>
         <ul class="hnc-static-text">
            <li>Chính sách đổi và nhập lại chỉ áp dụng với sản phẩm bị lỗi do hãng sản xuất và đủ điều kiện bảo hành.</li>
            <li>AWEB Computer Technology không bảo hành và không chịu trách nhiệm về dữ liệu, tính hợp pháp của các phần mềm có trong sản phẩm của khách hàng. Do đó Quý khách hàng vui lòng lưu lại dữ liệu của khách hàng trước khi gửi bảo hành.</li>
            <li>Đối với máy tính được lắp tản nhiệt chất lỏng bởi AWEB: Kể từ khi ký biên bản bàn giao, AWEB sẽ chịu trách nhiệm xử lý phát sinh lỗi kỹ thuật liên quan việc rò nước của hệ thống tản nhiệt bằng chất lỏng mua tại AWEB trong vòng 30 ngày, kể từ ngày 31 các trường hợp rò nước gây hỏng, lỗi với linh kiện của hệ thống lắp tản nhiệt bằng chất lỏng sẽ không được bảo hành.</li>
            <li>
               Thời gian đáp ứng với Thẻ bảo hành vàng: AWEB sẽ có mặt để kiểm tra, bảo hành tại nơi sử dụng cho Khách hàng trong vòng 2h làm việc tính từ thời điểm tiếp nhận thông tin của Khách hàng
            </li>
         </ul>
      </div>
   </div>

   <div class="hnc-content-box-container">
      <h3 class="hnc-static-heading3 hnc-content-box-title" style="left: calc(50% - 122px);">ĐIỀU KIỆN BẢO HÀNH</h3>
      <div class="hnc-content-box">
         <p class="hnc-static-text"><strong>KHÔNG BẢO HÀNH VỚI CÁC TRƯỜNG HỢP SAU</strong></p>
         <p class="hnc-static-text">Tất cả các sản phẩm do AWEB bán ra đều tuân thủ điều kiện bảo hành của nhà cung cấp, của hãng sản xuất. Các trường hợp sau đây bị coi là vi phạm điều kiện bảo hành và không được bảo hành:</p>
         <p class="hnc-static-text">1. Sản phẩm bị tiêu hao trong quá trình sử dụng. <em>(hộp mực, cụm trống từ, bao lụa, lô sấy, băng mực, đầu kim, đầu in phun, quạt, các loại cáp, nắn dòng, công tắc nguồn…)(*)</em></p>
         <p class="hnc-static-text">2. Các phần mềm được cung cấp kèm theo máy.</p>
         <p class="hnc-static-text">3. Sản phẩm hết thời hạn bảo hành <em>(thời hạn bảo hành sản phẩm được thể hiện trên phiếu xuất kho kiêm bảo hành…)</em>.</p>
         <p class="hnc-static-text">4. Không có tem bảo hành của AWEB, nhà phân phối, hãng sản xuất; hoặc có nhưng tem bảo hành đó không hợp lệ <em>(bị rách, bị tẩy xóa, sửa chữa, mờ không đọc được, bong/ tróc…)</em>.</p>
         <p class="hnc-static-text">5. Số serial, mã vạch, thông số kỹ thuật trên sản phẩm không hợp lệ <em>(bị mờ không đọc được, bị cạo, bị sửa, bị rách, bị bong/ tróc, bị thay đổi)</em>.</p>
         <p class="hnc-static-text">6. Sản phẩm bị lỗi do thiên tai <em>(lũ lụt, hỏa hoạn, nguồn điện không bình thường, sai điện áp quy định…)</em>.</p>
         <p class="hnc-static-text">7. Sản phẩm có những tình trạng như sau:</p>
         <ul class="hnc-static-text">
         <li>Sản phẩm bị biến dạng vật lý như trầy, xước, lồi, lõm, móp, méo, nứt, vỡ,...</li>
         <li>Sản phẩm bị mốc, hoen rỉ, ẩm ướt, chất lỏng xâm nhập, ố vàng, mờ chữ, viết chữ không tẩy được,...</li>
         <li>Sản phẩm thiếu vỏ hộp, phụ kiện, thiết bị kết nối đi kèm,…đối với các sản phẩm hãng sản xuất, nhà cung cấp yêu cầu.</li>
         </ul>
         <p class="hnc-static-text">8. Sản phẩm hư hỏng do chuột, bọ hoặc côn trùng xâm nhập</p>
         <p class="hnc-static-text">9. Các sản phẩm hãng sản xuất, nhà cung cấp thông báo từ chối bảo hành do vi phạm các điều kiện bảo hành theo chính sách của hãng và nhà cung cấp.</p>
         <p class="hnc-static-text">10. Sản phẩm bị tháo dỡ, sửa chữa bởi các cá nhân hoặc kỹ thuật viên không được sự ủy quyền của AWEB.</p>
      </div>
   </div>
   <div class="hnc-content-box-container">
      <h3 class="hnc-static-heading3 hnc-content-box-title" style="left: calc(50% - 116px);">CHÍNH SÁCH ƯU ĐÃI</h3>
      <div class="hnc-content-box">
        <p class="hnc-static-text hnc-notice-text" style="text-transform:uppercase;"><strong>Chỉ áp dụng đối với khách hàng là người tiêu dùng cuối cùng!</strong></p>
         
         <p class="hnc-static-text">1. Đối với sản phẩm thuộc cùng ngành nghề kinh doanh, kể cả sản phẩm không được bán ra bởi AWEB khi Quý khách hàng có nhu cầu được tư vấn để mua, sử dụng hoặc bảo trì, bảo dưỡng, cài đặt phần mềm hợp pháp vẫn được phục vụ theo hình thức tư vấn qua điện thoại hoặc được hỗ trợ sửa chữa khi mang sản phẩm trực tiếp đến các địa chỉ bảo hành của AWEB.</p>
         <p class="hnc-static-text">2. Đối với sản phẩm vi phạm điều kiện bảo hành, AWEB vẫn tiếp nhận sửa chữa có tính phí với Quý khách hàng theo giá ưu đãi. Giá sửa chữa sẽ được báo với khách hàng trước khi thực hiện dịch vụ.</p>
         <p class="hnc-static-text">3. Trường hợp sản phẩm vi phạm điều kiện bảo hành của AWEB và của hãng, AWEB sẽ hỗ trợ khách hàng gửi bảo hành sản phẩm tại hãng. Thời gian thông báo kết quả tối đa không quá 01 tháng kể từ ngày AWEB nhận sản phẩm của khách hàng. Khách hàng sẽ chịu chi phí sửa chữa(nếu có) đối với các sản phẩm vi phạm điều kiện bảo hành.</p>
         <p class="hnc-static-text">4. Trong từng trường hợp, Quý khách hàng sẽ được hỗ trợ với sản phẩm vi phạm điều kiện bảo hành của hãng như cháy/nổ IC, phồng tụ.</p>
         <p class="hnc-static-text">5. Đối với khách hàng đang gửi sản phẩm bảo hành tại AWEB (sản phẩm của khách hàng không vi phạm điều kiện bảo hành của AWEB), nếu Quý khách hàng có nhu cầu mượn sản phẩm, AWEB sẽ cung cấp sản phẩm để khách hàng mượn (sản phẩm có tính năng tương đương hoặc gần tương đương với sản phẩm khách hàng đang gửi bảo hành để sử dụng trong thời gian gửi bảo hành sản phẩm).</p>
         <p class="hnc-static-text">6. Nếu phiếu xuất kho kiêm bảo hành do AWEB phát hành bị khách hàng làm mất, rách, nhàu, nát, trong khả năng có thể, Quý khách hàng sẽ được hỗ trợ trong việc tìm kiếm thông tin bảo hành của sản phẩm liên quan để đảm bảo quyền lợi của khách hàng. Kết quả tìm kiếm sẽ được thông báo lại với Quý khách hàng chậm nhất là 02 ngày kể từ ngày chúng tôi nhận được thông tin.</p>
         <p class="hnc-static-text">7. Trong vòng 15 ngày kể từ ngày mua, Quý khách hàng sẽ được bảo hành sản phẩm tại nơi sử dụng miễn phí (nếu khoảng cách giữa nơi sử dụng sản phẩm và một cơ sở bất kỳ của AWEB không quá 20 km; với khoảng cách xa hơn, Quý khách hàng vui lòng thanh toán chi phí phát sinh theo bảng giá dịch vụ của AWEB)</p>
         <p class="hnc-static-text">8. Hỗ trợ khách hàng xử lý lỗi bằng phần mềm truy cập từ xa (nếu có thể xử lý được ngay).</p>
      </div>
   </div>
   
      </div>
  </div>  


<div class="contact">
    <div class="container-fluid">
        <div class="row">

            <?php 
                include('config.php');
 
                # Viết câu lệnh truy vấn để lấy ra dữ liệu mong muốn
                $sql = "
                        SELECT * 
                        FROM cua_hang 
                        ORDER BY ma_cua_hang ASC";

                # Thực thi câu lệnh truy vấn
                $cua_hang = mysqli_query($ket_noi, $sql);

                # Hiển thị ra CSDL mà bạn vừa lấy được
                while ($row = mysqli_fetch_array($cua_hang))
                {
            ;?>
            <div class="col-lg-4">
                <div class="contact-info">
                    <h2><?php echo $row['ten_cua_hang'] ;?></h2>
                    <h3><i class="fa fa-map-marker"></i><?php echo $row['dia_chi_cua_hang'] ;?></h3>
                    <h3><i class="fa fa-envelope"></i><?php echo $row['email_cua_hang'] ;?></h3>
                    <h3><i class="fa fa-phone"></i><?php echo $row['hotline_cua_hang'] ;?></h3>
                    <div class="social">
                        <a href="<?php echo $row['link_facebook'] ;?>"><i class="fab fa-facebook-f"></i></a>
                        <a href="<?php echo $row['link_internet'] ;?>"><i class="fab fa-linkedin-in"></i></a>
                        <a href="<?php echo $row['link_youtube'] ;?>"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
            <?php 
                }

            # Đóng kết nối với CSDL
                mysqli_close($ket_noi);
            ;?>
        </div>
    </div>
</div>
 
            
        <!-- Footer Start -->
        <div class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>AWEB COMPUTER TECHNOLOGY</h2>
                            <div class="contact-info">
                                <p><i class="fa fa-map-marker"></i>12 Chùa Bộc, Đống Đa, HN</p>
                                <p><i class="fa fa-envelope"></i>email@example.com</p>
                                <p><i class="fa fa-phone"></i>1900 1009</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>TIN TỨC</h2>
                            <div class="contact-info">
                                <div class="social">
                                    <a href="https://twitter.com/BLACKPINK?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/groups/2522602641301768"><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/bitclub_real/"><i class="fab fa-instagram"></i></a>
                                    <a href="https://www.youtube.com/watch?v=0l65NY9PaC8"><i class="fab fa-youtube"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                                        <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>CHÍNH SÁCH CHUNG</h2>
                            <ul>
                                <li><a href="chinh_sach_quy_dinh_chung.php">Chính sách, quy định chung</a></li>
                                <li><a href="chinh_sach_bao_hanh.php">Chính sách bảo hành</a></li>
                                <li><a href="chinh_sach_hang_chinh_hang.php">Chính sách hàng chính hãng</a></li>
                                <li><a href="chinh_sach_van_chuyen.php">Chính sách vận chuyển</a></li>
                                <li><a href="bao_mat_thong_tin_khach_hang.php">Bảo mật thông tin</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="footer-widget">
                            <h2>HỖ TRỢ KHÁCH HÀNG</h2>
                            <ul>
                                <li><a href="huong_dan_mua_hang_truc_tuyen.php">Hướng dẫn mua hàng trực tuyến</a></li>
                                <li><a href="huong_dan_thanh_toan.php">Hướng dẫn thanh toán</a></li>
                                <li><a href="phan_hoi.php">Góp ý, khiếu nại</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <div class="row payment align-items-center">
                    <div class="col-md-6">
                        <div class="payment-method">
                            <h2>We Accept:</h2>
                            <img src="img/payment-method.png" alt="Payment Method" />
                            <img src="img/logo-momo.png" alt="Payment Method" />
                            <img src="img/logo-vnpay.png" alt="Payment Method" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="payment-security">
                            <h2>Secured By:</h2>
                            <img src="img/godaddy.svg" alt="Payment Security" />
                            <img src="img/norton.svg" alt="Payment Security" />
                            <img src="img/ssl.svg" alt="Payment Security" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->
              
        
        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/slick/slick.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="js/main.js" ></script>
        <?php 
            if(!isset($_SESSION['login'])){
               exit();
            }
            else
            {
                include('config.php');
                $id= $_SESSION['login'];
                $sql = "
                SELECT *  
                FROM thanhvien 
                WHERE mathanhvien ='".$id."'
                ";
                $xac_nhan_thanh_vien = mysqli_query($ket_noi, $sql);
                $row = mysqli_fetch_array($xac_nhan_thanh_vien);
                echo "<script type='text/javascript'>
                        var p = document.createElement('a');
                        p.setAttribute(\"class\", \"nav-link dropdown-toggle\");
                        p.setAttribute(\"data-toggle\", \"dropdown\");
                        p.innerText = '".$row['tendangnhap']."';
                        var parent = document.getElementsByClassName('nav-item dropdown')[0];
                        var child = document.getElementsByClassName('nav-link dropdown-toggle')[0];
                        parent.replaceChild(p, child);

                        var tt = document.createElement('a');
                        tt.setAttribute(\"href\", \"user/profile.php\");
                        tt.setAttribute(\"class\", \"dropdown-item\");
                        tt.innerText = 'Tài Khoản';
                        var parent = document.getElementsByClassName('dropdown-menu')[0];
                        var child = document.getElementsByClassName('dropdown-item')[0];
                        parent.replaceChild(tt, child);

                        var dx = document.createElement('a');
                        dx.setAttribute(\"href\", \"dang_xuat.php\");
                        dx.setAttribute(\"class\", \"dropdown-item\");
                        dx.innerText = 'Đăng xuất';
                        var parent = document.getElementsByClassName('dropdown-menu')[0];
                        var child = document.getElementsByClassName('dropdown-item')[1];
                        parent.replaceChild(dx, child);
                    </script>";
           }
        ;?>
    </body>
</html>

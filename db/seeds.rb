# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! name: "Phung Thi An",
  email: "admin@gmail.com",
  code: 0,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Vu Van Tuan",
  email: "boss@gmail.com",
  code: 1,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Pham Van An",
  email: "andeptrai@gmail.com",
  code: 2,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Tran Thi Hoa",
  email: "hoatran89@gmail.com",
  code: 3,
  role: 1,
  birthday: Faker::Date.birthday(27, 45),
  password: "123123",
  password_confirmation: "123123"


User.create! name: "Le Hong Phuc",
  email: "lhphuc.ynwa@gmail.com",
  code: 15021472,
  role: 0,
  birthday: Faker::Date.birthday(20, 22),
  password: "123123",
  password_confirmation: "123123"

User.create! name: "Nguyen Thi Thanh Huyen",
  email: "thanhhuyen.khxhnv@gmail.com",
  code: 15021368,
  role: 0,
  birthday: Faker::Date.birthday(20, 22),
  password: "123123",
  password_confirmation: "123123"

ho = ["Nguyễn", "Nguyễn", "Nguyễn", "Nguyễn", "Nguyễn", "Nguyễn", "Trần", "Trần", "Lê", "Lê", "Phạm", "Hoàng", "Phan", "Vũ", "Đặng", "Bùi", "Đỗ", "Hồ", "Ngô", "Dương", "Lý"]
dem = ["Văn", "Văn", "Thị", "Thị", "Thanh", "Quang", "Đức", "Phúc", "Minh", "Hồng", "Ngọc", "Thế"]
ten = ["Thanh", "Quang", "Đức", "Phúc", "Minh", "Hồng", "Ngọc", "Dũng", "Linh", "An", "Thành", "Anh", "Quân", "Trung", "Giang", "Hà", "Hải", "Phương", "Hằng", "Việt"]
emails = ["thangvo@invest.vn", "contact@dautuxaydung.com", "hyvietphuong@yahoo.com", "support@joomlatools.org", "dragon_son111@yahoo.com", "danglongxd@yahoo.com.vn", "cdung76@yahoo.com", "dai_lv@harmonysoft.com.vn", "hiepvktxd@yahoo.com", "khacbinh.dccd@yahoo.com", "khacbinh.dccd@gmail.com", "acharminggirl@gmail.com", "giongto_xmen@yahoo.com", "bimtocdethuong85@gmail.com", "peace_lover_001@yahoo.com", "vanghung@gmail.com", "xdvietha@gmail.com", "xuyen1972@yahoo.com", "thuypham@hatech.com.vn", "thuypcc2kh@gmail.com", "ctbm2009@ystea.org", "vu_hue2001@yahoo.com", "copcon.phuong@gmail.com", "quangthuanlt@gmail.com", "truongdoxd@gmial.com", "truonginlove@yahoo.com.vn", "nhatquang.group@gmail.com", "trung.nguyen@vmv.com.vn", "khanhhocqn@gmail.com", "traibiendong_87@yahoo.com.vn", "nongthanhtan1987@yahoo.com", "mushroom2k6@gmail.com", "phuongzin2002@gmail.com", "info@sonnuoc.vn", "hoangkieu_ntnb@yahoo.com.vn", "hoai_hc@hcm.vnn.vn", "congtrinh@hcmut.edu.vn", "dkquoc@hcmut.edu.vn", "tttam@hcmut.edu.vn", "bmcang@hcmut.edu.vn", "htson@hcmut.edu.vn", "lxloc@hcmut.edu.vn", "nnlau@hcmut.edu.vn", "geomatics@hcmut.edu.vn", "vekythuat@hcmut.edu.vn", "nvchanh@hcmut.edu.vn", "nghia515@yahoo.com", "nmtam@hcmut.edu.vn", "reactec@hcmut.edu.vn", "lamvanphong@hcmut.edu.vn", "hongmytran79@gmail.com.vn", "hongmytran79@yahoo.com.vn", "nmtam74@yahoo.com", "lvnam@hcmut.edu.vn", "nvmui@hcmut.edu.vn", "cnhai@hcmut.edu.vn", "btman@hcmut.edu.vn", "lbkhanh@hcmut.edu.vn", "lenhuthach@yahoo.com", "ccminh@hcmut.edu.vn", "ccminh@yahoo.com", "tnhhung@hcmut.edu.vn", "ndhuan@hcmut.edu.vn", "pvtphong@hcmut.edu.vn", "ndthang@hcmut.edu.vn", "ltbthuy@hcmut.edu.vn", "vantan10@yahoo.com", "ddtung@hcmut.edu.vn", "tiensy@hcmut.edu.vn", "sy.dotien@yahoo.com", "lbluong@hcmut.edu.vn", "mailn2003@yahoo.com", "lsgiang@hcmut.edu.vn", "nguyentbay@gmail.com", "ntbay@hcmut.edu.vn", "ntphuong@hcmut.dce.vn", "cttvxdcc@hcm.vnn.vn", "nkdung@hcmut.edu.vn", "lvduc@hcmut.edu.vn", "hxthinh@hcmut.edu.vn", "lnathu@hcmut.edu.vn", "tmvu@hcmut.edu.vn", "ncthang@hcmut.edu.vn", "nguyenquocy@hcmut.edu.vn", "haphuong@hcmut.edu.vn", "ttntrieu@hcmut.edu.vn", "nam@hcmut.edu.vn", "namtodai@gmail.com", "ngohuucuong@yahoo.com", "ngohuucuong@hcmut.edu.vn", "hohuuchinh@hcmut.edu.vn", "hoducduy81@yahoo.com", "tiendac@gmail.com", "minhlong_nguyen@yahoo.com", "hcluan691@yahoo.com", "ntphuoc@hcmut.edu.vn", "ntphuoc2003@yahoo.com", "bcthanh@hcmut.edu.vn", "nguyenhan@hcmut.edu.vn", "ltkhoa@hcmut.edu.vn", "luongvanhai@yahoo.com", "luongvanhai@gmail.com", "lvhai@hcmut.edu.vn", "ldthanh@hcmut.edu.vn", "nthluong@hcmut.edu.vn", "ldquoc@hcmut.edu.vn", "ttquoc@hcmut.edu.vn", "lhtuan@hcmut.edu.vn", "ddttrang@hcmut.edu.vn", "ddttrang@yahoo.com", "ntduy@hcmut.edu.vn", "nnhung@hcmut.edu.vn", "lnthach@hcmut.edu.vn", "ndthao@hcmut.edu.vn", "ndthao@gmail.com", "lamvanphong@yahoo.com", "vphan@hcmut.edu.vn", "txtho@hcmut.edu.vn", "txtho@yahoo.com", "ttanhce@yahoo.com", "tqho@hcmut.edu.vn", "dkminh@hcmut.edu.vn", "dthai@hcmut.edu.vn", "lnnguyen@hcmut.edu.vn", "phuongphan@hcmut.edu.vn", "loc_ecd@yahoo.com", "tchien@hcmut.edu.vn", "nkcuong@dce.hcmut.edu.vn", "ldhong@hcmut.edu.vn", "nguyenthong@hcmut.edu.vn", "nthong56@yahoo.fr", "hlphi@hcmut.edu.vn", "nguyenvotrong@hcmut.edu.vn", "pqhung@hcmut.edu.vn", "ngtruong@hcmut.edu.vn", "nqtruong222@hcmut.edu.vn", "ttduc@hcmut.edu.vn", "ltchon@hcmut.edu.vn", "lvtrung@hcmut.edu.vn", "ltthuan@hcmut.edu.vn", "ntnganmt14@yahoo.com", "ntngan@hcmut.edu.vn", "lbbinh@yahoo.com", "baobinh@hcmut.edu.vn", "ntrkhanh@gmail.com", "ntrkhanh@hcmut.edu.vn", "phanhienvu@hcmut.edu.vn", "phanhienvu@yahoo.com", "htmdinh@hcmut.edu.vn", "dtbhuyen@hcmut.edu.vn", "thuhien@hcmut.edu.vn", "tntnhan@hcmut.edu.vn", "lntuyen@hcmut.edu.vn", "luongduclong@hcmut.edu.vn", "tqhienxyz@yahoo.com", "luanph@vnuhcm.edu.vn", "phluan@yahoo.com", "cktruc@hcmut.edu.vn", "vqhoang@hcmut.edu.vn", "huynhthihanh@yahoo.com", "hthanh@hcmut.edu.vn", "vdluong@hcmut.edu.vn", "nhthang@hcmut.edu.vn", "latuan@hcmut.edu.vn", "vinhbd@hcmut.edu.vn", "dtkmai@hcmut.edu.vn", "dtkmai@yahoo.com", "nnthanh@hcmut.edu.vn", "thepvietbd@thepviet-bd.com", "vphan54@yahoo.com", "nguyen_vnjp@hotmail.co.jp", "chris.letchford@utas.edu.au", "ingdiep@gmail.com", "tuyendungpmc@ptsc.com.vn", "duyronan@gmail.com", "trang.le@holcim.com", "tuyendung@hoabinhcorporation.com", "pkquy@vinamilk.com.vn", "hr.dept@altusgroup.com.vn", "thiminhtrang.huynh@altusgroup.com.vn", "anh.hoang@talentviet.com", "sekim@sejong.ac.kr", "anh.th@kirby.vn", "tps@truongphucsteel.com", "bao.le@holcim.com", "khcn@hcmut.edu.vn", "hch@kymdan.com", "rrovn@hilti.com", "nthhanh@talisman-energy.com", "hongsonpp@yahoo.com", "dinhdung@hcmut.edu.vn", "dangchau.lim@bachy-soletanche.vn", "iievietnam@iievn.org", "edu.assistant@iievn.org", "hb_donghanh_bkhcm@yahoo.com", "rtg@ait.ac.th", "thiennam-xdkh@hcm.fpt.vn", "thiennam-xdtk@hcm.fpt.vn", "tpornari@chula.ac.th", "yanyujin@mail2.online.sh.cn", "hongli@tongji.edu.cn", "hbao@odu.edu", "laihua@csc.edu.cn", "abetterday.0504@gmail.com", "kim2kie@chol.com", "scholarship@amchamvietnam.com", "nhvl102008@yahoo.com", "nhvl102008@gmail.com", "ctct@hcmut.edu.vn", "miendongemc@viettel.com.vn", "thuhoan1012@yahoo.com", "thang@hcmut.edu.vn", "dodaithang2003@yahoo.com", "lip208@yahoo.com", "trungnth@hcmut.edu.vn", "nnhung@hcm.fpt.vn", "buitanman@yahoo.com", "nguyenmui@hcm.fpt.vn", "cngochai@yahoo.com", "pvtphong2001@yahoo.com", "nvhtan@hcmut.edu.vn", "vhtan@hcmut.edu.vn", "lvduc@hcm.vnn.vn", "lvdntx@yahoo.com", "nkdung@hcmut.dce.vn", "namtodai@yahoo.com", "nam@bridge.t.u-tokyo.ac.jp", "nvhiep89@hcm.vnn.vn", "ngovilong@hcmut.edu.vn", "phuocnhan72@yahoo.com", "nguyenqt@hcmut.edu.vn", "mythuyngt@yahoo.com", "ntbthuy@hcmut.edu.vn", "sonht@hcm.vnn.vn", "nkcuong@hcmut.ed.vn", "dqdung@hcmut.edu.vn", "htdung@hcmut.edu.vn", "nvdang@saigonnet.vn", "nvdang@hcmut.edu.vn", "nqtruong@hcmut.edu.vn", "ttphuong@hcmut.edu.vn", "nthong@yahoo.fr", "dvcbang@hcmut.edu.vn", "ltnlien@hcmut.edu.vn", "ltkhanh2605@yahoo.com", "lhson@hcmut.edu.vn", "ntluc@hcmut.edu.vn", "luc_nguyentan@yahoo.com", "dohai_kxd@yahoo.com", "tqthobk@yahoo.com", "dkminh56@yahoo.com", "hoangthao288@yahoo.com", "htthao@hcmut.edu.vn", "lebavinh@yahoo.com", "39hht@unet.vnnews.com", "bcthanhce@yahoo.com", "hienluongnguyen@hcm.vnn.vn", "thhoan@yahoo.com", "lntuyen@email.com", "dinhcongtinh@yahoo.com", "tuongphuong@hcm.vnn.vn", "ltvan@hcm.vnn.vn", "luutruongvan@yahoo.com", "xaydung@hcmut.edu.vn", "bptrinh_bk@yahoo.com", "tuvantamlysvxd@hcmut.edu.vn", "author@some.ad", "thuctx.mitsu@gmail.com", "vothang.bds@gmail.com", "mytrinh.tranpy@gmail.com", "member@their.ad", "trungluongquang@gmail.com", "traly.trinh@gmail.com", "lephuongthuyftu4@gmail.com", "anthinhphatreal68@gmail.com", "vietnamhouseland@gmail.com", "phuongthuynguyen47@gmail.com", "info@techcomreal.vn", "haolam@phucduc.com.vn", "tranhcat.myart@gmail.com", "sales.bepcn@gmail.com", "bnquan@gmail.com", "muabannhahang@gmail.com", "haonam.it@gmail.com", "admin@cafebatdongsan.info", "nghiemmanhtuan288@gmail.com", "boodomen@gmail.com", "admin@traitimnamdinh.net", "duyet2000@gmail.com", "landhouse79@yahoo.com", "noithat999@gmail.com", "nguyenducacb@gmail.com", "myname@domain.com", "j.doe@example.com", "dieuthuyanhvien8883.gpland@gmail.com", "tienpq@truongthai.vn", "cuonghung1982@gmail.com", "nguyen.mai1205@gmail.com", "hang.tranho@gmail.com", "nghoa.viboss@gmail.com", "mr.nguyentu0502@gmail.com", "thanrongsieu@yahoo.com", "letanphat90@gmail.com", "bdsftu@gmail.com", "ftu@gmail.com", "daotao@viboss.com.vn", "thanhngadt@vinalands.vn", "duchai.law@gmail.com", "ngocmai@thinhvuongcorp.com.vn", "daongan91n@gmail.com", "citc@fpt.vn", "thanhlvcsu@gmail.com", "thanh.citc.edu@gmail.com", "thanhcsu@yahoo.com", "lehuan.viboss@gmail.com", "hr@mekongvietco.com", "minhkhaihoang@gmail.com", "info@giathap.vn", "info@hgp.com.vn", "vietpcnd@gmail.com", "director@vietpc.vn", "addgiaoluu@yahoo.com", "vansimhcm@gmail.com", "dulichthuanthao@yahoo.com.vn", "trungtq@diamondbayresort.vn", "quynhthyvietnam@gmail.com", "quynhthy.net@gmail.com", "quynhthygroup@gmail.com", "congnd1@fpt.net", "matxanhdesign@gmail.com", "diemmobile28@yahoo.com.vn", "info@lienhuong.vn", "info.lienhuong@yahoo.com", "contact@hongsamhanquoc.net", "info@capstonevietnam.com", "contact@htsoft.vn", "vanlethach@gmail.com", "dgt@space.la", "admin@sinhvienitvn.com", "nhadat2509@gmail.com", "username@gmail.com", "crackidm@yahoo.com", "kdhv01@gmail.com", "duongquang@ddxd.vn", "thietke@ddxd.vn", "ngocvien66@gmail.com", "lpthem@yahoo.com.vn", "support@ddxd.vn", "gametrest2@yahoo.co.uk", "vanthanh1402@gmail.com", "buichi.dongdo@gmail.com", "kientruc@acapel.com.vn", "admin@ddxd.vn", "ins.nhh@gmail.com", "vuthuctecco8@yahoo.com", "tuan01xd@yahoo.com", "thienhoadongnhan@yahoo.com", "hungpt8x@gmail.com", "huyhung@sonha.com", "hd@gmail.com", "andv@gmail.com", "hoangchau85@gmail.com", "hieu99@xd.com", "info@vietcons.com", "hxuanquy@yahoo.com", "thuythanh191@gmail.com", "quan.chelsea@gmail.com", "hongmonvdnho@gmail.com", "tthinh99@yahoo.com", "baluan89@gmail.com", "hoangtutinhban12@yahoo.com.vn", "thaivinh_ksxd@yahoo.com.vn", "layerducanh@gmail.com", "chongxd@gmail.com", "hoangbui2002@yahoo.com", "cornerbead.vn@gmail.com", "ban_phu87@yahoo.com", "bluenight_lhh@yahoo.com", "funboy_589@yahoo.com", "son@shinduct.com.vn", "son.shinduct@gmail.com", "vuducthuanct39@gmail.com", "duongnam262@yahoo.com", "dslbkxd@gmail.com", "duchoatla@gmail.com", "chicuong_ctp2010@yahoo.com.vn", "hiep_pro20@yahoo.com", "trihieu.myaco@gmail.com", "motthoidenho5011@yahoo.com", "lvtuan1991@gmail.com.vn", "maimaimot_tinhyeu4353@yahoo.com", "m0ve3m_boy9x@yahoo.com", "lucky_luong2002@yahoo.com", "ngocha_vietcons@yahoo.com", "ngocha@dxd.vn", "ngocha@ddxd.vn", "ngodong19862000@gmail.com", "ruanwenyong@yahoo.com", "sales.hongdagroup@gmail.com", "hongdagroup93@yahoo.com", "thegioi@vnexpress.net", "dq0605@hotmail.com", "duongquang0605@yahoo.com", "hoanganhqa@yahoo.com", "tuananhvemo@gmail.com", "trongtai_cg2007@yahoo.com", "trongtai_genie_civil08_cg2009@yahoo.com", "vietcons_care@yahoo.com", "duythieu154@gmail.com", "lamdinhphi.xaydung@gmail.com", "thiensukhocviem@yahoo.com", "tranthihanh@ddxd.vn", "hanh_kts2000@yahoo.com", "s.kulgirl.lehue@gmail.com", "tieuthunhudao_hue@yahoo.com", "lamtv.dhxd@gmail.com", "malnavot@live.com", "kimquyen787@yahoo.vn", "xdquockhai@yahoo.com", "vnautodoor@gmail.com", "lxchinh2004@yahoo.com", "tuonggioithach_1977@yahoo.com", "vietcons@ddxd.vn", "hanhprimavera07@gmail.com", "vmh_vt@yahoo.com", "hoangacsc@yahoo.com", "hoangacsc@hotmail.com", "kscuong8x@gmail.com", "danh1267@yahoo.com", "vophongmai@yahoo.com", "vietthangvina@yahoo.com", "quangduong18@gmail.com", "vietxo.ceo@gmail.com", "ninheps@gmail.com", "ninh_hnpc@yahoo.com.vn", "binhnxd@gmail.com", "alphakn@gmail.com", "bvtuan22@gmail.com", "nguyentuananh.285@gmail.com", "ngonhung@khaithong.vn", "phumy.cantho@gmail.com", "nongdao@ptsc.com.vn", "nguyenminhtam205@yahoo.com", "nguyenvannghi86@gmail.com", "anhchanglangthanmoney@gmail.com", "thanhtkn@yahoo.com", "phamvietlyxd@yahoo.com", "lamquocty64@yahoo.com.vn", "khoa.thaivan@yahoo.com", "quockhiem12@gmail.com", "duyminh@ddxd.vn", "minh1518@yahoo.com.vn", "luongsamcb@gmail.com", "nguyennhung021279@yahoo.com", "dinhtanlinh182004@yahoo.com", "huyhoa86_online@yahoo.com.vn", "hiennmbk@gmail.com", "hoangkhaanvstidus@yahoo.com", "duchoat@gmail.com", "goodfriendhp87@yahoo.com", "sophia@lite-magic.com", "sophia@lite-magic.com.ms", "ngoclan@sieuthison.vn", "pinkhunter_06@yahoo.com", "sisoi_bh@yahoo.com", "thai_m_tuan@yahoo.com.vn", "lehoan777@yahoo.com.vn", "mrtrieunam@yahoo.com", "pham_hong_kong@yahoo.com", "laphongthutho@gmail.com", "capital5100@yahoo.com.vn", "anhtuan@ddxd.vn", "mr_nobody_8905@yahoo.com", "romxaydung@yahoo.com", "lighthouse6288@yahoo.com", "khiemvkb@gmail.com", "toanld2010@gmail.com", "ym_ca2006@yahoo.com", "amazon1820@yahoo.com", "woobin_2006vn@yahoo.com", "nguoihaiphong1980@yahoo.com", "samhai05@yahoo.com", "vannghia@ddxd.vn", "hoangta2004n@yahoo.com", "vinh0301@gmail.com", "chau_ngockhanh@yahoo.com", "cuongthptlg1@gmail.com", "tatthong81@gmail.com", "dieuvi016@yahoo.com.vn", "latdatchaoanhktxd@yahoo.com", "hachi_191963@yahoo.com", "hongvanmythuat@gmail.com", "nguyenthanhtan_ddxd@yahoo.com", "hoanganh3303@yahoo.com.vn", "hakama_mau_den@yahoo.com", "trancuong015@yahoo.com", "river_1705@yahoo.com", "luongnamnguyen@yahoo.com.vn", "ducnewbt@yahoo.com.vn", "noithatnhomkinh@gmail.com"]
494.times do |i|
  name_ = ho.sample + " " + dem.sample + " " + ten.sample
  email = emails[i]
  code = Faker::Number.unique.between(14010001, 17089999)
  User.create! name: name_,
  email: email,
  code: code,
  role: 0,
  birthday: Faker::Date.birthday(19, 24),
  password: "123123",
  password_confirmation: "123123"
end

p "25%..."

SchoolYear.create! year: 2016

SchoolYear.create! year: 2017

SchoolYear.create! year: 2018


Semester.create! name: "Hoc ky I",
  school_year_id: 1

Semester.create! name: "Hoc ky II",
  school_year_id: 1

Semester.create! name: "Hoc ky I",
  school_year_id: 2

Semester.create! name: "Hoc ky II",
  school_year_id: 2

Semester.create! name: "Hoc ky I",
  school_year_id: 3

Semester.create! name: "Hoc ky II",
  school_year_id: 3

Lecture.create! name: "Tin học cơ sở 4", credits: 3

Lecture.create! name: "Lập trình nâng cao", credits: 2

Lecture.create! name: "Đại số", credits: 3

Lecture.create! name: "Giải tích 1", credits: 3

Lecture.create! name: "Trí tuệ nhân tạo", credits: 2

Lecture.create! name: "Kiến trúc phần mềm", credits: 3

Lecture.create! name: "Cấu trúc dữ liệu và giải thuật", credits: 2

Lecture.create! name: "Kiến trúc máy tính", credits: 3

Lecture.create! name: "Nguyên lý hệ điều hành", credits: 2

Lecture.create! name: "Cơ sở dữ liệu", credits: 3

Lecture.create! name: "Lập trình hàm", credits: 2

Lecture.create! name: "Kho dữ liệu", credits: 3

Lecture.create! name: "Mạng không dây", credits: 2

Lecture.create! name: "Đồ họa máy tính", credits: 3

Lecture.create! name: "Xử lý ngôn ngữ tự nhiên", credits: 2


90.times do
  lecture_id = Random.rand(15) + 1
  user_id = Random.rand(4) + 1
  name_ = "INT" + lecture_id.to_s + "0" + Faker::Number.unique.number(2)
  semester_id = Random.rand(6) + 1
  Course.create! name: name_,
    user_id: user_id,
    lecture_id: lecture_id,
    semester_id: semester_id
end

p "50%..."
(5..500).each do |user_id|
  courses_number = Random.rand(15) + 1
  (1..90).to_a.sample(courses_number).each do |course_id|
    Learning.create! user_id: user_id, course_id: course_id
  end
  p "Reg for #{user_id} !"
end

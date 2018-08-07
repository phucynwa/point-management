# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! name: "Nguyen Van Duc",
  email: "vuhuutiep@gmail.com",
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
  email: "huyhoang8a5@gmail.com",
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
emails = ["tung_lam_1800@yahoo.com", "vuductoan1996@gmail.com", "tmcuong.0124@gmail.com", "tuan.duy.pham.996@gmail.com", "laiphuocan95@gmail.com", "nguyentrunganh@gmail.com", "supertna9x@gmail.com", "valentinbenem1995@gmail.com", "ducsuperomen@gmail.com", "damngod_9x@yahoo.com", "haipham14091995@gmail.com", "nguyenlongthanh94@gmail.com", "pompomhero@gmail.com", "minhanhnguyen0310@gmail.com", "meo_nhamhiem@yahoo.com", "nguyenthuytien1995@gmail.com", "cuong8993@gmail.com", "duongxfnuce@gmail.com", "pqbach.xd@gmail.com", "nguyenvietbac93@gmail.com", "trantrungdo@gmail.com", "trung.duc.301@gmail.com", "tranvinh879652.x50@gmail.com", "iccec.nuce.hn@gmail.com", "thanhkqt@gmail.com", "ngochakqt@gmail.com", "tuyenbui.istnu@gmail.com", "nguyennhung1986tn@gmail.com", "thanh.pt@tnu.edu.vn", "trunghieu2882@gmail.com", "vutu1212@gmail.com", "daikhoaqt@gmail.com", "ngochuyentn87@gmail.com", "hahuongtinh@gmail.com", "kqt@istn.edu.vn", "haanh.lyly2111@gmail.com", "vietanh1761996@gmail.com", "dunglsvn@gmail.com", "hoangdung.nguyen2810@gmail.com", "nguyentuandat93@gmail.com", "ttdat1312@gmail.com", "phamxuanhuong.98@gmail.com", "linhnk011@gmail.com", "phamminhtux4@gmail.com", "chuduckhoi92@gmail.com", "dao.trang41@gmail.com", "tranglangthang94@gmail.com", "kientrung9511@gmail.com", "son.boclass@gmail.com", "kilian.soares@laposte.net", "jeremy.fagot@outlook.fr", "khoatoankt@neu.edu.vn", "acesiusaquarius@gmail.com", "muabuon59@icloud.com", "pidoqua@yahoo.com", "ntpthao0103@gmail.com", "JamesNguyenKirt@gmail.com", "Lurich165@gmail.com", "babypukiepupu@gmail.com", "duyenduyenng@gmail.com", "mhung2612@gmail.com", "Buithithuylinh105@gmail.com", "nhuquynh0723@yahoo.com.vn", "thachmedicine@yahoo.com.vn", "anhthunguyenhoang300993@gmail.com", "truonghuynhminh19950422@gmail.com", "diepdung23@gmail.com", "baongoc_nguyen84@yahoo.com.vn", "thaison110295@gmail.com", "diemsuong132@gmail.com", "vienngocden158@gmail.com", "trungducdailo2@gmail.com", "minhkhanh_95@hotmail.com", "phamholiennuong@gmail.com", "quynhmini1@gmail.com", "n0bitaa1995@gmail.com", "ngocthaole1811@gmail.com", "hortensia2711@gmail.com", "isfb.the.artist@gmail.com", "hoanganh.iluz@gmail.com", "ngocmyduyen.tran@gmail.com", "vuong.tran.256@gmail.com", "quangthinhftu@gmail.com", "Emgai212@yahoo.com", "Vulam.ftu@gmail.com", "Thoa.ltp77602@gmail.com", "Ntt.ngoc18@gmail.com", "Nunguyen146@gmail.com", "littgi@gmail.com", "Baotram.ftu2@gmail.com", "Trongtai.nguyen91@gmail.com", "Ng.ttan11@gmail.com", "Nguyen.nguyet97@gmail.com", "Lethao1851@gmail.com", "Trantuyetminh.ftu2@gmail.com", "Lynguyen1512@gmail.com", "Hienptn.t4@gmail.com", "Nhngan2113@gmail.com", "vutienlongftu@gmail.com", "baophanduy@gmail.com", "Kimthoa.ftu2@gmail.com", "caothikieunhu@gmail.com", "tanphataries@gmail.com", "Yenngan.ftu@gmail.com", "Nhumai.nguyen1991@gmail.com", "Thanhlong71191@gmail.com", "Thuyan.ftu91@gmail.com", "buithian63@gmail.com", "noitinhyeubatdau89hm@gmail.com", "hoangtuxu_catalang_20002004@yahoo.com", "khaccuongxd@gmail.com", "c4u_p3_ng0c_that_tinh@yahoo.com", "funnikiwi_0502@yahoo.com", "nguyenhanhvt89@gmail.com", "conmuamuadong_1811@yahoo.com", "nguyenthehieu8x@yahoo.com", "hungnq4189@yahoo.com", "huandt3ptit@gmail.com", "hung09071989@gmail.com", "hhoangtubanggia86@yahoo.com", "traitimphale_0304@yahoo.com", "lethilien_nv@yahoo.com", "liennguyen110589@gmail.com", "toi_voimotniemtin181289@yahoo.com", "maibt.aob@gmail.com", "ngatpro@gmail.com", "nganle083@gmail.com", "nhan_seven301@yahoo.com", "ngocnguyen1100@gmail.com", "nhung_seven401@yahoo.com", "nguoihungdiatrunghai@yahoo.com", "ngoisaoxanh3102000@yahoo.com", "thuybtt1611@gmail.com", "phuongthao92589@yahoo.com", "lonelymoon169@yahoo.com", "charming259@gmail.com", "thubui024@gmail.com", "nguyenliem55@gmail.com", "buidungpht@gmail.com", "dth1710@yahoo.com", "thethangtc08@gmail.com", "nguyentheloi88@gmail.com", "nguyenhuyen0911@gmail.com", "nguyendungwp88@gmail.com", "nguyenkhacduc88@gmail.com", "kieuoanh.vega882071@gmail.com", "thanhdsb.47@gmail.com", "quangthang_t32@yahoo.com", "nguyennguyet214@gmail.com", "caoboicodon50@yahoo.com", "thuhanh213@gmail.com", "buihanh4688@gmail.com", "buihang03051988@gmail.com", "hang3103@gmail.com", "ngmlan88@yahoo.com", "hieu_xn@yahoo.com", "thienthanbongtoi120042003@yahoo.com", "Xuyen01khanghuy.vn@gmail.com", "hungle1088@gmail.com", "loveyouforever1504@yahoo.com", "nguyenthehinh8x@gmail.com", "Ng.t.hong.nhung@gmail.com", "misssunny8x@gmail.com", "thanhchau5_phong@yahoo.com", "ntc241187@gmail.com", "jackiesut@yahoo.com", "bichnt3288@gmail.com", "nguyencuc5887@gmail.com", "Phongnn3@viettel.com.vn", "dinhvanhiep2803@gmail.com", "DUCTHANH71184@GMAIL.COM.VN", "buitintruong@gmail.com", "anhchangcodon_myl@gmail.com", "khactien879@gmail.com", "giayphut_chiaxa_86@yahoo.com", "nguyenkimhung86@gmail.com", "hong86cd@yahoo.com.vn", "buithuy297@gmail.com.vn", "cogaiquemua@yahoo.com", "tuyet_159@yahoo.com", "lequan225@gmail.com", "nguyennhuduc2004@gmail.com.vn", "hanhnguyen03091986.@yahoo.com", "vinhbt@shb.com.vn", "maianh157@gmail.com.vn", "khachoan2611@gmail.com", "vankhanh903@gmail.com", "dinhhuuhydt_ysinh47@gmail.com", "tuan.tc@gmail.com", "letien_xd@gmail.com", "lethanhvu8486@gmail.com", "dunggdth.vic@gamil.com", "hungmilan@gmail.com", "doan.icoe@gmail.com", "quyhung84@gmail.com", "truongnl12@gmail.com", "dinhphongt@gmail.com", "tuyenhc@gmail.com", "xuananhtvxd@gmail.com", "bopbi2810@gmail.com", "dinhnhan35@gmail.com", "huannk@gmail.com", "dinhthoa@gmail.com", "buikimhanh1983@gmail.com", "dongdlhn@gmail.com", "vanhung1407@gmail.com", "nguyensamdp@gmail.com", "Lethuy5678@gmail.com", "tuan.nd171@gmail.com", "khanhct04@gmail.com", "btphuong@indeco.com.vn", "chimai.ch@gmail.com", "uongnga@gmail.com", "thenguyen262@gmail.com", "Vip.thaotht@gmail.com", "frozen_food.ml@bigcvietnam.com", "vanbuilc1983@gmail.com", "lecongpro09@yahoo.com.vn", "nguyenhoang1982@gmail.com", "xuanmaievn@gmail.com", "ducnm.0182@gmail.com", "ngocnt@fpt.edu.vn", "lovetobeloved82@gmail.com", "vanxuan33@gmail.com", "u@gmail.com", "inoxhoangvuco@gmail.com", "vumanhthang1982@gmail.com", "thutoantht@gmail.com", "nguyen110@gmail.com", "khuatthanhtu@gmail.com", "thangnk@ansv.vn", "daiphongbigwind@yahoo.com", "tuanbritec@gmail.com", "buitrinh81@yahoo.com", "quynh080881@yahoo.com", "manh_nguyen260581@yahoo.com", "dinhkien.han@gmail.com", "hp.dnphuong@gmail.com", "nguyenvu1021@gmail.com", "cuongtaseco@gmail.com", "vuthanhtam.acom@gmail.com", "truong.pecc1@gmail.com", "btcuong2305@yahoo.com", "thucnq80@gmail.com", "quydung2010@gmail.com", "12a5foever@gmail.com", "thanhsieunhan1995@gmail.com", "bl_luv95@yahoo.com", "nam.cntt2@gmail.com", "trancuongpr95@gmail.com", "trangchipbong@gmail.com", "HoaiHoai203@gmail.com", "lethiduc.94.cnpmk53@gmail.com", "huongle5594@gmail.com", "hueledao94@gmail.com", "hoaflyutc@gmail.com", "ngoso46@gmail.com", "conghieu.gtvt@gmail.com", "xuanhung0404gtvt@gmail.com", "nguyenle0972629572@gmail.com", "yoojeasukft@gmail.com", "shootingstar.ldc@gmail.com", "Lehoang10994@gmail.com", "Hungnguyenkienk53@gmail.com", "Phamthitam2103@gmail.com", "Phuongthao94gtvt@gmail.com", "khoacntt@utc.edu.vn", "nguyenhuutung.nuce@gmail.com", "phanvanloi2010@gmail.com", "dieulh@gmail.com", "thamnt@gmail.com", "nguyenhung537@gmail.com", "hoangtung56pm@gmail.com", "danongxda@gmail.com", "hokhacnam@gmail.com", "nguyentham.nuce@gmail.com", "phuongdinh2502@gmail.com", "thuy.hathanh0110@gmail.com", "dangviet2208@gmail.com", "hangpt.2909@gmail.com", "nguyenmy.dhxd@gmail.com", "uongthanhtuan@gmail.com", "tvd.nuce@gmail.com", "NguyenThuy55pm@gmail.com", "fit@nuce.edu.vn", "phuonghoa95.nguyen@gmail.com", "phamhaktbdh3@gmail.com", "tranhoahp1995@gmail.com", "huongbui.109@gmail.com", "camnhungnguyen2707@gmail.com", "ngango19071994@gmail.com", "phamquanhg@gmail.com", "ctsv@vimaru.edu.vn", "ngoquangtoan48@gmail.com", "vannt48@gmail.com", "khanguyen176@gmail.com", "ntson0450@gmail.com", "phivandau.thaibinh@gmail.com", "bodv@vnu.edu.vn", "vuvanphai@yahoo.com.vn", "dinhkyvdl@gmail.com", "truyen_nguyenvan@yahoo.com", "hqhai@hcmus.edu.vn", "lvcamminh04@yahoo.com", "uongdinhkhanh@gmail.com", "lminhson@monre.gov.vn", "commander.map@gmail.com", "ksdoandinhkien@yahoo.com.vn", "dhluong59@yahoo.com.vn", "tuengduc@gmail.com", "danghoi110@gmail.com", "tranvanchuong73@yahoo.com", "quanghk@anthi.com.vn", "haquyquynh@gmail.com", "ddhhhm@yahoo.co.uk", "ptantiger@yahoo.com", "dlanh74@yahoo.com", "veatram@gmail.com", "letrinhhai@gmail.com", "hoacodeco@yahoo.com", "hieutrong@gmail.com", "tuan0906@yahoo.com", "maptechgisvn@gmail.com", "ntc.monre@gmail.com", "anh.hnue@gmail.com", "vuleha.tnmt@gmail.com", "trampham.iesd@gmail.com", "macvanchien@gmail.com", "hoanghonghue@gmail.com", "hoanghonghue@yahoo.com", "trananhtuanvnu@gmail.com", "philuong1979@yahoo.com.vn", "ndmau@gdla.gov.vn", "dx.thanhmas@gmail.com", "nguyentienhuy2012@gmail.com", "hoangyen.hbl@gmail.com", "hlbay2205@gmail.com", "kientt@wrd.gov.vn", "dndat@sti.vast.vn", "dndat.gis@gmail.com", "vuhaithang@gmail.com", "duyengpmb@gmail.com", "cuongha2008@gmail.com", "vuxuanhung_k45@yahoo.com.vn", "nguyenhongquan300479@gmail.com", "congnchg@gmail.com", "lethi@noithatak.com", "nhuuhuynh@gmail.com", "sallynguyen1309@gmail.com", "154.minhha@gmail.com", "nguyenminhtuancs@gmail.com", "tuananhvu8668@gmail.com", "hanvifep@gmail.com", "trangniop@gmail.com", "ntthuydostic@gmail.com", "lanhuong0207@gmail.com", "nguyenhong.ig@gmail.com", "nguyenthithuhien2803@gmail.com", "quynhdiep_gtz@yahoo.com", "dlinh_85@yahoo.com", "ndanh84@gmail.com", "vietlgt@gmail.com", "hungdomanh84@gmail.com", "thainlinh.hus@gmail.com", "hientnmthadong@gmail.com", "aqnacm@gmail.com", "ninh.dcks@gmail.com", "lehaivan2804@gmail.com", "httrung.tnmt@gmail.com", "ldkien116@gmail.com", "giangvantrong@gmail.com", "thanhhaidialy@gmail.com", "minhtamdc88@gmail.com", "pvbinh20@gmail.com", "nguyenanh87k51@gmail.com", "Hoangduchus@gmail.com", "kieuhailien116@gmail.com", "dinhthuyk52@gmail.com", "huong_tra_1206@yahoo.com.vn", "nangthu.thu@gmail.com", "nhungnguyen45@gmail.com", "trangcongduong@gmail.com", "Ngotrungdung266@gmail.com", "phuongnt.hus@gmail.com", "tungvu289@gmail.com", "viet0791@gmail.com", "nhannguyenkhtn@gmail.com", "dangminhhuehb@gmail.com", "ngobinh202@gmail.com", "hongphuongdttg@gmail.com", "dongocmaihus@gmail.com", "nguyendoanlongpkk@gmail.com", "dungnt2804@gmail.com", "kimanh9235@gmail.com", "phamvananh11694@gmail.com", "saobachduong254@gmail.com", "nguyendinhphuc1602@gmail.com", "kimthuysg113@gmail.com", "lehoanglong1998@gmail.com", "huytran2111999@gmail.com", "phuongtramm.nguyenn@gmail.com", "va8703@gmail.com", "chungtsn@gmail.com", "monitor.nguyen@gmail.com", "khanhngannh@gmail.com", "minhthu0398@gmail.com", "danh666@gmail.com", "dunghuu12@gmail.com", "nguyenvinhthaihoa1996@gmail.com", "maiducanh147258@gmail.com", "quangthinhkcn@gmail.com", "coluuly1806@yahoo.com", "tranduy18121999@gmail.com", "Thanhdanh1519@gmail.com", "1993@gmail.com", "rainy_season@yahoo.com", "h.hotrunghau@gmail.com", "contact@tuthucnguyenkhuyen.edu.vn", "nguyenhuunguwx@huaf.edu.vn", "Lecongtuananh20122991@gmail.com", "nguyenvancuongnote@gmail.com", "Tienducbds44@gmail.com", "Hatran4991@gmail.com", "Myhanh.bds44@gmail.com", "Doanthithanhhuong145@gmail.com", "lethiphuonghoi@gmail.com", "Huonggiangtran.huaf@gmail.com", "nguyenthinhatlinh@huaf.edu.vn", "Thuylinhbds44@gmail.com", "nguyentunglinhbds@gmail.com", "ngocsang1905@gmail.com", "sienqld441992@gmail.com", "qvmadaocodoc@gmail.com", "Xleyqp@gmail.com", "lehuungocthanh@huaf.edu.vn", "tiepnguyenle91@gmail.com", "nguyenngoctoan860@gmail.com", "thetrung8491@gmail.com", "lehaiyen1992@gmail.com", "triviet08@gmail.com", "daovietdoan@gmail.com", "khoaxaydung@humg.edu.vn", "vanphongkhoa@khoaxaydung.edu.vn", "anhtuyenuit@gmail.com", "kimtung1810@gmail.com", "mrloc2012@gmail.com", "khoa.nguyen2605@gmail.com", "huonghk.uit@gmail.com", "kentuit@gmail.com", "tuanna_dev@hotmail.com", "dinhnguyen@9itgroup.com", "nhnhatuit@gmail.com", "11520507@gm.uit.edu.vn", "syaocrt@gmail.com", "xtung.uitk6@gmail.com", "truongphuctoan@gmail.com", "lamtanphiho1@gmail.com", "vietnt134@gmail.com", "skyofme360@gmail.com", "thedeathdance9999@gmail.com", "duonguit@gmail.com", "10520271@gm.uit.edu.vn", "levanleuit@gmail.com", "vuvaho@gmail.com", "khanh.tran3005@gmail.com", "minhson.uit@gmail.com", "nguyenvanquyen92@gmail.com", "luuvanluc@gmail.com", "longtrieuuit@gmail.com", "ducan2408@gmail.com", "minhtamle92@gmail.com", "lucyfire7@gmail.com", "itsky90@gmail.com", "trantrungisk5@gmail.com", "tinhvt1992@gmail.com", "pham.an.20.09@gmail.com", "dacsyle@gmail.com", "hi22141@gmail.com", "toidang92@gmail.com", "truongson.uit@gmail.com", "1991.hoang@gmail.com", "tungle.0104@gmail.com", "lephatuit@gmail.com", "dangtuyen.uit@gmail.com", "duykhanh.uit@gmail.com", "Sang@keaz.co", "trongngan.mtn@gmail.com", "hoangnha2106@gmail.com", "nuonght3599@gmail.com", "ducthinh1103@gmail.com", "vominhthien227@gmail.com", "luclq.is.uit.vn@gmail.com", "donga1612@gmail.com", "mennguyen17@gmail.com", "redsun.xuanhiep@gmail.com", "kid.uit.1412@gmail.com", "manhnguyen3021@gmail.com", "vietnamknight@gmail.com", "Kimoanh.hoang91@gmail.com", "Eroshaly@gmail.com", "trannguyenquyet@gmail.com", "nghialt312@gmail.com", "Longhoang2310@gmail.com", "tuantrantg@gmail.com", "toanhoanghuy@gmail.com", "darkanl000@gmail.com", "prince.uit04@gmail.com", "luantt1111.uit@gmail.com", "nangthuytinhk@gmail.com", "diphuong3009@gmail.com", "duytri2712@gmail.com", "little.fairy1791@gmail.com", "hdhuyuit@gmail.com", "duytri1009@gmail.com", "Hiennguyen.tuchuot@gmail.com", "ngochoa2603@gmail.c", "duybao.vn@gmail.com", "nttk89@gmail.com", "huyennguyenqs@gmail.com", "thaodp13@gmail.com", "kimloan2708@gmail.com", "dieunga.cute@gmail.com", "phu18101991@gmail.com", "ndquang617@gmail.com", "thuantrantht@gmail.com", "namtrung804@gmail.com", "phamdiem0902@gmail.com", "hong_thien_long_2006@yahoo.com", "anhluuviettuan@gmail.com", "minhhoanghdh@gmail.com", "khanhcuong159@gmail.com", "nguyendai0208@gmail.com", "lamnv5490@gmail.com", "maihuuchung@gmail.com", "dungjk@gmail.com", "Minhvn.uit@gmail.com", "tienuit.py@gmail.com", "Sakura.it.90@gmail.com", "lenguyenhaohiep@gmail.com", "banamlehsb@gmail.com", "khanh130895@gmail.com", "xunintm@gmail.com", "info@idichvuseo.com.vn", "nguyenthienan4189@gmail.com", "silvermoon1710@gmail.com", "tranhungnghiep@gmail.com", "nguyenduong127@gmail.com", "huy2041989@gmail.com", "nguyenkimdung89@gmail.com", "karmiphuc@gmail.com", "dohaloc@gmail.com", "vpit.hp1012@gmail.com", "tung@justgola.com", "longdp@uit.edu.vn", "hi@henrytao.me", "thinhvoquang@gmail.com", "huongtran@live.com", "hi3uit@gmail.com", "thuongthuong1990@gmail.com", "nguyendungww@gmail.com", "info.httt@uit.edu.vn"]
494.times do |i|
  name_ = ho.sample + " " + dem.sample + " " + ten.sample
  email = emails[i]
  p email
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

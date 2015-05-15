AdminUser.create!([
  {email: "admin@example.com",password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-05-15 13:46:57", last_sign_in_at: "2015-05-14 19:55:18", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Post.create!([
  {title: "thisi s rsts", description: "asdas dasd asdas ", body: "<p>as das dasd </p>", user_id: 1, confirm: true, ignore: false},
  {title: "this is test", description: "bla bla bla ", body: "<p>asdaskdjlaskdjlasjdlkas</p>", user_id: 1, confirm: true, ignore: false},
  {title: "wserdtfyguhijk", description: "dfghjkl", body: "<p>aiwjfioaw jiofjw eejfaiojisjfajsfijewf wefawef</p>", user_id: 3, confirm: true, ignore: false},
  {title: "dngbgfbdgfb", description: "dfgbdfgbd", body: "<p>bdfbsdfvsdfv</p>", user_id: 5, confirm: true, ignore: false},
  {title: "dsf sdf sdf ds f ", description: "sd fsd fsd fdsf ", body: "<p>sdf sdf sdfsd fsdf sd</p>", user_id: 3, confirm: true, ignore: false},
  {title: "hasdfjsadfk", description: "SDLJFLSKDJFLKDSJFSDJFLKSDJFLKSD", body: "<p>SDL;FKSDLKF ;LASKF KSD FASHF&nbsp;</p><p>SDLK HFASD FHJAKSDHFJASHD FJSAHDFJHSD FASD FSD FSD FAS FSDFSDA</p>", user_id: 3, confirm: true, ignore: false},
  {title: "first post ", description: "blab bla bla lsad asjkd lkajdlkasj dlkjsadjlksajd lkjakjds asd ", body: "<p><img style=\"width: 815px;\" src=\"/system/redactor_assets/pictures/1/Screenshot_from_2015-04-28_13_21_37.png\"></p>", user_id: 2, confirm: true, ignore: false},
  {title: "first post ", description: "blab bla bla lsad asjkd lkajdlkasj dlkjsadjlksajd lkjakjds asd ", body: "<p><img style=\"width: 815px;\" src=\"/system/redactor_assets/pictures/1/Screenshot_from_2015-04-28_13_21_37.png\"></p>", user_id: 2, confirm: true, ignore: false},
  {title: "first post ", description: "adksj aksld laksjd", body: "<p>asd jaslkdjalskj dlksaj dlksa </p>", user_id: 1, confirm: true, ignore: false},
  {title: "asdasda sdas dsa", description: "asd asd as d", body: "<p>asdf asdf </p>", user_id: 6, confirm: false, ignore: false},
  {title: "was and sport", description: "as dasd sa das", body: "<p>asd asd asdkas;ld k;aslkd;as </p>", user_id: 6, confirm: false, ignore: false},
  {title: "asdas dasd", description: "sadfasdfasdfk asjdfk as", body: "<p>sdldk as;lkd;las kdl;ask asd a</p>", user_id: 6, confirm: false, ignore: false},
  {title: "ykumjtnhrbgev", description: "ebhrnjmtku,yilkmtjnhtb", body: "<p>egbbtbgte</p>", user_id: 6, confirm: false, ignore: false}
])
Post::HABTM_Categories.create!([
  {category_id: 1, post_id: 7},
  {category_id: 2, post_id: 7},
  {category_id: 1, post_id: 8},
  {category_id: 3, post_id: 8},
  {category_id: 2, post_id: 9},
  {category_id: 2, post_id: 10},
  {category_id: 1, post_id: 11},
  {category_id: 2, post_id: 11},
  {category_id: 2, post_id: 12},
  {category_id: 3, post_id: 12},
  {category_id: 3, post_id: 13}
])
Category.create!([
  {name: "Politices"},
  {name: "Sport"},
  {name: "Art"}
])
Category::HABTM_Posts.create!([
  {category_id: 1, post_id: 7},
  {category_id: 2, post_id: 7},
  {category_id: 1, post_id: 8},
  {category_id: 3, post_id: 8},
  {category_id: 2, post_id: 9},
  {category_id: 2, post_id: 10},
  {category_id: 1, post_id: 11},
  {category_id: 2, post_id: 11},
  {category_id: 2, post_id: 12},
  {category_id: 3, post_id: 12},
  {category_id: 3, post_id: 13}
])
User.create!([
  {email: "somar_melhem@hotmail.com", password: "123456789", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-14 19:17:54", last_sign_in_at: "2015-05-14 19:17:54", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "somar", avatar: nil, info_stop: false},
  {email: "jamalm1990@got.ocn", password: "123456789", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 09:26:11", last_sign_in_at: "2015-05-15 09:26:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "jamal", avatar: nil, info_stop: false},
  {email: "somar@asd.com", password: "123456789", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 11:03:58", last_sign_in_at: "2015-05-15 11:03:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "jamal22", avatar: nil, info_stop: false},
  {email: "asdas@asdsa.com", password: "123456789", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 12:58:03", last_sign_in_at: "2015-05-15 12:58:03", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "tararasd sa", avatar: nil, info_stop: false},
  {email: "somar@sadsad.com", password: "123456789", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 13:13:45", last_sign_in_at: "2015-05-15 13:13:45", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "jimiasdfghjk", avatar: "Screenshot_from_2015-04-28_13_21_37.png", info_stop: false},
  {email: "somar@sa.scs", password: "123456789", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 15:38:31", last_sign_in_at: "2015-05-15 15:38:31", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "jamal22tt", avatar: nil, info_stop: false}
])
Comment.create!([
  {commenter: "jamal", content: "hh;oij", commentable_id: 5, commentable_type: "Post", ancestry: nil, user_id: nil},
  {commenter: "jamal", content: "sdasdasdas dasd asd asd sa\r\n", commentable_id: 5, commentable_type: "Post", ancestry: "1", user_id: nil},
  {commenter: "jamal", content: "tara tata ", commentable_id: 5, commentable_type: "Post", ancestry: nil, user_id: nil},
  {commenter: "jamal", content: "ergwefwerf", commentable_id: 5, commentable_type: "Post", ancestry: "1", user_id: nil},
  {commenter: "jamal", content: "ergwefwerf", commentable_id: 5, commentable_type: "Post", ancestry: "1", user_id: nil},
  {commenter: "jamal", content: "ighvdsuhvusdhvfudsuhclihfvuiewhuehrgwrthguiqrhugiheuighvqeuihrgviuqehriluhqeriuchequrihcerhcuiqlerhffwecdiwnqjvoiwehuirhweuirywqueivrqiwuyrowqieyvrqiwerqweuyvbriuqweyvriqwevrqwevrwqe", commentable_id: 5, commentable_type: "Post", ancestry: nil, user_id: nil},
  {commenter: "jamal22tt", content: "erwerfeqfqw", commentable_id: 8, commentable_type: "Post", ancestry: nil, user_id: nil},
  {commenter: "jamal22tt", content: "egdbdfs", commentable_id: 9, commentable_type: "Post", ancestry: nil, user_id: 6},
  {commenter: "jamal22tt", content: "afsdasfsdf", commentable_id: 9, commentable_type: "Post", ancestry: nil, user_id: 6}
])
RedactorRails::Asset.create!([
  {data_file_name: "Screenshot_from_2015-04-28_13_21_37.png", data_content_type: "image/png", data_file_size: 246545, assetable_id: nil, assetable_type: nil, type: "RedactorRails::Picture", width: 1366, height: 768}
])
RedactorRails::Picture.create!([
  {data_file_name: "Screenshot_from_2015-04-28_13_21_37.png", data_content_type: "image/png", data_file_size: 246545, assetable_id: nil, assetable_type: nil, type: "RedactorRails::Picture", width: 1366, height: 768}
])

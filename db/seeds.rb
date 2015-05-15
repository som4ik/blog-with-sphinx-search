AdminUser.create!([
  {email: "admin@example.com", encrypted_password: "$2a$10$cq4TddDSHC5vaw3R5cIgGO13tJz4ion5EKVAiNdX.SbycshEbOeFe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-14 19:55:18", last_sign_in_at: "2015-05-14 19:55:18", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Post.create!([
  {title: "first post ", description: "adksj aksld laksjd", body: "<p>asd jaslkdjalskj dlksaj dlksa </p>", user_id: 1, confirm: false, ignore: true},
  {title: "thisi s rsts", description: "asdas dasd asdas ", body: "<p>as das dasd </p>", user_id: 1, confirm: true, ignore: false},
  {title: "this is test", description: "bla bla bla ", body: "<p>asdaskdjlaskdjlasjdlkas</p>", user_id: 1, confirm: true, ignore: false},
  {title: "first post ", description: "blab bla bla lsad asjkd lkajdlkasj dlkjsadjlksajd lkjakjds asd ", body: "<p><img style=\"width: 815px;\" src=\"/system/redactor_assets/pictures/1/Screenshot_from_2015-04-28_13_21_37.png\"></p>", user_id: 2, confirm: false, ignore: false},
  {title: "first post ", description: "blab bla bla lsad asjkd lkajdlkasj dlkjsadjlksajd lkjakjds asd ", body: "<p><img style=\"width: 815px;\" src=\"/system/redactor_assets/pictures/1/Screenshot_from_2015-04-28_13_21_37.png\"></p>", user_id: 2, confirm: false, ignore: false},
  {title: "hasdfjsadfk", description: "SDLJFLSKDJFLKDSJFSDJFLKSDJFLKSD", body: "<p>SDL;FKSDLKF ;LASKF KSD FASHF&nbsp;</p><p>SDLK HFASD FHJAKSDHFJASHD FJSAHDFJHSD FASD FSD FSD FAS FSDFSDA</p>", user_id: 3, confirm: false, ignore: false},
  {title: "dsf sdf sdf ds f ", description: "sd fsd fsd fdsf ", body: "<p>sdf sdf sdfsd fsdf sd</p>", user_id: 3, confirm: false, ignore: false},
  {title: "wserdtfyguhijk", description: "dfghjkl", body: "<p>aiwjfioaw jiofjw eejfaiojisjfajsfijewf wefawef</p>", user_id: 3, confirm: false, ignore: false}
])
Post::HABTM_Categories.create!([
  {category_id: 1, post_id: 7},
  {category_id: 2, post_id: 7},
  {category_id: 1, post_id: 8},
  {category_id: 3, post_id: 8}
])
User.create!([
  {email: "somar_melhem@hotmail.com", encrypted_password: "$2a$10$5fPZVygBinVobdZZHmLfTe3Q0YA66YdcDXJ5XNAdGDO1YXtforhTS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-14 19:17:54", last_sign_in_at: "2015-05-14 19:17:54", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "somar"},
  {email: "jamalm1990@got.ocn", encrypted_password: "$2a$10$PzijousPuNMWA6Od.JNS2euZJKAC9y7nEGrBslkUovOPJLUloUWLa", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 09:26:11", last_sign_in_at: "2015-05-15 09:26:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "jamal"},
  {email: "somar@asd.com", encrypted_password: "$2a$10$oAhsoYn3LbPRRBOo1mx0huTU.tE5l0/AGrlO.ZyNvL697JRLqdMSO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-05-15 11:03:58", last_sign_in_at: "2015-05-15 11:03:58", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "jamal22"}
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
  {category_id: 3, post_id: 8}
])
Comment.create!([
  {commenter: "jamal", content: "hh;oij", commentable_id: 5, commentable_type: "Post", ancestry: nil},
  {commenter: "jamal", content: "sdasdasdas dasd asd asd sa\r\n", commentable_id: 5, commentable_type: "Post", ancestry: "1"},
  {commenter: "jamal", content: "tara tata ", commentable_id: 5, commentable_type: "Post", ancestry: nil},
  {commenter: "jamal", content: "ergwefwerf", commentable_id: 5, commentable_type: "Post", ancestry: "1"},
  {commenter: "jamal", content: "ergwefwerf", commentable_id: 5, commentable_type: "Post", ancestry: "1"},
  {commenter: "jamal", content: "ighvdsuhvusdhvfudsuhclihfvuiewhuehrgwrthguiqrhugiheuighvqeuihrgviuqehriluhqeriuchequrihcerhcuiqlerhffwecdiwnqjvoiwehuirhweuirywqueivrqiwuyrowqieyvrqiwerqweuyvbriuqweyvriqwevrqwevrwqe", commentable_id: 5, commentable_type: "Post", ancestry: nil}
])
RedactorRails::Asset.create!([
  {data_file_name: "Screenshot_from_2015-04-28_13_21_37.png", data_content_type: "image/png", data_file_size: 246545, assetable_id: nil, assetable_type: nil, type: "RedactorRails::Picture", width: 1366, height: 768}
])
RedactorRails::Picture.create!([
  {data_file_name: "Screenshot_from_2015-04-28_13_21_37.png", data_content_type: "image/png", data_file_size: 246545, assetable_id: nil, assetable_type: nil, type: "RedactorRails::Picture", width: 1366, height: 768}
])

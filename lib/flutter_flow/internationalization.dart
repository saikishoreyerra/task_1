import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi', 'ja'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
    String? jaText = '',
  }) =>
      [enText, hiText, jaText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Cart
  {
    'mno09xnt': {
      'en': 'Sub Total',
      'hi': 'उप योग',
      'ja': '小計',
    },
    'u1o9se4a': {
      'en': 'Hello World',
      'hi': 'हैलो वर्ल्ड',
      'ja': 'こんにちは世界',
    },
    'p057pxou': {
      'en': 'Checkout',
      'hi': 'चेक आउट',
      'ja': 'チェックアウト',
    },
    'rvpbl4rm': {
      'en': 'Share',
      'hi': 'शेयर करना',
      'ja': '共有',
    },
    't3awbrj1': {
      'en': 'Delete',
      'hi': 'मिटाना',
      'ja': '消去',
    },
    'nratbxpm': {
      'en': 'Title',
      'hi': 'शीर्षक',
      'ja': 'タイトル',
    },
    '5gv8l6gd': {
      'en': 'Subtitle goes here...',
      'hi': 'उपशीर्षक यहाँ है...',
      'ja': 'ここにサブタイトルが入ります...',
    },
    'pxi3upjm': {
      'en': 'CartPage',
      'hi': 'कार्टपेज',
      'ja': 'カートページ',
    },
    'c2tnnfgu': {
      'en': 'Cart',
      'hi': 'कार्ट',
      'ja': 'カート',
    },
  },
  // HomePage
  {
    'cyt2uks4': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
    'eq6armw2': {
      'en': 'Favourites',
      'hi': 'पसंदीदा',
      'ja': 'お気に入り',
    },
    'ayrno0uo': {
      'en': 'Cart',
      'hi': 'कार्ट',
      'ja': 'カート',
    },
    'vb22wrgm': {
      'en': 'Account',
      'hi': 'खाता',
      'ja': 'アカウント',
    },
    'xlslzxb9': {
      'en': 'Search Products',
      'hi': 'उत्पादों को खोजना',
      'ja': '製品を検索',
    },
    'pocd7pg8': {
      'en': 'Search Products',
      'hi': 'उत्पादों को खोजना',
      'ja': '製品を検索',
    },
    '1liacrw4': {
      'en': 'Search Products',
      'hi': 'उत्पादों को खोजना',
      'ja': '製品を検索',
    },
    '9pdbro7p': {
      'en': 'Clothes',
      'hi': 'कपड़े',
      'ja': '服',
    },
    't672m250': {
      'en': 'Clothes',
      'hi': 'कपड़े',
      'ja': '服',
    },
    'cxyye1yc': {
      'en': 'Groceries',
      'hi': 'किराने का सामान',
      'ja': '食料品',
    },
    'hxdrmmoi': {
      'en': 'Groceries',
      'hi': 'किराने का सामान',
      'ja': '食料品',
    },
    'l1lpx04z': {
      'en': 'Watches',
      'hi': 'घड़ियाँ',
      'ja': '腕時計',
    },
    'mjjm97zo': {
      'en': 'Watches',
      'hi': 'घड़ियाँ',
      'ja': '腕時計',
    },
    '73pxp5et': {
      'en': 'HomePage',
      'hi': 'मुखपृष्ठ',
      'ja': 'ホームページ',
    },
    'l095jp71': {
      'en': '1',
      'hi': '1',
      'ja': '1',
    },
    '1znuzdku': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // details
  {
    'gyhncj9f': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
      'ja': 'ページタイトル',
    },
    '6tmn7eej': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // Profile
  {
    'r622w1yc': {
      'en': 'upload image',
      'hi': 'तस्विर अपलोड करना',
      'ja': '画像をアップロード',
    },
    'cloejntc': {
      'en': 'Name',
      'hi': 'नाम',
      'ja': '名前',
    },
    'kfzlv478': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ja': 'メール',
    },
    'bgff4eo4': {
      'en': 'Address',
      'hi': 'पता',
      'ja': '住所',
    },
    'tjsel2rw': {
      'en': 'Bio',
      'hi': 'जैव',
      'ja': 'バイオ',
    },
    'xq0xlea9': {
      'en': 'Submit',
      'hi': 'जमा करना',
      'ja': '提出する',
    },
    'dvuf499i': {
      'en': 'logOut',
      'hi': 'लॉग आउट',
      'ja': 'ログアウト',
    },
    'mb9t6vt3': {
      'en': 'Profile ',
      'hi': 'प्रोफ़ाइल',
      'ja': 'プロフィール',
    },
    'abuhy6t5': {
      'en': 'Profile',
      'hi': 'प्रोफ़ाइल',
      'ja': 'プロフィール',
    },
  },
  // ProductPage
  {
    'ljqc51v0': {
      'en': 'ProductPage',
      'hi': 'उत्पादपृष्ठ',
      'ja': '製品ページ',
    },
    'qypb64vu': {
      'en': 'Description',
      'hi': 'विवरण',
      'ja': '説明',
    },
    'by5uta9y': {
      'en': 'Add to cart',
      'hi': 'कार्ट में जोड़ें',
      'ja': 'カートに追加',
    },
    '2h94jz4p': {
      'en': 'Description',
      'hi': 'विवरण',
      'ja': '説明',
    },
    'zf3k0iqo': {
      'en': 'Add to cart',
      'hi': 'कार्ट में जोड़ें',
      'ja': 'カートに追加',
    },
    '0k5144rg': {
      'en': 'Description',
      'hi': 'विवरण',
      'ja': '説明',
    },
    '9ky7gq3c': {
      'en': 'Add to cart',
      'hi': 'कार्ट में जोड़ें',
      'ja': 'カートに追加',
    },
    'pg16p4fm': {
      'en': 'Products',
      'hi': 'उत्पादों',
      'ja': '製品',
    },
  },
  // Favourites
  {
    '0a9hpoe5': {
      'en': 'Favourites',
      'hi': 'पसंदीदा',
      'ja': 'お気に入り',
    },
    'luiias7j': {
      'en': 'Favourites',
      'hi': 'पसंदीदा',
      'ja': 'お気に入り',
    },
  },
  // splash_screen
  {
    'wdvfs2mp': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // Api_productinfo
  {
    '2jbgygk5': {
      'en': 'Description',
      'hi': 'विवरण',
      'ja': '説明',
    },
    'wsio58y2': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // API_page
  {
    'huqsbozk': {
      'en': 'Product Api Details',
      'hi': 'उत्पाद एपीआई विवरण',
      'ja': '製品 API の詳細',
    },
    'mnlzt2sv': {
      'en': 'Price: ',
      'hi': 'कीमत:',
      'ja': '価格：',
    },
    '5ic87jkm': {
      'en': 'Rating:  ',
      'hi': 'रेटिंग:',
      'ja': '評価:',
    },
    'bv2vtyfp': {
      'en': 'Availability: ',
      'hi': 'उपलब्धता:',
      'ja': '可用性：',
    },
    '27eqsgbz': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // LoginPage
  {
    'mm9e9w1j': {
      'en': 'Login ',
      'hi': 'लॉग इन करें',
      'ja': 'ログイン',
    },
    'wif1cfd7': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ja': 'メール',
    },
    'yizdxs33': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'ja': 'パスワード',
    },
    '850egabx': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
      'ja': 'ログイン',
    },
    'sygl2xnx': {
      'en': 'Forgot Password?',
      'hi': 'पासवर्ड भूल गए?',
      'ja': 'パスワードをお忘れですか？',
    },
    'gqefatwh': {
      'en': 'Don\'t have an account ? ',
      'hi': 'क्या आपके पास खाता नहीं है?',
      'ja': 'アカウントをお持ちではありませんか？',
    },
    'tyhy8oum': {
      'en': 'SignUp ',
      'hi': 'साइन अप करें',
      'ja': 'サインアップ',
    },
    '5471gdft': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    '4u1419oh': {
      'en': 'min 3 characters required',
      'hi': 'न्यूनतम 3 अक्षर आवश्यक',
      'ja': '最低3文字が必要です',
    },
    'pur6xx93': {
      'en': 'max 30 characters only',
      'hi': 'अधिकतम 30 अक्षर ही',
      'ja': '最大30文字まで',
    },
    'ysm15uog': {
      'en': 'Invalid Email',
      'hi': 'अमान्य ईमेल',
      'ja': '無効なメール',
    },
    'nwqr1c54': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    '1f5xu0xz': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    '1ew1o4o2': {
      'en': 'min 8 characters requiered',
      'hi': 'न्यूनतम 8 अक्षर आवश्यक',
      'ja': '最低8文字が必要です',
    },
    'rcu2qxvr': {
      'en': 'max 25 characters only',
      'hi': 'अधिकतम 25 अक्षर ही',
      'ja': '最大25文字まで',
    },
    '22tj3gvs': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    '6ac2stde': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // SignUpPage
  {
    '7c145bpf': {
      'en': 'SignUp',
      'hi': 'साइन अप करें',
      'ja': 'サインアップ',
    },
    'ogze8v3e': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ja': 'メール',
    },
    'fha8rqph': {
      'en': 'Username',
      'hi': 'उपयोगकर्ता नाम',
      'ja': 'ユーザー名',
    },
    'xyvll3md': {
      'en': 'Contact number',
      'hi': 'संपर्क संख्या',
      'ja': '連絡先',
    },
    '70s7cgfs': {
      'en': 'Password',
      'hi': 'पासवर्ड',
      'ja': 'パスワード',
    },
    'q93vewrl': {
      'en': 'Confirm Paassword',
      'hi': 'पासवर्ड की पुष्टि करें',
      'ja': 'パスワードの確認',
    },
    '8ef2pz7i': {
      'en': 'Date of Birth',
      'hi': 'जन्म तिथि',
      'ja': '生年月日',
    },
    '8lgwna1x': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
      'ja': 'アカウントを作成する',
    },
    'fnaetqhv': {
      'en': 'Back to Login',
      'hi': 'लॉगिन पर वापस जाएं',
      'ja': 'ログインに戻る',
    },
    '95r6qqgf': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'nsxge6uq': {
      'en': 'can\'t be less than 3 characters',
      'hi': '3 वर्णों से कम नहीं हो सकता',
      'ja': '3文字未満にすることはできません',
    },
    'rve0b5jj': {
      'en': 'can\'t be more than 50 characters',
      'hi': '50 अक्षरों से ज़्यादा नहीं हो सकता',
      'ja': '50文字を超えることはできません',
    },
    'xini1o8l': {
      'en': 'Invalid Email',
      'hi': 'अमान्य ईमेल',
      'ja': '無効なメール',
    },
    '1qeg5lgy': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    'n618uw4y': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'ldgqbefm': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    '12skbt78': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'mgllprw8': {
      'en': 'can\'t be less than 10 numbers',
      'hi': 'संख्या 10 से कम नहीं हो सकती',
      'ja': '10 桁未満にはできません',
    },
    'y8jbhrd8': {
      'en': 'can\'t be more than 10 numbers',
      'hi': 'संख्या 10 से अधिक नहीं हो सकती',
      'ja': '10 桁を超える数字は指定できません',
    },
    '7q0zd4vu': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    '3mr5safs': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'hxhzq5u5': {
      'en': 'can\'t be less than 8 characters',
      'hi': '8 अक्षरों से कम नहीं हो सकता',
      'ja': '8文字未満にすることはできません',
    },
    '4zkfm1ym': {
      'en': 'can\'t be more than 25 characters',
      'hi': '25 अक्षरों से ज़्यादा नहीं हो सकता',
      'ja': '25文字を超えることはできません',
    },
    'pjt9errv': {
      'en': 'Invalid Password',
      'hi': 'अवैध पासवर्ड',
      'ja': '無効なパスワード',
    },
    'u0i5duwe': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    'v4dldvzs': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'cxg6lnr2': {
      'en': 'can\'t be less than 8 characters',
      'hi': '8 अक्षरों से कम नहीं हो सकता',
      'ja': '8文字未満にすることはできません',
    },
    'cdh30k8z': {
      'en': 'can\'t be more than 25 characters',
      'hi': '25 अक्षरों से ज़्यादा नहीं हो सकता',
      'ja': '25文字を超えることはできません',
    },
    'br31eadi': {
      'en': 'Invalid Password',
      'hi': 'अवैध पासवर्ड',
      'ja': '無効なパスワード',
    },
    '62g5q4wt': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    '0p5gcoap': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // Filter_data
  {
    'ccyzdn2o': {
      'en': 'Men',
      'hi': 'पुरुषों',
      'ja': '男性',
    },
    '49o4lmvu': {
      'en': 'Women',
      'hi': 'औरत',
      'ja': '女性',
    },
    'et73zyq6': {
      'en': 'Children',
      'hi': 'बच्चे',
      'ja': '子供たち',
    },
    'yex0hp7o': {
      'en': 'Type',
      'hi': 'प्रकार',
      'ja': 'タイプ',
    },
    'd5z9cjbn': {
      'en': 'Search for an item...',
      'hi': 'किसी आइटम की खोज करें...',
      'ja': 'アイテムを検索...',
    },
    'ifx7blas': {
      'en': 'Price increasing',
      'hi': 'कीमत बढ़ रही है',
      'ja': '価格上昇',
    },
    'rhrqemjh': {
      'en': 'Price increasing',
      'hi': 'कीमत बढ़ रही है',
      'ja': '価格上昇',
    },
    'vfg411np': {
      'en': 'Price decreasing',
      'hi': 'कीमत में कमी',
      'ja': '価格が下落',
    },
    '002o96du': {
      'en': 'Sort by',
      'hi': 'इसके अनुसार क्रमबद्ध करें',
      'ja': '並べ替え',
    },
    'fa3ybkr4': {
      'en': 'Search for an item...',
      'hi': 'किसी आइटम की खोज करें...',
      'ja': 'アイテムを検索...',
    },
    'vylr7nm4': {
      'en': 'Eatables',
      'hi': 'खाद्य सामग्री',
      'ja': '食べられるもの',
    },
    'zpbej5es': {
      'en': 'Healthcare',
      'hi': 'स्वास्थ्य देखभाल',
      'ja': '健康管理',
    },
    '15py46az': {
      'en': 'Dairy',
      'hi': 'डेरी',
      'ja': '乳製品',
    },
    'usm01eis': {
      'en': 'Type',
      'hi': 'प्रकार',
      'ja': 'タイプ',
    },
    'o0jgxcb3': {
      'en': 'Search for an item...',
      'hi': 'किसी आइटम की खोज करें...',
      'ja': 'アイテムを検索...',
    },
    'tjt0bwfv': {
      'en': 'Price increasing',
      'hi': 'कीमत बढ़ रही है',
      'ja': '価格上昇',
    },
    'hooovnhq': {
      'en': 'Price increasing',
      'hi': 'कीमत बढ़ रही है',
      'ja': '価格上昇',
    },
    'i6g4qafd': {
      'en': 'Price decreasing',
      'hi': 'कीमत में कमी',
      'ja': '価格が下落',
    },
    'aagrsqb3': {
      'en': 'Sort by',
      'hi': 'इसके अनुसार क्रमबद्ध करें',
      'ja': '並べ替え',
    },
    'e2ijpk06': {
      'en': 'Search for an item...',
      'hi': 'किसी आइटम की खोज करें...',
      'ja': 'アイテムを検索...',
    },
    'ku4kjtdz': {
      'en': 'Analogue',
      'hi': 'अनुरूप',
      'ja': 'アナログ',
    },
    'f6x0y5xz': {
      'en': 'Digital',
      'hi': 'डिजिटल',
      'ja': 'デジタル',
    },
    'zqbquiz0': {
      'en': 'Type',
      'hi': 'प्रकार',
      'ja': 'タイプ',
    },
    'e3y5p8ie': {
      'en': 'Search for an item...',
      'hi': 'किसी आइटम की खोज करें...',
      'ja': 'アイテムを検索...',
    },
    'wkm7jkz2': {
      'en': 'Price increasing',
      'hi': 'कीमत बढ़ रही है',
      'ja': '価格上昇',
    },
    '3odjtxkz': {
      'en': 'Price increasing',
      'hi': 'कीमत बढ़ रही है',
      'ja': '価格上昇',
    },
    'jwux5gqy': {
      'en': 'Price decreasing',
      'hi': 'कीमत में कमी',
      'ja': '価格が下落',
    },
    '3f8coipv': {
      'en': 'Sort by',
      'hi': 'इसके अनुसार क्रमबद्ध करें',
      'ja': '並べ替え',
    },
    '5iuw3o38': {
      'en': 'Search for an item...',
      'hi': 'किसी आइटम की खोज करें...',
      'ja': 'アイテムを検索...',
    },
    '6f0h7mvs': {
      'en': 'Search Product',
      'hi': 'उत्पाद खोजें',
      'ja': '製品を検索',
    },
    'cmi1h25i': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // forgot_password
  {
    'ppm8el2d': {
      'en': 'Forgot password',
      'hi': 'पासवर्ड भूल गए',
      'ja': 'パスワードをお忘れですか',
    },
    '2ebb1wd1': {
      'en':
          'We have sent an email with a link to reset your password.please enter the email associated with your account below.',
      'hi':
          'हमने आपका पासवर्ड रीसेट करने के लिए एक लिंक के साथ एक ईमेल भेजा है। कृपया नीचे अपने खाते से संबद्ध ईमेल दर्ज करें।',
      'ja':
          'パスワードをリセットするためのリンクを記載したメールを送信しました。アカウントに関連付けられているメールアドレスを以下に入力してください。',
    },
    'nhbkuacl': {
      'en': 'Email',
      'hi': 'ईमेल',
      'ja': 'メール',
    },
    '0qlvjvm8': {
      'en': 'Send Link',
      'hi': 'लिंक भेजें',
      'ja': 'リンクを送信',
    },
    'iqda25f8': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'tkeutara': {
      'en': 'min 3 characters required',
      'hi': 'न्यूनतम 3 अक्षर आवश्यक',
      'ja': '最低3文字が必要です',
    },
    'k98v29om': {
      'en': 'max 30 characters only',
      'hi': 'अधिकतम 30 अक्षर ही',
      'ja': '最大30文字まで',
    },
    'qh5b88jd': {
      'en': 'Invalid Email',
      'hi': 'अमान्य ईमेल',
      'ja': '無効なメール',
    },
    '8c7qpyxt': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    'i17kcbaj': {
      'en': 'Field is required',
      'hi': 'ये स्थान भरा जाना है',
      'ja': 'フィールドは必須です',
    },
    'fjx2cxhi': {
      'en': 'min 8 characters requiered',
      'hi': 'न्यूनतम 8 अक्षर आवश्यक',
      'ja': '最低8文字が必要です',
    },
    'x2w4sdyd': {
      'en': 'max 25 characters only',
      'hi': 'अधिकतम 25 अक्षर ही',
      'ja': '最大25文字まで',
    },
    'iavd5jx7': {
      'en': 'Please choose an option from the dropdown',
      'hi': 'कृपया ड्रॉपडाउन से कोई विकल्प चुनें',
      'ja': 'ドロップダウンからオプションを選択してください',
    },
    'tk918ghd': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // Test
  {
    '65otv067': {
      'en': 'test ',
      'hi': 'परीक्षा',
      'ja': 'テスト',
    },
    'uiugas56': {
      'en': 'Label here...',
      'hi': 'यहां लेबल करें...',
      'ja': 'ここにラベルを付けます...',
    },
    'g21pe7d1': {
      'en': 'Men',
      'hi': 'पुरुषों',
      'ja': '男性',
    },
    'o9de82w6': {
      'en': 'Men',
      'hi': 'पुरुषों',
      'ja': '男性',
    },
    '4dm8ims9': {
      'en': 'women',
      'hi': 'औरत',
      'ja': '女性',
    },
    '9o5a7ewb': {
      'en': 'child',
      'hi': 'बच्चा',
      'ja': '子供',
    },
    'k4bwjhb3': {
      'en': 'Please select...',
      'hi': 'कृपया चयन कीजिए...',
      'ja': '選択してください...',
    },
    '5pt7q8m9': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // test1
  {
    '8ui4y9h8': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
      'ja': 'ページタイトル',
    },
    '2nm97hnu': {
      'en': 'Hello World',
      'hi': 'हैलो वर्ल्ड',
      'ja': 'こんにちは世界',
    },
    '1vqepgqu': {
      'en': 'Hello World',
      'hi': 'हैलो वर्ल्ड',
      'ja': 'こんにちは世界',
    },
    'd1ut669c': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // payment
  {
    'nlrqxgr8': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
      'ja': 'ページタイトル',
    },
    '4arcn6pp': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // maps
  {
    't217ps8h': {
      'en': 'Page Title',
      'hi': 'पृष्ठ शीर्षक',
      'ja': 'ページタイトル',
    },
    'houiz7ob': {
      'en': 'Home',
      'hi': 'घर',
      'ja': '家',
    },
  },
  // cust_code
  {
    'h6ylg43b': {
      'en': 'Page Title',
      'hi': '',
      'ja': '',
    },
    'op1i00qp': {
      'en': 'Home',
      'hi': '',
      'ja': '',
    },
  },
  // Menu_bar
  {
    'xxsmaa5g': {
      'en': 'menu bar, helps you navigate to all pages ',
      'hi': 'मेनू बार, आपको सभी पृष्ठों पर नेविगेट करने में मदद करता है',
      'ja': 'メニューバーは、すべてのページに移動するのに役立ちます',
    },
  },
  // View_products
  {
    'qdum6vmm': {
      'en': 'displays all  products for you',
      'hi': 'आपके लिए सभी उत्पाद प्रदर्शित करता है',
      'ja': 'すべての商品を表示します',
    },
  },
  // filter_products
  {
    '0dhyunsn': {
      'en': 'filter out your favourite list ',
      'hi': 'अपनी पसंदीदा सूची को फ़िल्टर करें',
      'ja': 'お気に入りリストをフィルタリングする',
    },
  },
  // Search_products
  {
    '9pznvosu': {
      'en': 'helps you in search for products',
      'hi': 'उत्पादों की खोज में आपकी मदद करता है',
      'ja': '製品の検索に役立ちます',
    },
  },
  // favourite_product
  {
    'b76h4lhv': {
      'en': 'favourite item based on your intrest',
      'hi': 'आपकी रुचि के आधार पर पसंदीदा आइटम',
      'ja': 'あなたの興味に基づいたお気に入りのアイテム',
    },
  },
  // Add_product_tocart
  {
    'fzf6pxe6': {
      'en': 'helps you to add item to cart',
      'hi': 'आपको कार्ट में आइटम जोड़ने में मदद करता है',
      'ja': '商品をカートに追加するのに役立ちます',
    },
  },
  // productListCard
  {
    '1ybg7viv': {
      'en': 'Hello World',
      'hi': 'हैलो वर्ल्ड',
      'ja': 'こんにちは世界',
    },
  },
  // Miscellaneous
  {
    'u8m2pmvv': {
      'en': 'filter out data ',
      'hi': 'डेटा फ़िल्टर करें',
      'ja': 'データをフィルタリングする',
    },
    'bru57wgx': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'ah5f1114': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'i1fduet2': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    '1jxvheb2': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    '79v2oeey': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'dyonqley': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'cxc5mi7d': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'um0jaekp': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'g67xf6xc': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'xralzxzz': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'ueurie6n': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    's4qrgn7t': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'rcf04qoc': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'moryua1e': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    '50ihkprq': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'cfsor6eu': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'dpnqjd3y': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'h35de1m7': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'zvffwu7h': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    '8bwzu654': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'vx2dz2bl': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'guzgd56b': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    '3gksqxjd': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'tmq75qz7': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'o0tk22jd': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'npm8j9gn': {
      'en': '',
      'hi': '',
      'ja': '',
    },
    'mpvk6x8i': {
      'en': '',
      'hi': '',
      'ja': '',
    },
  },
].reduce((a, b) => a..addAll(b));

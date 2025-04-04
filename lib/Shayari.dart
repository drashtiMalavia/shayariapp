import 'dart:math';

import 'package:flutter/material.dart';

class Sayari{
  static List li=['शुभकामनाएं शायरी','दोस्ती शायरी','मजेदार शायरी','भगवन शायरी','प्रेरणा स्त्रोत शायरी','जीवन शायरी','मोहब्बत शायरी','यादे शायरी','अन्य शायरी','राजनीति शायरी','प्रेम शायरी','दर्द शायरी','शराब शायरी','बेवफ़ा शायरी','जन्मदिन शायरी','होली शायरी'];
  static List li2=['\nआप ने मेहनत कर ईमानदारी से'
    ,'\nआप इस सारी'
    ,'\nसुबह की प्यारी नींद को'
    ,'\nआपने एक नयी पहचान बनाई है,'
    ,'\nइसी तरह बढ़ते रहो सफलता की ओर आगे'
    ,'\nआपने हासिल की है सफलता'
    ,'\nपरिवार गांव का नाम रोशन किया है,'
    ,'\nआखिरकार मेहनत रंग लाई'
    ,'\nपरिश्रम के पसीने से जब'
    ,'\nजब मन में सफलता का संकल्प होता है,'
  ];
  static List li2p=['\nआप ने मेहनत कर ईमानदारी से \nइस खूबसूरत मुकाम को पाया है,\nआपकी सफलता और आपकी जीत ने \nबहुत लोगो को हौसला बढ़ाया है !\nबधाई आपको !'
    ,'\nआप इस सारी\nसफलता और इससे भी\nअधिक के हकदार हैं !\nबधाई हो आपको !'
    ,'\nसुबह की प्यारी नींद को\nजो खोया करते है,\nवही जिंदगी में सफलता\nका बीज बोया करते है !\nसफलता की बधाई आपको !\n'
    ,'\nआपने एक नयी पहचान बनाई है,\nखुद का रौब बढ़ाया है और\nहम सबकी शान बढ़ाई है\nबधाई आपको !'
    ,'\nइसी तरह बढ़ते रहो सफलता की ओर आगे\nहर मंजिल को तुम आसानी से पार करो,\nहमारी दुवाएं भी सदा संग रहेंगी तुम्हारे !\nशुभकामनाएं स्वीकार करें !'
    ,'\nआपने हासिल की है सफलता\nआपने रच दिया इतिहास\nआपने पार किया हर बाधा को\nआप छा गये जग पर आज !\nबहुत-बहुत बधाई आपको !'
    ,'\nपरिवार गांव का नाम रोशन किया है,\nहर किसी की जुबान पर नाम है आपका\nआपने कामयाब होकर हर जगह\nअपनी जीत का बिगुल बजाया है !\nशुभकामनाएं आपको !'
    ,'\nआखिरकार मेहनत रंग लाई\nआपकी जीत बहुत बड़ी है भाई\nअब जल्दी से बजवा लीजिए शहनाई\nहमारे तरफ से आपको\nसफलता की हार्दिक बधाई !'
    ,'\nपरिश्रम के पसीने से जब\nसफलता की फसल खिलती है,\nतब किसी एक से नहीं\nपूरे जमाने से बधाइयां मिलती हैं !\nशुभकामनाएं आपको !'
    ,'\nजब मन में सफलता का संकल्प होता है,\nतो ईमानदारी से परिश्रम ही विकल्प होता है !\nसफलता के लिए बधाई आपको !'
  ];
  static List li3=['\nतेरे बिना मेरे वजूद की कोई कल्पना तक नहीं'
    ,'\nदुनिया भर की खुशियां वार दूँ मैं यारी पर हमारी'
    ,'\nदोस्ती किसे कहते हैं जानना हो तो मेरे दोस्तों को देखो'
    ,'\nमेरे यार तेरी अतरंगी यारी ने'
    ,'\nनहीं है मुझे कोई चिंता कि आगे क्या होगा और क्या नहीं'
    ,'\nकुछ तो मैंने अच्छा किया ही होगा कभी न कभी'
    ,'\nकुछ तो मैंने अच्छा किया ही होगा कभी न कभी'
    ,'\nतेरी आहाट सावन की फुहार सी है'
    ,'\nऐ दोस्त तुझ को रहम न आए तो क्या करूँ'
    ,'\nदोस्ती आम है लेकिन ऐ दोस्त'
  ];
  static List li3p=['\nतेरे बिना मेरे वजूद की कोई कल्पना तक नहीं\nजो तू साथ नहीं तो कोई मेरे पास नहीं\nएक अर्से बाद मिली है मुझे आहट तेरी\nतेरे बिना अब कोई भी मेरा खास नहीं…'
    ,'\nदुनिया भर की खुशियां वार दूँ मैं यारी पर हमारी\nसमय सबको सुना रहा है कहानियां यारी पर हमारी…'
    ,'\nदोस्ती किसे कहते हैं जानना हो तो मेरे दोस्तों को देखो\nजो एक आवाज़ पर मुसीबतों से भिड़ने को तैयार रहते हैं\nदोस्ती को महसूस करना है तो यारों की महफ़िल को देखो\nजहाँ खुशियों के तराने अक्सर अपनी कहानी कहते हैं…'
    ,'\nमेरे यार तेरी अतरंगी यारी ने\nतेरे लफ़्ज़ों की खुद्दारी ने\nमुझे मुसीबतों से लड़ना सीखा दिया\nमुझे हंसने के काबिल बना दिया…'
    ,'\nनहीं है मुझे कोई चिंता कि आगे क्या होगा और क्या नहीं\nमैं बस इतना जानता हूँ कि मेरे हक़ में तेरी यारी है\nक्यों करूँ मैं फ़िक्र झूठे, फरेबी और मक्कार ज़माने की?\nमैं जानता हूँ कि मेरी इकलौती ताक़त तेरी यारी है…'
    ,'\nकुछ तो मैंने अच्छा किया ही होगा कभी न कभी\nजो सन्नाटे में कैद मेरी आहाट को तेरी यारी ने अपनाया\nकई नकाब पहने लोगों के तूने नकाब उतारे,\nकई मुसीबत बनते क़दमों के तूने निशानों को मिटाया…'
    ,'\nकुछ तो मैंने अच्छा किया ही होगा कभी न कभी\nजो सन्नाटे में कैद मेरी आहाट को तेरी यारी ने अपनाया\nकई नकाब पहने लोगों के तूने नकाब उतारे,\nकई मुसीबत बनते क़दमों के तूने निशानों को मिटाया…'
    ,'\nतेरी आहाट सावन की फुहार सी है\nजो तपती हुई जमीं पर बूंदे बरसा कर सुकून देती है\nमेरे दोस्त तेरी मौजूदगी एक बड़े पेड़ की छाँव सी है\nजिससे घबराकर मुसीबते अपनी राहें बदल लेती हैं….'
    ,'\nऐ दोस्त तुझ को रहम न आए तो क्या करूँ\nदुश्मन भी मेरे हाल पे अब आब-दीदा है..'
    ,'\nदोस्ती आम है लेकिन ऐ दोस्त\nदोस्त मिलता है बड़ी मुश्किल से..'
  ];
  static List li4=['\nलड़के का पेट और घर का गेट हमेशा बड़ा होना चाहिए'
    ,'\nनहीं बनना चाहते अब्बू, तो प्यार में बेकाबू होने से बचें'
    ,'\nनशा है शराब का, लेकिन कटेगा आपका'
    ,'\nआग से बनती है राख, मेरे दोस्तों के पास नहीं है दिमाग'
    ,'\nनहीं आता मुझपर प्यार, अक्ल से पैदल हो क्या, हर बात पर मुंह बनाती हो छोटी बच्ची हो '
    ,'\nमिल्क को कहते हैं दूध, कर्ड को कहते है दही मेरे सिवा तुम्हारे दिल में कोई और तो नहीं'
    ,'\nलड़कियों से रखो दूरी, नहीं तो बना देगी तुमको दिल- दिमाग का रोगी'
    ,'\nकम मैसेज करो नहीं तो हो जाओगे ब्लॉक, कहीं इश्क की में आग में जलकर राख ना हो जाओ'
    ,'\nइश्क में कह रही थी फन्नाह होने को, मैंने भी कह दिया अपना गंदा मुंह लेकर दफा हो जाने को'
    ,'\nनहीं हैं हम किसी के बेबी शोना, हम तो हैं अपने मां बाप की बिगड़ी हुई संतान'
  ];

  static List li4p=['\nलड़के का पेट और घर का गेट हमेशा बड़ा होना चाहिए\nकहते हैं जो व्यक्ति अमीर होता है उसके शौक भी बड़े होते हैं।\nइसकी पहचान उनके बढ़े हुए पेट से और\nउनके घर के गेट से पता चलता है।'
    ,'\nनहीं बनना चाहते अब्बू, तो प्यार में बेकाबू होने से बचें\nकई लोग ऐसे होते हैं जो एक नहीं बल्कि कई लड़कियों को अपना दिल दे बैठते हैं।\nइसलिए हमेशा प्यार में खुद को बहने से रोक लें नहीं तो बहुत पछतावा होग।'
    ,'\nनशा है शराब का, लेकिन कटेगा आपका\nशराब का नशा सच्चा होता है लेकिन, \nआज के जमाने में सच्चा प्यार ढूंढना बहुत मेहनत का काम है।\nजिसमें आपको कभी भी धोखा मिल सकता है। '
    ,'\nआग से बनती है राख, \n मेरे दोस्तों के पास नहीं है दिमाग\nजिंदगी में कुछ दोस्त तो ऐसे होते हैं जो अपने कम दिमाग के लिए ग्रुप में मशहूर होते हैं।\nउन्हें जितना समझा लिया जाए लेकिन, उनकी समझ में कुछ नहीं आता।'
    ,'\nनहीं आता मुझपर प्यार, अक्ल से पैदल हो क्या,\nहर बात पर मुंह बनाती हो छोटी बच्ची हो \nकई बार रिश्तों में ढेर सारा प्यार दिखाने के\nबाद सामने वाले को समझ नहीं आता है। '
    ,'\nमिल्क को कहते हैं दूध, कर्ड को कहते है दही\nमेरे सिवा तुम्हारे दिल में कोई और तो नहीं\nजनाब, देख लीजिएगा कि जिसके पीछे आप घूमे जा रहे हैं \nकहीं वह किसी और को तो नहीं चाह रहा।'
    ,'\nलड़कियों से रखो दूरी, \nनहीं तो बना देगी तुमको दिल- दिमाग का रोगी\nकहते हैं कि लड़कियों से जितना दूर रहो उतना अच्छा है\nक्योंकि एक बार प्यार की में पड़ गए तो सब गवा बैठोगे।'
    ,'\nकम मैसेज करो नहीं तो हो जाओगे ब्लॉक,\nकहीं इश्क की में आग में जलकर राख ना हो जाओ\nकभी-कभी खुद को कंट्रोल में रखना चाहिए। \nक्योंकि, ज्यादा प्यार दिखाना हानिकारक हो सकता है।'
    ,'\nइश्क में कह रही थी फन्नाह होने को,\nमैंने भी कह दिया अपना गंदा मुंह लेकर दफा हो जाने को\nइश्क में डिमांड बढ़ने पर अक्सर प्यार होने लगता है।\nइसलिए देखकर ऐसा करें।'
    ,'\nनहीं हैं हम किसी के बेबी शोना, \nहम तो हैं अपने मां बाप की बिगड़ी हुई संतान\nमां-बाप अपने बच्चे की असलियत जानते हैं।\nदूसरों पर खूब प्यार लुटाने वालों की नियत पता चलती है।'
  ];

  static List li5=['\nॐ में ही आस्था हैं, ॐ में ही विश्वास हैं,'
    ,'\nपांच पहर काम (कर्म) किया, तीन पहर सोए,'
    ,'\nसुबह का हर पल ज़िंदगी दे आपको'
    ,'\nभगवान का दिया कभी अल्प नहीं होता,'
    ,'\nमेरे यार बिना कोई महफ़िल ना सजती है,'
    ,'\nइतनी पीता हू की मदहोश रहता हू.'
    ,'\nशिव की ज्योति से प्रकाश बढ़ता है,'
    ,'\nकफ़न के साथ ही रिस्ते भी दफ़न हो जाते हैं'
    ,'\nमुझे चरणों से लगा ले.'
    ,'\nशिव की शक्ति, शिव की भक्ति, खुशी की बहार मिले,'
  ];

  static List li5p=['\nॐ में ही आस्था हैं, ॐ में ही विश्वास हैं,\nॐ में ही शक्ति हैं, ॐ में ही संसार,\nॐ से होती हैं अच्छे दिन की शुरूआत.'
    ,'\nपांच पहर काम (कर्म) किया, तीन पहर सोए,\nएको घड़ी न हरी भजे तो मुक्ति कहाँ से होए\nबनाने वाले ने भी तुझे,\nकिसी कारण से बनाया होगा,\nछोड़ा होगा जब ज़मीन पर तुझे,\nउसके सीने में भी दर्द तो आया होगा…'
    ,'\nसुबह का हर पल ज़िंदगी दे आपको\nदिन का हर लम्हा खुशी दे आपको\nजहा गम की हवा छू कर भी न गुज़रे\nखुदा वो जन्नत से ज़मीन दे आपको'
    ,'\nभगवान का दिया कभी अल्प नहीं होता,\nजो टूट जाये वो संकल्प नहीं होता,\nहार को जीत से दूर ही रखना,\nक्योकि जीत का कोई विकल्प नहीं होता |…'
    ,'\nमेरे यार बिना कोई महफ़िल ना सजती है,\nजैसे चाँद बिना रात अधूरी लगदी है,\nऐ खुदा सब को ऐसा यार देना,\nजिसके आने से ज़िन्दगी रोशन सी लगदी है |'
    ,'\nइतनी पीता हू की मदहोश रहता हू.\nसब कुछ समझता हू पर खामोश रहता हू\nजो लोग करते ह मुझे गिराने की कोशिश\nमे अक्सर उन्ही के साथ रहता हू|'
    ,'\nशिव की ज्योति से प्रकाश बढ़ता है,\nजो भी जाता है भोले के द्वार,\nकुछ ना कुछ उससे ज़रूर मिलता है!'
    ,'\nकफ़न के साथ ही रिस्ते भी दफ़न हो जाते हैं\nवक्त के पन्नों पर कर्मों का लेखा है\nकभी हम उनके बाप , तो कभी वो भी हमारे बाप हो जाते हैं\nकभी हम हिन्दू तो कभी हम भी मुसलमान हो जाते हैं'
    ,'\nमुझे चरणों से लगा ले.\nमेरे श्याम मुरलीवाले.\nमेरी सांस-सांस में तेरा.\nहै नाम मुरलीवाले.'
    ,'\nशिव की शक्ति, शिव की भक्ति, खुशी की बहार मिले,\nशिवरात्रि के पावन अवसर पर आपको ज़िंदगी की एक नयी अच्छी शुरुआत मिले.'
  ];

  static List li6=['\nकाम करो ऐसा कि एक पहचान बन जाए,'
    ,'\nये जिंदगी हसीं है इससे प्यार करो,'
    ,'\nलक्ष्य को पाने के लिए यदि हम तन, मन और धन लगा देते हैं,'
    ,'\nवक्त से लड़कर जो नसीब बदल दे,'
    ,'\nमंजिलें क्या है, रास्ता क्या है?'
    ,'\nजिंदगी बहुत हसीन है,'
    ,'\nबिना संघर्ष कोई महान नही होता'
    ,'\nहवाओं के भरोसे मत उड़,'
    ,'\nबेहतर से बेहतर कि तलाश करो,'
    ,'\nन पूछो कि मेरी मंजिल कहां है, '
  ];

  static List li6p=['\nकाम करो ऐसा कि एक पहचान बन जाए,\nहर कदम ऐसा चलो कि निशान बन जाए,\nयहां जिंदगी तो हर कोई काट लेता है,\nजिंदगी जियो इस कदर कि मिसाल बन जाए।'
    ,'\nये जिंदगी हसीं है इससे प्यार करो,\nअभी है रात तो सुबह का इंतजार करो,\nवो पल भी आएगा जिसकी ख्वाहिश है आपको,\nरब पर रखो भरोसा वक्त पर एतबार करो।'
    ,'\nलक्ष्य को पाने के लिए यदि हम तन, मन और धन लगा देते हैं,\nसच कहता हूं दोस्तों, कुंडली के सितारे भी अपनी जगह बदल देते हैं।'
    ,'\nवक्त से लड़कर जो नसीब बदल दे,\nइंसान वही जो अपनी तकदीर बदल दे,\nकल क्या होगा कभी मत सोचो,\nक्या पता कल वक्त खुद अपनी तस्वीर बदल ले।'
    ,'\nमंजिलें क्या है, रास्ता क्या है?\nहौसला हो तो फासला क्या है'
    ,'\nजिंदगी बहुत हसीन है,\nकभी हंसाती है, तो कभी रुलाती है,\nलेकिन जो जिंदगी की भीड़ में खुश रहता है,\nजिंदगी उसी के आगे सिर झुकाती है।'
    ,'\nबिना संघर्ष कोई महान नही होता,\nबिना कुछ किए जय जय कार नही होता,\n  जब तक नहीं पड़ती हथौड़े की चोट,\nतब तक कोई पत्थर भगवान नहीं होता।'
    ,'\nहवाओं के भरोसे मत उड़,\nचट्टाने तूफानों का भी रुख मोड़ देती हैं,\nअपने पंखों पर भरोसा रख,\nहवाओं के भरोसे तो पतंगे उड़ा करती हैं।'
    ,'\nबेहतर से बेहतर कि तलाश करो,\nमिल जाए नदी तो समंदर कि तलाश करो,\nटूट जाता है शीशा पत्थर कि चोट से,\nटूट जाए पत्थर ऐसा शीशा तलाश करो।'
    ,'\nन पूछो कि मेरी मंजिल कहां है,\nअभी तो सफर का इरादा किया है, \nन हारुंगा हौसला उम्र भर, \nये मैंने खुद से वादा किया है।'
  ];

  static List li7=['\nअजीब तरह से गुजर गयी मेरी भी जिंदगी'
    ,'\nहंसकर जीना ही दस्तूर है जिंदगी का,'
    ,'\nआज फिर वक़्त निकला था मेरे ख्वाहिश पूरे करने की'
    ,'\nछोटी सी जिंदगी है अरमान बहुत है,'
    ,'\nहासिल-ए-जिंदगी हसरतों के सिवा और कुछ भी नहीं,'
    ,'\nये ना पूछो,कि ये जिंदगी ख़ुशी कब देती है?'
    ,'\nजिंदगी में जीत और हार हमारी सोच बनाती है,'
    ,'\nकल न हम होंगे न कोई गिला होगा'
    ,'\nकितना दुख है इस जीवन में,'
    ,'\nअब समझ लेता हूं मीठे लफ़्ज़ों की कड़वाहट'
  ];

  static List li7p=['\nअजीब तरह से गुजर गयी मेरी भी जिंदगी,\nसोचा कुछ, किया कुछ, हुआ कुछ, मिला कुछ\nजीवन में जो कुछ भी काम किए हैं, \nउनके परिणाम इसी जीवन में सामने आएंगे और जो होना है वो तो होकर ही रहेगा।'
    ,'\nहंसकर जीना ही दस्तूर है जिंदगी का, एक यही किस्सा मशहूर है जिंदगी का\nजिंदगी जीनी है तो इसे हंसकर ही जीना होगा। '
    ,'\nआज फिर वक़्त निकला था मेरे ख्वाहिश पूरे करने की, फिर अचानक ज़िम्मेदारी आड़े आ गयी\nये वाली शायरी भेजकर बताइए कि आप जिंदगी की जिम्मेदारियां समझने लगे हैं।'
    ,'\nछोटी सी जिंदगी है अरमान बहुत है, \nहमदर्द नहीं कोई इंसान बहुत है, \nदिल का दर्द सुनाए तो किसको, \nजो दिल के करीब है, \nवो अनजान बहुत है\nआप रोज इस फीलिंग का सामना करते हैं।'
    ,'\nहासिल-ए-जिंदगी हसरतों के सिवा और कुछ भी नहीं,ये किया नहीं, \nवो हुआ नहीं, ये मिला नहीं, वो रहा नहीं\nये जीवन की सच्चाई है, \nदिल की बात साझा कीजिए, आपके करीबी को अच्छा लगेगा। '
    ,'\nये ना पूछो,कि ये जिंदगी ख़ुशी कब देती है?\nक्योंकि ये शिकायत उसे भी है,जिसे ये जिंदगी सब देती है\nये तो है ही, जिनको जिंदगी सब कुछ देती है, \nउन्हें भी कुछ न कुछ शिकायत रहती ही है। '
    ,'\nजिंदगी में जीत और हार हमारी सोच बनाती है, \nजो मान लेता है, वह हार जाता है, जब ठान लेता है, \nवह जीत जाता है ये तो सच ही है, \nआपकी ये बात सभी को अच्छी लगेगी।'
    ,'\nकल न हम होंगे न कोई गिला होगा,सिर्फ सिमटी हुई यादों का सिलसिला होगा,\nलम्हे हैं चलो हंसकर बिता लें,जाने कल जिंदगी का क्या फैसला होगा\nजिंदगी का भरोसा नहीं है, \nइसलिए सिर्फ खुश रहने की कोशिश करना ही जरूरी है।'
    ,'\nकितना दुख है इस जीवन में, सब कुछ तो अब देख लिया, \nनाराज हुआ था मैं दुनिया से, अब खुद से ही मैं रूठ गया!\nजीवन में दुख तो खूब हैं लेकिन \nइससे आगे निकलना है खुद से ही रूठ नहीं जाना है। '
    ,'\nअब समझ लेता हूं मीठे लफ़्ज़ों की कड़वाहट,\nहो गया है जिंदगी का तजुर्बा थोड़ा थोड़ा\nपेरेंट्स इस शायरी से समझ जाएंगे कि आपको \nजिंदगी के उतार चढ़ाव समझ आ चुके हैं।'
  ];

  static List li8=['\n“नज़रे करम” मुझ पर इतना न कर,'
    ,'\nनज़रे करम मुझ पर इतना न कर,'
    ,'\n“नज़रे करम” मुझ पर इतना न कर,'
    ,'\nकहाँ आँसुओं की ये सौग़ात होगी,'
    ,'\nहुस्न का क्या काम है'
    ,'\nबादल चाँद छुपा सकता है'
    ,'\nबिना देखे तेरी तस्वीर बना सकता हूं'
    ,'\nआधी रात सपना आ जाता है'
    ,'\nकिसी शायर ने कहा था मोहब्बत न करना ।'
    ,'\nदुआ है हमारी ...'
  ];

  static List li8p=['\n“नज़रे करम” मुझ पर इतना न कर,\nकी तेरी मोहब्बत के लिए बागी हो जाऊं,\nमुझे इतना न पिला इश्क़-ए-जाम की,\nमैं इश्क़ के जहर का आदि हो जाऊं।'
    ,'\nनज़रे करम मुझ पर इतना न कर,\nकी तेरी मोहब्बत के लिए बागी हो जाऊं,\nमुझे इतना न पिला इश्क़-ए-जाम की,\nमैं इश्क़ के जहर का आदि हो जाऊं।'
    ,'\n“नज़रे करम” मुझ पर इतना न कर,\nकी तेरी मोहब्बत के लिए बागी हो जाऊं,\nमुझे इतना न पिला इश्क़-ए-जाम की,\nमैं इश्क़ के जहर का आदि हो जाऊं।'
    ,'\nकहाँ आँसुओं की ये सौग़ात होगी,\nनए लोग होंगे नई बात होगी।\nमैं हर हाल में मुस्कुराता रहूँगा,\nतुम्हारी मोहब्बत अगर साथ होगी।'
    ,'\nहुस्न का क्या काम है\nसच्ची मोहब्बत में…\nरंग सांवला भी हो तो\nयार कातिल ही लगता है…!'
    ,'\nबादल चाँद छुपा सकता है\nआकाश को नहीं,\nहम सारी दुनिया को भूल सकते हैं लेकिन\nआपको नहीं….!'
    ,'\nबिना देखे तेरी तस्वीर बना सकता हूं\nबिना मिले तेरा हाल बता सकता हूं\nअरे मेरी मोहब्बत में इतनी ताकत हैं\nकी तेरे आंखो के आंसु...\nअपनी आंख से निकाल सकता हूं.'
    ,'\nआधी रात सपना आ जाता है फिर सोना मुश्किल हो जाता है,\nखुदा की कसम यारो मैंने प्यार नहीं किया\nये प्यार तो अपना आप ही हो जाता है….!'
    ,'\nकिसी शायर ने कहा था मोहब्बत न करना ।\nलेकीन हो जाए तो इंकार भी ना करना।,\nनिभा सको तो ही मोहब्बत करना ।\nवरना किसी की जिंदगी बर्बाद ना करना.'
    ,'\nदुआ है हमारी ...\nतेरी जिंदगी में कोई गम ना रहे ...\nअगर इस गम की वज़ह हम हैं,\nतो कसम से इस दुनिया में हम ना रहे ...!!'
  ];

  static List li9=['\nकिसी बहाने से दिल में आते तो सही'
    ,'\nइस दिल की हालत तुझको सुनाऊंगा'
    ,'\nन जाने दिल आज क्यूं भरने लगा है'
    ,'\nतुमसे दूर रहकर दिल को आराम नहीं है'
    ,'\nछा रही है खुमारी तेरे प्यार की'
    ,'\nदिल फिर तुझसे  मुलाकात चाहता है'
    ,'\nशम्मा जल-जल के बुझ रही परवाने के लिए'
    ,'\nजिसके आने की खुशी हर पल रहे'
    ,'\nएक दर्द सा उठा दिल में'
    ,'\nमुझे इश्क की जंजीर से कब आजाद करोगे'
  ];

  static List li9p=['\nकिसी बहाने से दिल में आते तो सही\nइन धडकनों को फिर सुलझाते तो सही\nम्हारे याद की महफ़िल फिर से सजी है\nफिर से रंग जमता तुम आते तो सही ।।'
    ,'\nइस दिल की हालत तुझको सुनाऊंगा\nतेरे आईने में बस मै ही नजर आऊंगा\nयादों की बारात फिर सजने लगी है\nदिल में शहनाईया सी बजने लगी हैं ।'
    ,'\nन जाने दिल आज क्यूं भरने लगा है\nकिसी की चाहत में फिर उतरने लगा है\nडूब जाने का डर फिर सता रहा है\nदिल किसी को फिर याद करने लगा है।।'
    ,'\nतुमसे दूर रहकर दिल को आराम नहीं है\nइक चाहत के सिवा कोई काम नहीं है\nहर घड़ी मुझको तेरी याद सताती है\nतेरे संग जो गुजरे वो सुबह शाम नहीं  है ।।'
    ,'\nछा रही है खुमारी तेरे प्यार की\nघडी कटती नहीं है इन्तजार की\nकबसे भौंरे तलाशते गुलों में खुशबू\nमस्ती भर गयी गई फिर बहार की ।।'
    ,'\nदिल फिर तुझसे  मुलाकात चाहता है\nअक्सर तन्हाई में तेरा साथ चाहता है\nतुझसे सुरु हुई हैं ख़्वाबों की कहानी\nजो ख्वाबों से भर गई है वो रात चाहता है।।'
    ,'\nशम्मा जल-जल के बुझ रही परवाने के लिए\nवो खुद को मिटा रही है दीवाने के लिए\nचाहत में उसके डूब कर याद कर रही है\nहसीन लम्हों को वो आबाद कर रही है ।।'
    ,'\nजिसके आने की खुशी हर पल रहे\nइस दिल में उसकी यादों का महल रहे\nखुली आखों से दीदार हो जाए उनका\nचाहत की महफ़िल सजे कोई गजल कहे ।।'
    ,'\nएक दर्द सा उठा दिल में\nपलकों में आँसू आ गए हैं\nगुजरे हुए लम्हों की कसम\nउसकी याद बादल फिर छ गए ।'
    ,'\nमुझे इश्क की जंजीर से कब आजाद करोगे\nमेरी चाहत अपने दिल में कब आबाद करोगे\nतेरे ही चर्चे हर दम  मेरी महफ़िल में हैं\nअय जाने दिल तुम मुझे कब याद करोगे ।।'
  ];

  static List li10=['\nअपनी सांसों में महकता पाया है तुझे,'
    ,'\nदिल की किताब में गुलाब उनका था,'
    ,'\nशान से हम तेरे दिल में रहेंगे,'
    ,'\nजब से देखा है तेरी आँखो मे झाँक कर,'
    ,'\nतू चाँद और मैं सितारा होता,'
    ,'\nतेरी आवाज़ से प्यार है हमें,'
    ,'\nएक बार उसने कहा था,'
    ,'\nहमारे आंसूं पोंछ कर वो मुस्कुराते हैं,'
    ,'\nवो न आए उनकी याद वफ़ा कर गई,'
    ,'\nतनहाई ले जाती है जहाँ तक याद तुम्हारी,'
    ,'\nन जाने क्या कशिश है,'
  ];

  static List li10p=['\nअपनी सांसों में महकता पाया है तुझे,\nहर खवाब मे बुलाया है तुझे,\nक्यू न करे याद तुझ को,\nजब खुदा ने हमारे लिए बनाया है तुझे........!!!'
    ,'\nदिल की किताब में गुलाब उनका था,\nरात की नींद में ख्वाब उनका था,\nकितना प्यार करते हो जब हमने पूछा,\nमर जायंगे तुम्हारे बिना ये जबाब उनका था......!!!'
    ,'\nशान से हम तेरे दिल में रहेंगे,\nतेरी मोहब्बत पे जान निसार करेंगे,\nदेख के जलेंगी हमे दुनिया सारी,\nइस कदर बे-पनाह तुझे प्यार करेंगे......!!!'
    ,'\nजब से देखा है तेरी आँखो मे झाँक कर,\nकोई भी आईना अच्छा नही लगता,\nतेरी मोहब्बत मे ऐसे हुए है दीवाने,\nतुम्हे कोई और देखे तो अच्छा नही लगता........!!!'
    ,'\nतू चाँद और मैं सितारा होता,\nआसमान में एक आशियाना हमारा होता,\nलोग तुम्हे दूर से देखते,\nनज़दीक़ से देखने का हक़ बस हमारा होता......!!!'
    ,'\nतेरी आवाज़ से प्यार है हमें,\nइतना इज़हार हम कर नहीं सकते,\nहमारे लिए तू उस खुदा की तरह है,\nजिसका दीदार हम कर नहीं सकते….....!!!'
    ,'\nएक बार उसने कहा था,\nमेरे सिवा किसी से प्यार ना करना,\nबस फिर क्या था,\nतबसे मोहब्बत की नजर से हमने खुद को भी नहीं देखा.....!!!'
    ,'\nहमारे आंसूं पोंछ कर वो मुस्कुराते हैं,\nउनकी इस अदा से वो दिल को चुराते हैं,\nहाथ उनका छू जाये हमारे चेहरे को,\nइसी उम्मीद में हम खुद को रुलाते हैं.......!!!'
    ,'\nवो न आए उनकी याद वफ़ा कर गई,\nउनसे मिलने की चाह सुकून तबाह कर गई,\nआहट दरवाज़े की हुई तो उठकर देखा,\nमज़ाक हमसे हवा कर गई....!!!'
    ,'\n ले जाती है जहाँ तक याद तुम्हारी,\nवही से शुरू होती है जिंदगी हमारी,\nनहीं सोचा था हम चाहेंगे तुम्हें इस कदर,\nपर अब तो बन गए हो तुम किसमत हमारी.....!!!'
    ,'\nन जाने क्या कशिश है,\nउनकी मदहोश आँखों में,\nनज़र अंदाज़ जितना करो,\nनज़र उन्हीं पे ही पड़ती है…....!!!'
  ];

  static List li11=['\nबुलंदी देर तक किस शख़्स के हिस्से में रहती है'
    ,'\nकल सियासत में भी मोहब्बत थी'
    ,'\nएक आँसू भी हुकूमत के लिए ख़तरा है'
    ,'\nकाँटों से गुज़र जाता हूँ दामन को बचा कर'
    ,'\nदिन एक सितम एक सितम रात करो हो'
    ,'\nऔरों के ख़यालात की लेते हैं तलाशी'
    ,'\nतूफ़ान में हो नाव तो कुछ सब्र भी आ जाए'
    ,'\nइस बार हूँ दुश्मन की रसाई से बहुत दूर'
    ,'\nमिरे जुनूँ का नतीजा ज़रूर निकलेगा'
    ,'\nधुआँ जो कुछ घरों से उठ रहा है'
  ];

  static List li11p=['\nबुलंदी देर तक किस शख़्स के हिस्से में रहती है\nबहुत ऊँची इमारत हर घड़ी खतरे में रहती है'
    ,'\nकल सियासत में भी मोहब्बत थी\nअब मोहब्बत में भी सियासत है'
    ,'\nएक आँसू भी हुकूमत के लिए ख़तरा है \nतुम ने देखा नहीं आँखों का समुंदर होना'
    ,'\nकाँटों से गुज़र जाता हूँ दामन को बचा कर \nफूलों की सियासत से मैं बेगाना नहीं हूँ '
    ,'\nदिन एक सितम एक सितम रात करो हो \nवो दोस्त हो दुश्मन को भी तुम मात करो हो '
    ,'\nऔरों के ख़यालात की लेते हैं तलाशी \nऔर अपने गरेबान में झाँका नहीं जाता '
    ,'\nतूफ़ान में हो नाव तो कुछ सब्र भी आ जाए \nसाहिल पे खड़े हो के तो डूबा नहीं जाता '
    ,'\nइस बार हूँ दुश्मन की रसाई से बहुत दूर \nइस बार मगर ज़ख़्म लगाएगा कोई और '
    ,'\nमिरे जुनूँ का नतीजा ज़रूर निकलेगा \nइसी सियाह समुंदर से नूर निकलेगा'
    ,'\nधुआँ जो कुछ घरों से उठ रहा है \nन पूरे शहर पर छाए तो कहना '
  ];

  static List li12=['\nहोती नहीं है मोहब्बत सूरत से,'
    ,'\nसब ने चाहा कि उसे हम ना मिलें,'
    ,'\nखुशबू बनकर तेरी साँसों में शमा जायेंगे,'
    ,'\nचाहत हुई किसी से तो फिर बेइन्तेहाँ हुई,'
    ,'\nइश्क़ तो बस मुक़द्दर है कोई ख्वाब नहीं,'
    ,'\nशराब तो यूँ ही बदनाम है।'
    ,'\nमेरा हर लम्हा चुराया आपने,'
    ,'\nरात को रात का तोफा नहीं देते,'
    ,'\nकल हलकी सी बरसात में हो गयी मुलाक़ात उनसे,'
    ,'\nसंभाले नहीं संभलता है दिल,'
  ];

  static List li12p=['\nहोती नहीं है मोहब्बत सूरत से,\nमोहब्बत तो दिल से होती है,\nसूरत उनकी खुद-ब-खुद लगती है प्यारी,\nकदर जिनकी दिल में होती है'
    ,'\nसब ने चाहा कि उसे हम ना मिलें,\nहम ने चाहा उसे गम ना मिलें,\nअगर ख़ुशी मिलती है उसे हम से जुदा होकर,\nतो दुआ है ख़ुदा से कि उसे कभी हम ना मिलें'
    ,'\nखुशबू बनकर तेरी साँसों में शमा जायेंगे,\nसुकून बनकर तेरे दिल में उतर जायेंगे,\nमहसूस करने की कोशिश तो कीजिये एक बार,\nदूर रहते हुए भी पास नजर आएंगे'
    ,'\nचाहत हुई किसी से तो फिर बेइन्तेहाँ हुई,\nचाहा तो चाहतों की हद से गुजर गए,\nहमने खुदा से कुछ भी न माँगा मगर उसे,\nमाँगा तो सिसकियों की भी हद से गुजर गये'
    ,'\nइश्क़ तो बस मुक़द्दर है कोई ख्वाब नहीं,\nये वो मंज़िल है जिस में सब कामयाब नहीं,\nजिन्हें साथ मिला उन्हें उँगलियों पर गिन लो,\nजिन्हें मिली जुदाई उनका कोई हिसाब नहीं'
    ,'\nशराब तो यूँ ही बदनाम है।\nहमने तो मोहब्बत के नशे में,\nलोगों को मरते हुए देखा है'
    ,'\nमेरा हर लम्हा चुराया आपने,\nआँखों को एक ख्वाब देखाया आपने,\nहमें ज़िंदगी दी किसी और ने,\nपर प्यार में जीना सिखाया आपने'
    ,'\nरात को रात का तोफा नहीं देते, \nदिल को जजबात का तोफा नहीं देते, \nदेने को तो हम आप को चाँद भी दे दे, \nमगर चाँद को चाँद का तोफा नहीं देते'
    ,'\nकल हलकी सी बरसात में हो गयी मुलाक़ात उनसे, \nनज़रों की शबनम ने जैसे कर ली हो हर बात उनसे, \nउनकी आँखों में थी ऐसी कशिश के क्या कहें, \nमेरे जिस्म के रोम रोम ने कर ली मोहब्बत उनसे'
    ,'\nसंभाले नहीं संभलता है दिल,\nमोहब्बत की तपिश से न जला,\nइश्क तलबगार है तेरा चला आ,\nअब ज़माने का बहाना न बना'
  ];

  static List li13=['\nवो पल कभी भूलाए नहीं जाते,'
    ,'\nमोत का भी इलाज हो शायद,'
    ,'\nसोचा ही नहीं की,'
    ,'\nचलो मान लिया,'
    ,'\nतुम पूछो और में बताऊ,'
    ,'\nकभी मौका मिले तो,'
    ,'\nहम भी फूलों की तरह कितने बेबस है है'
    ,'\nदूसरों को खुश रखने की कोशिश में'
    ,'\nहोठों की हँसी को न समझ हक़ीकत ऐ जिंदगी'
    ,'\nकोई शिकवा नहीं जिंदगी से की तुम मेरे साथ नहीं'
  ];

  static List li13p=['\nवो पल कभी भूलाए नहीं जाते,\nजिसमे वक्त कम और लम्हे जयदा हो'
    ,'\nमोत का भी इलाज हो शायद,\nजिंदगी का इलाज नहीं'
    ,'\nसोचा ही नहीं की,\nजिंदगी में कभी ऐसे भी फ़साने होंगे,\nरोना भी जरुरी होगा,\nऔर आंसू भी छुपाने होंगे'
    ,'\nचलो मान लिया,\nमुझे मोहब्बत करनी नहीं आती,\nलेकिन जरा ये तो बताओ,\nतुम्हे दिल तोडना किसने सिखाया'
    ,'\nतुम पूछो और में बताऊ,\nऐसे तो हालात नहीं,\nएक जरा सा दिल टुटा है,\nऔर तो कोई बात नहीं'
    ,'\nकभी मौका मिले तो,\nहम किस्मत से जरूर शिकायत करेंगे,\nक्यों छोड़ जाते है वो लोग,\nजिन्हे हम टूट कर चाहते है'
    ,'\nहम भी फूलों की तरह कितने बेबस है है\nकिस्मत से टूट जाते है कभी लोग तोड़ जाते है'
    ,'\nदूसरों को खुश रखने की कोशिश में \nअक्सर कम खुद को उदास कर लेते है'
    ,'\nहोठों की हँसी को न समझ हक़ीकत ऐ जिंदगी \nदिल में उतर के देख कितने टूटे हुए है हम'
    ,'\nकोई शिकवा नहीं जिंदगी से की तुम मेरे साथ नहीं \nबस खुश रहो तुम सदा मेरी कोई बात नहीं'
  ];

  static List li14=['\nजिन्दगी चैन से गुजर जाए,'
    ,'\nतू डालता जा साकी शराब मेरे प्यालों में,'
    ,'\nयार की महफिल में हम जाकर उलझ गए,'
    ,'\nएक आदमी था उसने दारू पीना बंद कर दिया,'
    ,'\nहोठों पर शायरी, और हाथो में जाम है,'
    ,'\nवैसे तो ग्लास मेरा बहुत छोटा है,'
    ,'\nसब खफा है मेरे लहजे से,'
    ,'\nलोगो के दोस्त विदेश जा रहे हैं,'
    ,'\nनशा तब दुगना होता है जनाब,'
    ,'\nहमदर्द बनके आया था,'
  ];

  static List li14p=['\nजिन्दगी चैन से गुजर जाए,\nवो अगर जहन से उतर जाए..!!!'
    ,'\nतू डालता जा साकी शराब मेरे प्यालों में,\nवो फिर से आने लगी है मेरे ख्यालों में..!!!'
    ,'\nयार की महफिल में हम जाकर उलझ गए,\nपी लेते तो ईमान जाता, ना पीते तो यार जाता…!'
    ,'\nएक आदमी था उसने दारू पीना बंद कर दिया,\nउसने लीवर को तो बचा लिया !\nपरंतु दोस्त एक भी नही बचा…!'
    ,'\nहोठों पर शायरी, और हाथो में जाम है,\nतुम अपनी फिक्र करो यारो, हम तो पहले से बदनाम है..!!!'
    ,'\nवैसे तो ग्लास मेरा बहुत छोटा है,\nपर ना जाने कितनी बोतलों का कातिल है..!!!'
    ,'\nसब खफा है मेरे लहजे से,\nमेरे हाल से वाकिफ कोई नही..!!!'
    ,'\nलोगो के दोस्त विदेश जा रहे हैं,\nमेरे तो ठेके से आगे ही नहीं बढ़ रहे..!!!'
    ,'\nनशा तब दुगना होता है जनाब,\nजब जाम भी छलके और आंख से आसू भी..!!!'
    ,'\nहमदर्द बनके आया था,\nदर्द बनके रह गया..!!!'
  ];

  static List li15=['\nहम इश्क़ में वफ़ा करते करते बेहाल हो गए,'
    ,'\nजब आपको बिना गलती के सजा मिले,'
    ,'\nमोहब्बत में ऐसा क्यों होता है,'
    ,'\nसब कुछ होते हुए भी इस दिल का दर्द नहीं जाता,'
    ,'\nदुनिया वालों का भी अजीब दस्तूर है बेवफाई मेहबूब से मिलती है ,'
    ,'\nजिससे हमने Bewafai पायी,'
    ,'\nमुझे बेवफाई नहीं चाइये थी,'
    ,'\nएक वो दौर था, एक ये दौर है।'
    ,'\nअभी पास है तो ठोकर मारकर bewafa बना देते हो,'
    ,'\nकितनी भी Care कर लो,'
  ];

  static List li15p=['\nहम इश्क़ में वफ़ा करते करते बेहाल हो गए,\nऔर वो बेवफाई करके भी खुशहाल हो गए।'
    ,'\nजब आपको बिना गलती के सजा मिले,\nतो उसे Bewafai कहा जाता है।'
    ,'\nमोहब्बत में ऐसा क्यों होता है,\nबेवफाई में वो रोते हैं और वफ़ा में हम रोए हैं।'
    ,'\nसब कुछ होते हुए भी इस दिल का दर्द नहीं जाता,\nक्यूंकि किस्मत ने हमें Bewafai बना दिया।'
    ,'\nदुनिया वालों का भी अजीब दस्तूर है बेवफाई मेहबूब से मिलती है ,\nऔर बेवफा मोहब्बत बन जाती है।'
    ,'\nजिससे हमने Bewafai पायी,\nवो हमसे वफ़ा की उम्मीद करते हैं,\nदिल पर जख़्म देके,\nनिशान शरीर पर ढूंढ़ते हैं।'
    ,'\nमुझे बेवफाई नहीं चाइये थी,\nमुझे धोका नहीं चाइये था,\nमुझे तो बस थोड़ा सा प्यार चाइये था!!\nएक दौर था वो हर वक़्त मेरी फ़िक्र करने वाली ,\nहर समय मेरे बारे मैं सोचने वाली कहाँ चली गई,\nवफ़ा करने वाली,\nbewafai करके चली गयी !'
    ,'\nएक वो दौर था, एक ये दौर है।\nकितना कुछ अब बदल गया है,\nबेफ़िक्री भी अब सँभल गया है,\nसूनी पड़ी हैं बरगद की शाखें,\nबचपन वो अब निकल गया है,\nभूलकर वो मासूम ऊधम अब,\nजीवन आपही बन गई दौड़ है,\nएक वो दौर था, एक ये दौर है।'
    ,'\nअभी पास है तो ठोकर मारकर bewafa बना देते हो,\nजब दूर हो जाएंगे,तो प्यार जाताओगे!'
    ,'\nकितनी भी Care कर लो,\nBewafai करने वाले बेवफा बन ही जाए हैं !'
  ];

  static List li16=['\nजन्मदिन की बहुत-बहुत शुभकामनाएं!'
    ,'\nआपकी हंसी से रोशन है मेरा जीवन,'
    ,'\nआपकी हंसी से रोशन है मेरा जीवन,'
    ,'\nआपके बिना मेरा हर दिन अधूरा है,'
    ,'\nआपकी मुस्कान से सजी है मेरी दुनिया,'
    ,'\nआप हैं मेरे दिल का सुकून,'
    ,'\nआपके बिना मेरा दिल खाली-खाली है, '
    ,'\nआप हैं मेरे जीवन की सबसे प्यारी कहानी,'
    ,'\nआपके साथ ही मेरी खुशियों का कारवां है, '
    ,'\nआपके बिना मेरा जीवन अधूरा है, '
  ];

  static List li16p=['\nजन्मदिन की बहुत-बहुत शुभकामनाएं!\nआपके जीवन में खुशियाँ और सफलताएँ हमेशा बनी रहे।\nआज आपके दिन में ढेर सारी खुशियाँ और हँसी हो,\nजन्मदिन मुबारक हो!'
    ,'\nआपकी हंसी से रोशन है मेरा जीवन, \nआपके बिना सब कुछ लगता है वीरान।\nजन्मदिन मुबारक हो,\nआपके साथ ही मेरा जीवन है स्वर्णिम।'
    ,'\nआपकी हंसी से रोशन है मेरा जीवन, \nआपके बिना सब कुछ लगता है वीरान।\nजन्मदिन मुबारक हो,\nआपके साथ ही मेरा जीवन है स्वर्णिम।'
    ,'\nआपके बिना मेरा हर दिन अधूरा है,\nआप ही मेरे जीवन का सबसे प्यारा है। \nजन्मदिन की बहुत-बहुत बधाई हो, \nआपके साथ हर दिन लगता है मस्ती का जुनून।'
    ,'\nआपकी मुस्कान से सजी है मेरी दुनिया,\nआपके बिना सब कुछ है अधूरा-अधूरा।\nजन्मदिन मुबारक हो, मेरे प्रिय साथी,\nआपका साथ हो तो हर पल है सुनहरा।'
    ,'\nआप हैं मेरे दिल का सुकून,\nआपके बिना सब कुछ लगता है जूनून।\nजन्मदिन की हार्दिक शुभकामनाएं,\nआपका साथ हो तो हर दिन है रूमानी।'
    ,'\nआपके बिना मेरा दिल खाली-खाली है,\nआपके साथ ही मेरी दुनिया रंगीन है।\nजन्मदिन की बधाई हो,मेरे प्रिय साथी\nआपका साथ हो तो हर दिन है शानदार और हसीन।'
    ,'\nआप हैं मेरे जीवन की सबसे प्यारी कहानी,\nआपके बिना सब कुछ लगता है सुनी-सुनी।\nजन्मदिन की शुभकामनाएं,मेरे प्रिय साथी,\nआपका साथ हो तो हर लम्हा है दिलकश और जवान।'
    ,'\nआपके साथ ही मेरी खुशियों का कारवां है,\nआपके बिना सब कुछ लगता है बेज़ुबान।\nजन्मदिन की शुभकामनाएं, मेरे प्रिय साथी,\nआपका साथ हो तो हर पल है सुहाना।'
    ,'\nआपके बिना मेरा जीवन अधूरा है,\nआपके साथ ही मेरी दुनिया पूरी है।\nजन्मदिन मुबारक हो,मेरे प्रिय साथी,\nआपका साथ हो तो हर दिन है खुशियों से भरा।'
  ];

  static List li17=['\nइश्क की होलिया खेलनी छोड़ दी है हमने,'
    ,'\nइन रंगो से भी सुन्दर हो ज़िन्दगी आपकी,'
    ,'\nलाल हो या पीला,'
    ,'\nकाश हमारी बेरंग ज़िन्दगी में भी रंगो की बहार होती'
    ,'\nपिचकारी की धार, गुलाल की बौछार,'
    ,'\nअच्छा हुआ जो गुजर गया फरवरी महिना'
    ,'\nफाल्गुन की बहार,'
    ,'\nहोली के खूबसूरत रंगों की तरह'
    ,'\nकामना है कि फागुन का ये रंगीन उत्सव'
    ,'\nरूठा है कोई तो आज उसे मनाओ,'
  ];

  static List li17p=['\nइश्क की होलिया खेलनी छोड़ दी है हमने,\n वरना हर चेहरे पे रंग सिर्फ हमारा होता।'
    ,'\nइन रंगो से भी सुन्दर हो ज़िन्दगी आपकी,\nहमेशा महकती रहे यही दुआ हैं हमारी,\nकभी न बिगड़ पाए ये रिश्तो के प्यार की होली\nए-मेरे यार आप सबको मुबारक हो ये होली।'
    ,'\nलाल हो या पीला,\nहरा हो या नीला, \nसुखा हो या गिला,\nएक बार रंग लग जाये तो हो जाये रंगीला।'
    ,'\nकाश हमारी बेरंग ज़िन्दगी में भी रंगो की बहार होती\nकाश होली के रंगो से ज्यादा जिंदगी रंगीन होती।'
    ,'\nपिचकारी की धार, गुलाल की बौछार,\nअपनों का प्यार, यही है यारों होली का त्यौहार।'
    ,'\nअच्छा हुआ जो गुजर गया फरवरी महिना\nये अंग्रेजी मोहब्बत का महिना था साहब\nराधा कृष्ण का प्रेम तो अब चढ़ेगा,\nरसिया पर फागुन का रंग जब चढ़ेगा\nहोली की बधाई!'
    ,'\nफाल्गुन की बहार,\nचली पिचकारी उड़ा है गुलाल,\nरंग बरसे नीले हरे लाल,\nमुबारक हो आपको होली का त्यौहार\nहोली की हार्दिक शुभकामनाएं।'
    ,'\nहोली के खूबसूरत रंगों की तरह\nआपको और आपके पूरे परिवार को\nहमारी तरफ से बहुत बहुत रंगों और भरी उमंगो भरी शुभकामनाएं\nहोली की शुभकामनाएं !'
    ,'\nकामना है कि फागुन का ये रंगीन उत्सव\nआपके जीवन में ढेर सारी खुशियां लाएं\nहोली की हार्दिक शुभकामनाएं।'
    ,'\nरूठा है कोई तो आज उसे मनाओ,\nआज तो सारी गलती भूल जाओ\nलगा दो आज दोस्ती का रंग सबको यारों,\nआज होली मनाओ तो ऐसी मनाओ.\nहोली की हार्दिक शुभकामनाएं!'
  ];

  static int cnt=0;
  static int cnt2=0;
  static int total=0;
  static int counter=0;
  static List licolor1=[LinearGradient(colors: [Colors.pinkAccent,Colors.purpleAccent,Colors.pinkAccent])
    ,LinearGradient(colors: [Colors.red,Colors.green])
    ,LinearGradient(colors: [Colors.yellow,Colors.green])
    ,LinearGradient(colors: [Colors.amber,Colors.purpleAccent])
    ,LinearGradient(colors: [Colors.limeAccent,Colors.pink])
    ,LinearGradient(colors: [Colors.deepPurpleAccent,Colors.deepOrange])
    ,LinearGradient(colors: [Colors.amberAccent,Colors.deepPurple])
    ,LinearGradient(colors: [Colors.blue,Colors.orange])
    ,LinearGradient(colors: [Colors.yellowAccent,Colors.orangeAccent])
    ,LinearGradient(colors: [Colors.limeAccent,Colors.pink])
    ,LinearGradient(colors: [Colors.lightBlue,Colors.purple])
    ,LinearGradient(colors: [Colors.redAccent,Colors.lightGreenAccent])
    ,LinearGradient(colors: [Colors.greenAccent,Colors.red])
    ,LinearGradient(colors: [Colors.yellow,Colors.white,Colors.red])
    ,LinearGradient(colors: [Colors.white,Colors.lightBlueAccent,Colors.yellow,Colors.white])
    ,LinearGradient(colors: [Colors.black38,Colors.brown])
    ,LinearGradient(colors: [Colors.green,Colors.white,Colors.grey])
    ,LinearGradient(colors: [Colors.teal,Colors.black26])
    ,LinearGradient(colors: [Colors.cyan,Colors.indigo])
    ,LinearGradient(colors: [Colors.pinkAccent,Colors.white,Colors.pink])
  ];
  static List licolor2=[
    Colors.pink,
    Colors.black,
    Colors.white,
    Colors.green,
    Colors.brown,
    Colors.teal,
    Colors.tealAccent,
    Colors.black45,
    Colors.greenAccent,
    Colors.yellowAccent,
    Colors.yellow,
    Colors.red,
    Colors.deepPurpleAccent,
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.amber,
    Colors.amberAccent,
    Colors.orange,
    Colors.blue,
    Colors.pinkAccent,
    Colors.black87,
    Colors.black12,
    Colors.lightBlue,
    Colors.lightBlueAccent,
    Colors.purple,
    Colors.purpleAccent,
    Colors.grey,
    Colors.limeAccent,
    Colors.lime,
    Colors.lightGreenAccent,
    Colors.lightGreen,
    Colors.indigoAccent,
    Colors.cyan
  ];
  static int edit=0;
  static int e=0,f=0;
  static int edit1=0;
  static List lir=[];
  static Random random=new Random();
  static int indexofcolor=0,index=0;
  static int r=0;
  static int index1=0,index2=0,index3=0,index4=0,index5=0,index6=0,index7=0,index8=0,index9=0,index10=0,index11=0,index12=0,index13=0,index14=0,index15=0,index16=0,index17=0,index18=0,index19=0,index20=0;
  static void rndm(){
    for(int i=1;i<=20;i++){
      do{
        r=random.nextInt(20);
        if(!lir.contains(r))
        {
          lir.add(r);
          break;
        }
      }while(true);
    }
    index1=lir[0];
    index2=lir[1];
    index3=lir[2];
    index4=lir[3];
    index5=lir[4];
    index6=lir[5];
    index7=lir[6];
    index8=lir[7];
    index9=lir[8];
    index10=lir[9];
    index11=lir[10];
    index12=lir[11];
    index13=lir[12];
    index14=lir[13];
    index15=lir[14];
    index16=lir[15];
    index17=lir[16];
    index18=lir[17];
    index19=lir[18];
    index20=lir[19];
  }

  static List fontar=[
    'f1','f2','f3','f4','f5','f6'
  ];
  static List emoj=[
    '😎☺️😍😘😊🍀🌷',
    '😀😄😁😆😅😂🤣',
    '🥳🙂‍↕️😏😒🙂‍↔️😞😶',
    '😺😸😹😼😻😽🙀',
    '❤️🩷🧡💛💚💙🩵',
    '💜🖤🩶🤍🤎❤️‍🔥❤️‍🩹',
    '💔❣️💕💞💓💗💖',
    '💘💝🔴🟠🟡🟢🔵',
    '😈👿👹👺😡🤬🤡',
    '🫶🙌👐🤲🤝✍️💪',
    '🍏🍎🍐🍊🍋🍋‍🟩🍌',
    '🍉🍇🍓🫐🍈🍒🍑',
    '🥐🥯🍞🥖🥨🧀🥚',
    '🍔🍟🍕🫓🥪🥙🧆',
    '🍬🍫🍿🍩🍪🌰🫙'
  ];
}
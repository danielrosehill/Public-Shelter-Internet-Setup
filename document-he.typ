#set text(font: "Open Sans", size: 11pt, dir: rtl, lang: "he")
#set page(margin: 2cm)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: none)

// Title block
#align(center)[
  #block(width: 100%, fill: rgb("#1a1a2e"), inset: 1.5em, radius: 8pt)[
    #set text(fill: white)
    #text(size: 24pt, weight: "bold")[אינטרנט למקלט ציבורי]
    #v(0.3em)
    #text(size: 12pt)[קישוריות אינטרנט ניידת למקלטים תת-קרקעיים בישראל]
  ]
]

#v(0.5em)

// Banner image
#align(center)[
  #image("images/graphics/banner.png", width: 85%)
]

#v(0.5em)

= הבעיה

כדי לעצור טילים ביעילות, מקלטים ציבוריים תת-קרקעיים בנויים מבטון רב. בטון לא אוהב גלי רדיו.

ל-30% מהישראלים אין מרחב מוגן (ממ"ד) בביתם. ישראל מסתמכת בעיקר על אפליקציית סמארטפון (פיקוד העורף) והתרעות חירום אלחוטיות (Cell Broadcast) כדי לשלוח התראות חיוניות לאלו השוהים במקלט.

לשתי שיטות ההתרעה הללו יש נקודת כשל אחת משותפת: *קישוריות אינטרנט*.

מקלטים ציבוריים רבים מוזנחים וחסרים לא רק קישוריות אלא גם שקעי חשמל. אנשים השוהים במקלט נאלצים לעיתים קרובות לנחש מתי ניתנה הרשאה רשמית לצאת על ידי פיקוד העורף. לצערנו, אנשים נוטים לצאת מהמקלט מוקדם מדי, ומסתכנים ברסיסים.

= איך זה עובד

#align(center)[
  #image("images/graphics/image.png", width: 80%)
  #text(size: 9pt, fill: gray)[_טופולוגיית הרשת: טלפון בכניסה למקלט, כבל אתרנט לנתב בפנים_]
]

#v(0.5em)

= פתרון אפשרי אחד

ערכה ניידת לתרמיל שמשתמשת בחיבור הסלולרי של טלפון אנדרואיד, משותפת דרך כבל אתרנט אל תוך המקלט, ומשודרת מחדש כ-Wi-Fi על ידי נתב נייד.

== רשימת חלקים

#block(inset: (right: 1em))[
  - טלפון אנדרואיד ישן (עם 5G)
  - נתב נייד GL.iNet
  - מתאם USB-C לאתרנט (עם מתאם USB-C ל-USB-A)
  - מטען נייד (פאוור בנק)
  - כבל אתרנט באורך 20 מטר
  - תיק נשיאה עם רוכסן
  - דבק סופר גלו
  - מתג USB (להפעלה/כיבוי הנתב בין שימושים)
  - אזיקוני סקוצ' / אזיקונים
]

== הערכה

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/emergency-router-case-closed.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_תיק נשיאה סגור ומסומן_]]
  ],
  [
    #image("images/photos/kit-in-case-open.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_התיק פתוח עם נתב ומטען נייד_]]
  ],
  [
    #image("images/photos/kit-with-ethernet-cable.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_ערכה מלאה עם כבל אתרנט 20 מ'_]]
  ],
  [
    #image("images/photos/kit-packed-in-backpack.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_הכל נכנס לתרמיל_]]
  ],
)

= הגדרה

== הגדרת הטלפון

+ חברו את מתאם ה-USB-C לאתרנט לטלפון
+ היכנסו ל-*הגדרות > חיבורים > אתרנט* והפעילו
+ הגדירו סוג חיבור ל-*DHCP*
+ הפעילו *שיתוף אתרנט* (הגדרות > נקודה חמה וקשירה)
+ *בטלו נקודה חמה Wi-Fi* — שימרו את כל רוחב הפס לחיבור הקווי

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/ethernet-tethering-settings.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_הפעלת שיתוף אתרנט_]]
  ],
  [
    #image("images/photos/ethernet-config-dhcp.jpg", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_אתרנט עם DHCP על eth0_]]
  ],
)

== הגדרה פיזית

+ מקמו את הטלפון ליד ראש גרם המדרגות של המקלט (קליטה סלולרית מיטבית)
+ חברו את הטלפון למתאם האתרנט, הריצו את הכבל במורד גרם המדרגות
+ חברו את כבל האתרנט ליציאת WAN בנתב GL.iNet
+ הנתב משדר רשת Wi-Fi בתוך המקלט

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/photos/image copy 2.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_נתב פרוס בכניסה למקלט_]]
  ],
  [
    #image("images/photos/image copy 3.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_נתב GL.iNet על מטען נייד_]]
  ],
)

== הנחת כבל האתרנט

אתם לא הולכים להריץ כבל אתרנט במצב חירום. וגם לא רוצים ליצור מכשול מעידה. הגדירו את זה *בין אזעקות*.

- אבטחו את כבל האתרנט לאורך המדרגות/מעקות כך שלא יפריע למעבר
- לתיק הנשיאה יש מחבר אתרנט זכר-נקבה בחלק החיצוני — חברו את הנתב בעת הצורך
- אם משתמשים באנדרואיד ישן שאתם מוכנים שייגנב: מחקו את המכשיר מראש, הגדירו אותו ללא אפליקציות/נתונים, והשאירו במקום לא בולט

= בזמן אזעקה

#block(fill: rgb("#fff3cd"), inset: 1em, radius: 6pt, width: 100%)[
  #set text(size: 11pt)
  + קחו את התרמיל עם ערכת האינטרנט
  + חברו את כבל האתרנט למחבר שבתיק
  + הפעילו את המטען הנייד (שמרו אותו טעון בין שימושים, כבו אחרי)
  + הנתב משדר Wi-Fi בתוך המקלט
  + כשממקמים מול דלת המקלט, האות בדרך כלל מתפשט פנימה
]

= הרחבת הכיסוי

ניתן להרחיב את הכיסוי משמעותית על ידי הוספת נתבי GL.iNet נוספים במצב *משחזר* (Repeater):

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #image("images/graphics/image copy.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_רשת mesh עם צומת ממסר_]]
  ],
  [
    #image("images/graphics/image copy 2.png", width: 100%)
    #align(center)[#text(size: 9pt, fill: gray)[_טופולוגיית mesh מפורטת_]]
  ],
)

- כל משחזר צריך חשמל (מטען נייד מספיק; דגמים מתקדמים צריכים כבל PD-to-DC)
- בטלו מעבר אוטומטי בין רשתות בכל הצמתים
- הסתירו את ה-SSID בצומת הראשון (הטלפון) למניעת חיבורים מקריים
- בטלו 5 GHz לחיסכון באנרגיה
- השתמשו בערוץ Wi-Fi קבוע שנקבע ידנית להבטחת שידור אמין בין הצמתים

= טיפים לבנייה

- השתמשו בסופר גלו לחבר את המטען הנייד והנתב יחד — לומדים מהר כשרצים בין מקלטים שרוצים שהכל יהיה מאובטח בלי חלקים זזים
- מתג USB מאפשר הפעלה/כיבוי של הנתב בלי לנתק דבר
- אזיקוני סקוצ' שומרים על הכבלים מסודרים בתוך התיק

#v(1em)
#align(center)[
  #image("images/photos/image copy.png", width: 60%)
  #text(size: 9pt, fill: gray)[_תיק הנתב לחירום, מוכן לדרך_]
]

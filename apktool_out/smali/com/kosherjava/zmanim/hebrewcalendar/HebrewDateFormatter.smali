.class public Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;
.super Ljava/lang/Object;
.source "HebrewDateFormatter.java"


# static fields
.field private static final GERESH:Ljava/lang/String; = "\u05f3"

.field private static final GERSHAYIM:Ljava/lang/String; = "\u05f4"

.field private static final hebrewDaysOfWeek:[Ljava/lang/String;

.field private static final hebrewMonths:[Ljava/lang/String;


# instance fields
.field private hebrewFormat:Z

.field private final hebrewHolidays:[Ljava/lang/String;

.field private hebrewOmerPrefix:Ljava/lang/String;

.field private hebrewParshaMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private longWeekFormat:Z

.field private transliteratedHolidays:[Ljava/lang/String;

.field private transliteratedMonths:[Ljava/lang/String;

.field private transliteratedParshaMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transliteratedShabbosDayOfweek:Ljava/lang/String;

.field private useFinalFormLetters:Z

.field private useGershGershayim:Z

.field private useLonghebrewYears:Z

.field private weekFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 613
    const-string v12, "\u05d0\u05d3\u05e8 \u05d1"

    const-string v13, "\u05d0\u05d3\u05e8 \u05d0"

    const-string v0, "\u05e0\u05d9\u05e1\u05df"

    const-string v1, "\u05d0\u05d9\u05d9\u05e8"

    const-string v2, "\u05e1\u05d9\u05d5\u05df"

    const-string v3, "\u05ea\u05de\u05d5\u05d6"

    const-string v4, "\u05d0\u05d1"

    const-string v5, "\u05d0\u05dc\u05d5\u05dc"

    const-string v6, "\u05ea\u05e9\u05e8\u05d9"

    const-string v7, "\u05d7\u05e9\u05d5\u05df"

    const-string v8, "\u05db\u05e1\u05dc\u05d5"

    const-string v9, "\u05d8\u05d1\u05ea"

    const-string v10, "\u05e9\u05d1\u05d8"

    const-string v11, "\u05d0\u05d3\u05e8"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    .line 624
    const-string v6, "\u05e9\u05e9\u05d9"

    const-string v7, "\u05e9\u05d1\u05ea"

    const-string v1, "\u05e8\u05d0\u05e9\u05d5\u05df"

    const-string v2, "\u05e9\u05e0\u05d9"

    const-string v3, "\u05e9\u05dc\u05d9\u05e9\u05d9"

    const-string v4, "\u05e8\u05d1\u05d9\u05e2\u05d9"

    const-string v5, "\u05d7\u05de\u05d9\u05e9\u05d9"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewDaysOfWeek:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 38

    .line 124
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    .line 52
    iput-boolean v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    .line 57
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    .line 62
    iput-boolean v2, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    .line 67
    iput-boolean v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useFinalFormLetters:Z

    .line 72
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->weekFormat:Ljava/text/SimpleDateFormat;

    .line 320
    const-string v14, "Adar II"

    const-string v15, "Adar I"

    const-string v2, "Nissan"

    const-string v3, "Iyar"

    const-string v4, "Sivan"

    const-string v5, "Tammuz"

    const-string v6, "Av"

    const-string v7, "Elul"

    const-string v8, "Tishrei"

    const-string v9, "Cheshvan"

    const-string v10, "Kislev"

    const-string v11, "Teves"

    const-string v12, "Shevat"

    const-string v13, "Adar"

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    .line 329
    const-string v1, "\u05d1"

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    .line 336
    const-string v1, "Shabbos"

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedShabbosDayOfweek:Ljava/lang/String;

    .line 367
    const-string v36, "Shushan Purim Katan"

    const-string v37, "Isru Chag"

    const-string v2, "Erev Pesach"

    const-string v3, "Pesach"

    const-string v4, "Chol Hamoed Pesach"

    const-string v5, "Pesach Sheni"

    const-string v6, "Erev Shavuos"

    const-string v7, "Shavuos"

    const-string v8, "Seventeenth of Tammuz"

    const-string v9, "Tishah B\'Av"

    const-string v10, "Tu B\'Av"

    const-string v11, "Erev Rosh Hashana"

    const-string v12, "Rosh Hashana"

    const-string v13, "Fast of Gedalyah"

    const-string v14, "Erev Yom Kippur"

    const-string v15, "Yom Kippur"

    const-string v16, "Erev Succos"

    const-string v17, "Succos"

    const-string v18, "Chol Hamoed Succos"

    const-string v19, "Hoshana Rabbah"

    const-string v20, "Shemini Atzeres"

    const-string v21, "Simchas Torah"

    const-string v22, "Erev Chanukah"

    const-string v23, "Chanukah"

    const-string v24, "Tenth of Teves"

    const-string v25, "Tu B\'Shvat"

    const-string v26, "Fast of Esther"

    const-string v27, "Purim"

    const-string v28, "Shushan Purim"

    const-string v29, "Purim Katan"

    const-string v30, "Rosh Chodesh"

    const-string v31, "Yom HaShoah"

    const-string v32, "Yom Hazikaron"

    const-string v33, "Yom Ha\'atzmaut"

    const-string v34, "Yom Yerushalayim"

    const-string v35, "Lag B\'Omer"

    filled-new-array/range {v2 .. v37}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    .line 442
    const-string v36, "\u05e4\u05d5\u05e8\u05d9\u05dd \u05e9\u05d5\u05e9\u05df \u05e7\u05d8\u05df"

    const-string v37, "\u05d0\u05e1\u05e8\u05d5 \u05d7\u05d2"

    const-string v2, "\u05e2\u05e8\u05d1 \u05e4\u05e1\u05d7"

    const-string v3, "\u05e4\u05e1\u05d7"

    const-string v4, "\u05d7\u05d5\u05dc \u05d4\u05de\u05d5\u05e2\u05d3 \u05e4\u05e1\u05d7"

    const-string v5, "\u05e4\u05e1\u05d7 \u05e9\u05e0\u05d9"

    const-string v6, "\u05e2\u05e8\u05d1 \u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    const-string v7, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    const-string v8, "\u05e9\u05d1\u05e2\u05d4 \u05e2\u05e9\u05e8 \u05d1\u05ea\u05de\u05d5\u05d6"

    const-string v9, "\u05ea\u05e9\u05e2\u05d4 \u05d1\u05d0\u05d1"

    const-string v10, "\u05d8\u05f4\u05d5 \u05d1\u05d0\u05d1"

    const-string v11, "\u05e2\u05e8\u05d1 \u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    const-string v12, "\u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    const-string v13, "\u05e6\u05d5\u05dd \u05d2\u05d3\u05dc\u05d9\u05d4"

    const-string v14, "\u05e2\u05e8\u05d1 \u05d9\u05d5\u05dd \u05db\u05d9\u05e4\u05d5\u05e8"

    const-string v15, "\u05d9\u05d5\u05dd \u05db\u05d9\u05e4\u05d5\u05e8"

    const-string v16, "\u05e2\u05e8\u05d1 \u05e1\u05d5\u05db\u05d5\u05ea"

    const-string v17, "\u05e1\u05d5\u05db\u05d5\u05ea"

    const-string v18, "\u05d7\u05d5\u05dc \u05d4\u05de\u05d5\u05e2\u05d3 \u05e1\u05d5\u05db\u05d5\u05ea"

    const-string v19, "\u05d4\u05d5\u05e9\u05e2\u05e0\u05d0 \u05e8\u05d1\u05d4"

    const-string v20, "\u05e9\u05de\u05d9\u05e0\u05d9 \u05e2\u05e6\u05e8\u05ea"

    const-string v21, "\u05e9\u05de\u05d7\u05ea \u05ea\u05d5\u05e8\u05d4"

    const-string v22, "\u05e2\u05e8\u05d1 \u05d7\u05e0\u05d5\u05db\u05d4"

    const-string v23, "\u05d7\u05e0\u05d5\u05db\u05d4"

    const-string v24, "\u05e2\u05e9\u05e8\u05d4 \u05d1\u05d8\u05d1\u05ea"

    const-string v25, "\u05d8\u05f4\u05d5 \u05d1\u05e9\u05d1\u05d8"

    const-string v26, "\u05ea\u05e2\u05e0\u05d9\u05ea \u05d0\u05e1\u05ea\u05e8"

    const-string v27, "\u05e4\u05d5\u05e8\u05d9\u05dd"

    const-string v28, "\u05e4\u05d5\u05e8\u05d9\u05dd \u05e9\u05d5\u05e9\u05df"

    const-string v29, "\u05e4\u05d5\u05e8\u05d9\u05dd \u05e7\u05d8\u05df"

    const-string v30, "\u05e8\u05d0\u05e9 \u05d7\u05d5\u05d3\u05e9"

    const-string v31, "\u05d9\u05d5\u05dd \u05d4\u05e9\u05d5\u05d0\u05d4"

    const-string v32, "\u05d9\u05d5\u05dd \u05d4\u05d6\u05d9\u05db\u05e8\u05d5\u05df"

    const-string v33, "\u05d9\u05d5\u05dd \u05d4\u05e2\u05e6\u05de\u05d0\u05d5\u05ea"

    const-string v34, "\u05d9\u05d5\u05dd \u05d9\u05e8\u05d5\u05e9\u05dc\u05d9\u05dd"

    const-string v35, "\u05dc\u05f4\u05d2 \u05d1\u05e2\u05d5\u05de\u05e8"

    filled-new-array/range {v2 .. v37}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    .line 125
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    .line 126
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Bereshis"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Noach"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Lech Lecha"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayera"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Chayei Sara"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Toldos"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayetzei"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayishlach"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayeshev"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Miketz"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayigash"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayechi"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Shemos"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vaera"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Bo"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Beshalach"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Yisro"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Mishpatim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Terumah"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Tetzaveh"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Ki Sisa"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayakhel"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Pekudei"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayikra"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Tzav"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Shmini"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Tazria"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Metzora"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Achrei Mos"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Kedoshim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Emor"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Behar"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Bechukosai"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Bamidbar"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Nasso"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Beha\'aloscha"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Sh\'lach"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Korach"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Chukas"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Balak"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Pinchas"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Matos"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Masei"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Devarim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vaeschanan"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Eikev"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Re\'eh"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Shoftim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Ki Seitzei"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Ki Savo"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Nitzavim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayeilech"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Ha\'Azinu"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VZOS_HABERACHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vezos Habracha"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Vayakhel Pekudei"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Tazria Metzora"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Achrei Mos Kedoshim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Behar Bechukosai"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS_BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Chukas Balak"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Matos Masei"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Nitzavim Vayeilech"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHKALIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Shekalim"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ZACHOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Zachor"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Parah"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HACHODESH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Hachodesh"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHUVA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Shuva"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHIRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Shira"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAGADOL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Hagadol"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAZON:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Chazon"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NACHAMU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v4, "Nachamu"

    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    .line 199
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05e8\u05d0\u05e9\u05d9\u05ea"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e0\u05d7"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05dc\u05da \u05dc\u05da"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e8\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d7\u05d9\u05d9 \u05e9\u05e8\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05ea\u05d5\u05dc\u05d3\u05d5\u05ea"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e6\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e9\u05dc\u05d7"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e9\u05d1"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05de\u05e7\u05e5"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05d2\u05e9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05d7\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05de\u05d5\u05ea"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d0\u05e8\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05e9\u05dc\u05d7"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d9\u05ea\u05e8\u05d5"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05de\u05e9\u05e4\u05d8\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05ea\u05e8\u05d5\u05de\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05ea\u05e6\u05d5\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05db\u05d9 \u05ea\u05e9\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e7\u05d4\u05dc"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e4\u05e7\u05d5\u05d3\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e7\u05e8\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e6\u05d5"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05de\u05d9\u05e0\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05ea\u05d6\u05e8\u05d9\u05e2"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05de\u05e6\u05e8\u05e2"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d0\u05d7\u05e8\u05d9 \u05de\u05d5\u05ea"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e7\u05d3\u05d5\u05e9\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d0\u05de\u05d5\u05e8"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05d4\u05e8"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05d7\u05e7\u05ea\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05de\u05d3\u05d1\u05e8"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e0\u05e9\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05d4\u05e2\u05dc\u05ea\u05da"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05dc\u05d7 \u05dc\u05da"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e7\u05e8\u05d7"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d7\u05d5\u05e7\u05ea"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05dc\u05e7"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e4\u05d9\u05e0\u05d7\u05e1"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05de\u05d8\u05d5\u05ea"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05de\u05e1\u05e2\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d3\u05d1\u05e8\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d0\u05ea\u05d7\u05e0\u05df"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e2\u05e7\u05d1"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e8\u05d0\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05d5\u05e4\u05d8\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05db\u05d9 \u05ea\u05e6\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05db\u05d9 \u05ea\u05d1\u05d5\u05d0"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e0\u05e6\u05d1\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05dc\u05da"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d4\u05d0\u05d6\u05d9\u05e0\u05d5"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VZOS_HABERACHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d6\u05d0\u05ea \u05d4\u05d1\u05e8\u05db\u05d4 "

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d5\u05d9\u05e7\u05d4\u05dc \u05e4\u05e7\u05d5\u05d3\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05ea\u05d6\u05e8\u05d9\u05e2 \u05de\u05e6\u05e8\u05e2"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d0\u05d7\u05e8\u05d9 \u05de\u05d5\u05ea \u05e7\u05d3\u05d5\u05e9\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d1\u05d4\u05e8 \u05d1\u05d7\u05e7\u05ea\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS_BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d7\u05d5\u05e7\u05ea \u05d1\u05dc\u05e7"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05de\u05d8\u05d5\u05ea \u05de\u05e1\u05e2\u05d9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e0\u05e6\u05d1\u05d9\u05dd \u05d5\u05d9\u05dc\u05da"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHKALIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05e7\u05dc\u05d9\u05dd"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ZACHOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d6\u05db\u05d5\u05e8"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e4\u05e8\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HACHODESH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d4\u05d7\u05d3\u05e9"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHUVA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05d5\u05d1\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHIRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e9\u05d9\u05e8\u05d4"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAGADOL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d4\u05d2\u05d3\u05d5\u05dc"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAZON:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05d7\u05d6\u05d5\u05df"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NACHAMU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const-string v3, "\u05e0\u05d7\u05de\u05d5"

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method private static formatMolad(J)Ljava/lang/String;
    .locals 13
    .param p0, "moladChalakim"    # J

    .line 829
    move-wide v0, p0

    .line 830
    .local v0, "adjustedChalakim":J
    const/16 v2, 0x12

    .line 831
    .local v2, "MINUTE_CHALAKIM":I
    const/16 v3, 0x438

    .line 832
    .local v3, "HOUR_CHALAKIM":I
    mul-int/lit8 v4, v3, 0x18

    .line 834
    .local v4, "DAY_CHALAKIM":I
    int-to-long v5, v4

    div-long v5, v0, v5

    .line 835
    .local v5, "days":J
    int-to-long v7, v4

    mul-long v7, v7, v5

    sub-long/2addr v0, v7

    .line 836
    int-to-long v7, v3

    div-long v7, v0, v7

    long-to-int v8, v7

    .line 837
    .local v8, "hours":I
    const/4 v7, 0x6

    if-lt v8, v7, :cond_0

    .line 838
    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    .line 840
    :cond_0
    int-to-long v9, v8

    int-to-long v11, v3

    mul-long v9, v9, v11

    sub-long/2addr v0, v9

    .line 841
    int-to-long v9, v2

    div-long v9, v0, v9

    long-to-int v7, v9

    .line 842
    .local v7, "minutes":I
    int-to-long v9, v7

    int-to-long v11, v2

    mul-long v9, v9, v11

    sub-long/2addr v0, v9

    .line 843
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Day: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/16 v10, 0x7

    rem-long v10, v5, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " hours: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", minutes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", chalakim: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method public format(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;
    .locals 3
    .param p1, "jewishDate"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    .line 751
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isHebrewFormat()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 753
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    return-object v0

    .line 755
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDafYomiBavli(Lcom/kosherjava/zmanim/hebrewcalendar/Daf;)Ljava/lang/String;
    .locals 3
    .param p1, "daf"    # Lcom/kosherjava/zmanim/hebrewcalendar/Daf;

    .line 884
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getMasechta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getDaf()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 887
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getMasechtaTransliterated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getDaf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDafYomiYerushalmi(Lcom/kosherjava/zmanim/hebrewcalendar/Daf;)Ljava/lang/String;
    .locals 3
    .param p1, "daf"    # Lcom/kosherjava/zmanim/hebrewcalendar/Daf;

    .line 900
    if-nez p1, :cond_1

    .line 901
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    const/16 v1, 0x27

    if-eqz v0, :cond_0

    .line 902
    invoke-static {}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushlmiMasechtos()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0

    .line 904
    :cond_0
    invoke-static {}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushlmiMasechtosTransliterated()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    return-object v0

    .line 907
    :cond_1
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    const-string v1, " "

    if-eqz v0, :cond_2

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushalmiMasechta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getDaf()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 910
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushlmiMasechtaTransliterated()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getDaf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatDayOfWeek(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;
    .locals 3
    .param p1, "jewishDate"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    .line 639
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_2

    .line 640
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isLongWeekFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewDaysOfWeek:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 643
    :cond_0
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 644
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 646
    :cond_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 650
    :cond_2
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 651
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isLongWeekFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->getTransliteratedShabbosDayOfWeek()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 654
    :cond_3
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->getTransliteratedShabbosDayOfWeek()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 657
    :cond_4
    iget-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->weekFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatHebrewNumber(I)Ljava/lang/String;
    .locals 20
    .param p1, "number"    # I

    .line 938
    move/from16 v0, p1

    if-ltz v0, :cond_10

    .line 940
    const/16 v1, 0x270f

    if-gt v0, v1, :cond_f

    .line 944
    const-string v1, "\u05d0\u05dc\u05e4\u05d9\u05dd"

    .line 945
    .local v1, "ALAFIM":Ljava/lang/String;
    const-string v2, "\u05d0\u05e4\u05e1"

    .line 947
    .local v2, "EFES":Ljava/lang/String;
    const-string v11, "\u05ea\u05ea"

    const-string v12, "\u05ea\u05ea\u05e7"

    const-string v3, ""

    const-string v4, "\u05e7"

    const-string v5, "\u05e8"

    const-string v6, "\u05e9"

    const-string v7, "\u05ea"

    const-string v8, "\u05ea\u05e7"

    const-string v9, "\u05ea\u05e8"

    const-string v10, "\u05ea\u05e9"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 949
    .local v3, "jHundreds":[Ljava/lang/String;
    const-string v12, "\u05e4"

    const-string v13, "\u05e6"

    const-string v4, ""

    const-string v5, "\u05d9"

    const-string v6, "\u05db"

    const-string v7, "\u05dc"

    const-string v8, "\u05de"

    const-string v9, "\u05e0"

    const-string v10, "\u05e1"

    const-string v11, "\u05e2"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "jTens":[Ljava/lang/String;
    const-string v13, "\u05e3"

    const-string v14, "\u05e5"

    const-string v5, ""

    const-string v6, "\u05d9"

    const-string v7, "\u05da"

    const-string v8, "\u05dc"

    const-string v9, "\u05dd"

    const-string v10, "\u05df"

    const-string v11, "\u05e1"

    const-string v12, "\u05e2"

    filled-new-array/range {v5 .. v14}, [Ljava/lang/String;

    move-result-object v5

    .line 953
    .local v5, "jTenEnds":[Ljava/lang/String;
    const-string v6, "\u05d8\u05d5"

    const-string v7, "\u05d8\u05d6"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 954
    .local v6, "tavTaz":[Ljava/lang/String;
    const-string v15, "\u05d7"

    const-string v16, "\u05d8"

    const-string v7, ""

    const-string v8, "\u05d0"

    const-string v9, "\u05d1"

    const-string v10, "\u05d2"

    const-string v11, "\u05d3"

    const-string v12, "\u05d4"

    const-string v13, "\u05d5"

    const-string v14, "\u05d6"

    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v7

    .line 957
    .local v7, "jOnes":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 958
    return-object v2

    .line 960
    :cond_0
    rem-int/lit16 v8, v0, 0x3e8

    .line 962
    .local v8, "shortNumber":I
    const/16 v9, 0xb

    const/16 v12, 0x64

    if-lt v8, v9, :cond_3

    if-ge v8, v12, :cond_1

    rem-int/lit8 v9, v8, 0xa

    if-eqz v9, :cond_3

    :cond_1
    const/16 v9, 0x190

    if-gt v8, v9, :cond_2

    rem-int/lit8 v9, v8, 0x64

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v9, 0x1

    .line 963
    .local v9, "singleDigitNumber":Z
    :goto_1
    div-int/lit16 v13, v0, 0x3e8

    .line 964
    .local v13, "thousands":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    .local v14, "sb":Ljava/lang/StringBuilder;
    rem-int/lit16 v15, v0, 0x3e8

    const/16 v16, 0x0

    const-string v10, " "

    const/16 v17, 0x1

    const-string v11, "\u05f3"

    if-nez v15, :cond_5

    .line 967
    aget-object v12, v7, v13

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseGershGershayim()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 969
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    :cond_4
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 974
    :cond_5
    const/16 v18, 0x64

    move-object/from16 v15, p0

    iget-boolean v12, v15, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    move-object/from16 v19, v1

    .end local v1    # "ALAFIM":Ljava/lang/String;
    .local v19, "ALAFIM":Ljava/lang/String;
    const/16 v1, 0x3e8

    if-eqz v12, :cond_7

    if-lt v0, v1, :cond_7

    .line 975
    aget-object v12, v7, v13

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {v15}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseGershGershayim()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 977
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    :cond_6
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    :cond_7
    rem-int/2addr v0, v1

    .line 982
    .end local p1    # "number":I
    .local v0, "number":I
    div-int/lit8 v1, v0, 0x64

    .line 983
    .local v1, "hundreds":I
    aget-object v10, v3, v1

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    rem-int/lit8 v0, v0, 0x64

    .line 985
    const/16 v10, 0xf

    if-ne v0, v10, :cond_8

    .line 986
    aget-object v10, v6, v16

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 987
    :cond_8
    const/16 v10, 0x10

    if-ne v0, v10, :cond_9

    .line 988
    aget-object v10, v6, v17

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 990
    :cond_9
    div-int/lit8 v10, v0, 0xa

    .line 991
    .local v10, "tens":I
    rem-int/lit8 v12, v0, 0xa

    if-nez v12, :cond_c

    .line 992
    if-nez v9, :cond_b

    .line 993
    invoke-virtual {v15}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseFinalFormLetters()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 994
    aget-object v12, v5, v10

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 996
    :cond_a
    aget-object v12, v4, v10

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 999
    :cond_b
    aget-object v12, v4, v10

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1002
    :cond_c
    aget-object v12, v4, v10

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    rem-int/lit8 v0, v0, 0xa

    .line 1004
    aget-object v12, v7, v0

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    .end local v10    # "tens":I
    :goto_2
    invoke-virtual {v15}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isUseGershGershayim()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1008
    if-eqz v9, :cond_d

    .line 1009
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1011
    :cond_d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const-string v11, "\u05f4"

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    :cond_e
    :goto_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 941
    .end local v0    # "number":I
    .end local v1    # "hundreds":I
    .end local v2    # "EFES":Ljava/lang/String;
    .end local v3    # "jHundreds":[Ljava/lang/String;
    .end local v4    # "jTens":[Ljava/lang/String;
    .end local v5    # "jTenEnds":[Ljava/lang/String;
    .end local v6    # "tavTaz":[Ljava/lang/String;
    .end local v7    # "jOnes":[Ljava/lang/String;
    .end local v8    # "shortNumber":I
    .end local v9    # "singleDigitNumber":Z
    .end local v13    # "thousands":I
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v19    # "ALAFIM":Ljava/lang/String;
    .restart local p1    # "number":I
    :cond_f
    move-object/from16 v15, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "numbers > 9999 can\'t be formatted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    :cond_10
    move-object/from16 v15, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "negative numbers can\'t be formatted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public formatMonth(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;
    .locals 6
    .param p1, "jewishDate"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    .line 772
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getJewishMonth()I

    move-result v0

    .line 773
    .local v0, "month":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->isHebrewFormat()Z

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xc

    if-eqz v1, :cond_4

    .line 774
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear()Z

    move-result v1

    const-string v4, "\u05f3"

    const-string v5, ""

    if-eqz v1, :cond_1

    if-ne v0, v3, :cond_1

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 776
    :cond_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear()Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne v0, v2, :cond_3

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 779
    :cond_3
    sget-object v1, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    return-object v1

    .line 782
    :cond_4
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->isJewishLeapYear()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_5

    .line 783
    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    aget-object v1, v1, v2

    return-object v1

    .line 785
    :cond_5
    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public formatOmer(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 3
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 806
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfOmer()I

    move-result v0

    .line 807
    .local v0, "omer":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 808
    const-string v1, ""

    return-object v1

    .line 810
    :cond_0
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_1

    .line 811
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u05e2\u05d5\u05de\u05e8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 813
    :cond_1
    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 814
    iget-object v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v1, v2, v1

    return-object v1

    .line 816
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Omer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatParsha(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 2
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 1055
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getParshah()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    move-result-object v0

    .line 1056
    .local v0, "parsha":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public formatRoshChodesh(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 4
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 496
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isRoshChodesh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string v0, ""

    return-object v0

    .line 499
    :cond_0
    const-string v0, ""

    .line 500
    .local v0, "formattedRoshChodesh":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 501
    .local v1, "month":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_3

    .line 502
    const/16 v2, 0xc

    if-lt v1, v2, :cond_2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 505
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 503
    :cond_2
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 510
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 511
    invoke-virtual {p1, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setJewishMonth(I)V

    .line 512
    iget-boolean v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    const/16 v3, 0x1c

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_2

    .line 513
    :cond_4
    iget-object v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v2, v2, v3

    :goto_2
    nop

    .line 514
    .end local v0    # "formattedRoshChodesh":Ljava/lang/String;
    .local v2, "formattedRoshChodesh":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatMonth(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .end local v2    # "formattedRoshChodesh":Ljava/lang/String;
    .restart local v0    # "formattedRoshChodesh":Ljava/lang/String;
    return-object v0
.end method

.method public formatSpecialParsha(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 2
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 1077
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getSpecialShabbos()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    move-result-object v0

    .line 1078
    .local v0, "specialParsha":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewParshaMap:Ljava/util/EnumMap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public formatYomTov(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Ljava/lang/String;
    .locals 5
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 477
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 478
    .local v0, "index":I
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    .line 479
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfChanukah()I

    move-result v1

    .line 480
    .local v1, "dayOfChanukah":I
    iget-boolean v2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    const-string v3, " "

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 481
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    :goto_0
    return-object v2

    .line 483
    .end local v1    # "dayOfChanukah":I
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewHolidays:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_1
    return-object v1
.end method

.method public getFormattedKviah(I)Ljava/lang/String;
    .locals 7
    .param p1, "jewishYear"    # I

    .line 860
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 861
    .local v0, "jewishDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getCheshvanKislevKviah()I

    move-result v1

    .line 862
    .local v1, "kviah":I
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v3

    .line 863
    .local v3, "roshHashanaDayOfweek":I
    invoke-virtual {p0, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, "returnValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_0

    const-string v6, "\u05d7"

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    if-ne v1, v6, :cond_1

    const-string v6, "\u05e9"

    goto :goto_0

    :cond_1
    const-string v6, "\u05db"

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 865
    const/16 v5, 0xf

    invoke-virtual {v0, p1, v2, v5}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->setJewishDate(III)V

    .line 866
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getDayOfWeek()I

    move-result v2

    .line 867
    .local v2, "pesachDayOfweek":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->formatHebrewNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 868
    const-string v5, "\u05f3"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 873
    return-object v4
.end method

.method public getHebrewOmerPrefix()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedHolidayList()[Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedMonthList()[Ljava/lang/String;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransliteratedParshiosList()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getTransliteratedShabbosDayOfWeek()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedShabbosDayOfweek:Ljava/lang/String;

    return-object v0
.end method

.method public isHebrewFormat()Z
    .locals 1

    .line 530
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    return v0
.end method

.method public isLongWeekFormat()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    return v0
.end method

.method public isUseFinalFormLetters()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useFinalFormLetters:Z

    return v0
.end method

.method public isUseGershGershayim()Z
    .locals 1

    .line 671
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    return v0
.end method

.method public isUseLongHebrewYears()Z
    .locals 1

    .line 724
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    return v0
.end method

.method public setHebrewFormat(Z)V
    .locals 0
    .param p1, "hebrewFormat"    # Z

    .line 546
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewFormat:Z

    .line 547
    return-void
.end method

.method public setHebrewOmerPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "hebrewOmerPrefix"    # Ljava/lang/String;

    .line 575
    iput-object p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->hebrewOmerPrefix:Ljava/lang/String;

    .line 576
    return-void
.end method

.method public setLongWeekFormat(Z)V
    .locals 2
    .param p1, "longWeekFormat"    # Z

    .line 294
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->longWeekFormat:Z

    .line 295
    if-eqz p1, :cond_0

    .line 296
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->weekFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->weekFormat:Ljava/text/SimpleDateFormat;

    .line 300
    :goto_0
    return-void
.end method

.method public setTransliteratedHolidayList([Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedHolidays"    # [Ljava/lang/String;

    .line 405
    iput-object p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedHolidays:[Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setTransliteratedMonthList([Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedMonths"    # [Ljava/lang/String;

    .line 602
    iput-object p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedMonths:[Ljava/lang/String;

    .line 603
    return-void
.end method

.method public setTransliteratedParshiosList(Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1035
    .local p1, "transliteratedParshaMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedParshaMap:Ljava/util/EnumMap;

    .line 1036
    return-void
.end method

.method public setTransliteratedShabbosDayOfWeek(Ljava/lang/String;)V
    .locals 0
    .param p1, "transliteratedShabbos"    # Ljava/lang/String;

    .line 361
    iput-object p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->transliteratedShabbosDayOfweek:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setUseFinalFormLetters(Z)V
    .locals 0
    .param p1, "useFinalFormLetters"    # Z

    .line 712
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useFinalFormLetters:Z

    .line 713
    return-void
.end method

.method public setUseGershGershayim(Z)V
    .locals 0
    .param p1, "useGershGershayim"    # Z

    .line 686
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useGershGershayim:Z

    .line 687
    return-void
.end method

.method public setUseLongHebrewYears(Z)V
    .locals 0
    .param p1, "useLongHebrewYears"    # Z

    .line 737
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/HebrewDateFormatter;->useLonghebrewYears:Z

    .line 738
    return-void
.end method

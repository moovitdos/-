.class public Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
.super Ljava/lang/Object;
.source "Daf.java"


# static fields
.field private static final masechtosBavli:[Ljava/lang/String;

.field private static masechtosBavliTransliterated:[Ljava/lang/String;

.field private static final masechtosYerushalmi:[Ljava/lang/String;

.field private static masechtosYerushalmiTransliterated:[Ljava/lang/String;


# instance fields
.field private daf:I

.field private masechtaNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 38
    const-string v39, "Midos"

    const-string v40, "Niddah"

    const-string v1, "Berachos"

    const-string v2, "Shabbos"

    const-string v3, "Eruvin"

    const-string v4, "Pesachim"

    const-string v5, "Shekalim"

    const-string v6, "Yoma"

    const-string v7, "Sukkah"

    const-string v8, "Beitzah"

    const-string v9, "Rosh Hashana"

    const-string v10, "Taanis"

    const-string v11, "Megillah"

    const-string v12, "Moed Katan"

    const-string v13, "Chagigah"

    const-string v14, "Yevamos"

    const-string v15, "Kesubos"

    const-string v16, "Nedarim"

    const-string v17, "Nazir"

    const-string v18, "Sotah"

    const-string v19, "Gitin"

    const-string v20, "Kiddushin"

    const-string v21, "Bava Kamma"

    const-string v22, "Bava Metzia"

    const-string v23, "Bava Basra"

    const-string v24, "Sanhedrin"

    const-string v25, "Makkos"

    const-string v26, "Shevuos"

    const-string v27, "Avodah Zarah"

    const-string v28, "Horiyos"

    const-string v29, "Zevachim"

    const-string v30, "Menachos"

    const-string v31, "Chullin"

    const-string v32, "Bechoros"

    const-string v33, "Arachin"

    const-string v34, "Temurah"

    const-string v35, "Kerisos"

    const-string v36, "Meilah"

    const-string v37, "Kinnim"

    const-string v38, "Tamid"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosBavliTransliterated:[Ljava/lang/String;

    .line 47
    const-string v39, "\u05de\u05d9\u05d3\u05d5\u05ea"

    const-string v40, "\u05e0\u05d3\u05d4"

    const-string v1, "\u05d1\u05e8\u05db\u05d5\u05ea"

    const-string v2, "\u05e9\u05d1\u05ea"

    const-string v3, "\u05e2\u05d9\u05e8\u05d5\u05d1\u05d9\u05df"

    const-string v4, "\u05e4\u05e1\u05d7\u05d9\u05dd"

    const-string v5, "\u05e9\u05e7\u05dc\u05d9\u05dd"

    const-string v6, "\u05d9\u05d5\u05de\u05d0"

    const-string v7, "\u05e1\u05d5\u05db\u05d4"

    const-string v8, "\u05d1\u05d9\u05e6\u05d4"

    const-string v9, "\u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    const-string v10, "\u05ea\u05e2\u05e0\u05d9\u05ea"

    const-string v11, "\u05de\u05d2\u05d9\u05dc\u05d4"

    const-string v12, "\u05de\u05d5\u05e2\u05d3 \u05e7\u05d8\u05df"

    const-string v13, "\u05d7\u05d2\u05d9\u05d2\u05d4"

    const-string v14, "\u05d9\u05d1\u05de\u05d5\u05ea"

    const-string v15, "\u05db\u05ea\u05d5\u05d1\u05d5\u05ea"

    const-string v16, "\u05e0\u05d3\u05e8\u05d9\u05dd"

    const-string v17, "\u05e0\u05d6\u05d9\u05e8"

    const-string v18, "\u05e1\u05d5\u05d8\u05d4"

    const-string v19, "\u05d2\u05d9\u05d8\u05d9\u05df"

    const-string v20, "\u05e7\u05d9\u05d3\u05d5\u05e9\u05d9\u05df"

    const-string v21, "\u05d1\u05d1\u05d0 \u05e7\u05de\u05d0"

    const-string v22, "\u05d1\u05d1\u05d0 \u05de\u05e6\u05d9\u05e2\u05d0"

    const-string v23, "\u05d1\u05d1\u05d0 \u05d1\u05ea\u05e8\u05d0"

    const-string v24, "\u05e1\u05e0\u05d4\u05d3\u05e8\u05d9\u05df"

    const-string v25, "\u05de\u05db\u05d5\u05ea"

    const-string v26, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    const-string v27, "\u05e2\u05d1\u05d5\u05d3\u05d4 \u05d6\u05e8\u05d4"

    const-string v28, "\u05d4\u05d5\u05e8\u05d9\u05d5\u05ea"

    const-string v29, "\u05d6\u05d1\u05d7\u05d9\u05dd"

    const-string v30, "\u05de\u05e0\u05d7\u05d5\u05ea"

    const-string v31, "\u05d7\u05d5\u05dc\u05d9\u05df"

    const-string v32, "\u05d1\u05db\u05d5\u05e8\u05d5\u05ea"

    const-string v33, "\u05e2\u05e8\u05db\u05d9\u05df"

    const-string v34, "\u05ea\u05de\u05d5\u05e8\u05d4"

    const-string v35, "\u05db\u05e8\u05d9\u05ea\u05d5\u05ea"

    const-string v36, "\u05de\u05e2\u05d9\u05dc\u05d4"

    const-string v37, "\u05e7\u05d9\u05e0\u05d9\u05dd"

    const-string v38, "\u05ea\u05de\u05d9\u05d3"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosBavli:[Ljava/lang/String;

    .line 68
    const-string v39, "Nidah"

    const-string v40, "No Daf Today"

    const-string v1, "Berachos"

    const-string v2, "Pe\'ah"

    const-string v3, "Demai"

    const-string v4, "Kilayim"

    const-string v5, "Shevi\'is"

    const-string v6, "Terumos"

    const-string v7, "Ma\'asros"

    const-string v8, "Ma\'aser Sheni"

    const-string v9, "Chalah"

    const-string v10, "Orlah"

    const-string v11, "Bikurim"

    const-string v12, "Shabbos"

    const-string v13, "Eruvin"

    const-string v14, "Pesachim"

    const-string v15, "Beitzah"

    const-string v16, "Rosh Hashanah"

    const-string v17, "Yoma"

    const-string v18, "Sukah"

    const-string v19, "Ta\'anis"

    const-string v20, "Shekalim"

    const-string v21, "Megilah"

    const-string v22, "Chagigah"

    const-string v23, "Moed Katan"

    const-string v24, "Yevamos"

    const-string v25, "Kesuvos"

    const-string v26, "Sotah"

    const-string v27, "Nedarim"

    const-string v28, "Nazir"

    const-string v29, "Gitin"

    const-string v30, "Kidushin"

    const-string v31, "Bava Kama"

    const-string v32, "Bava Metzia"

    const-string v33, "Bava Basra"

    const-string v34, "Shevuos"

    const-string v35, "Makos"

    const-string v36, "Sanhedrin"

    const-string v37, "Avodah Zarah"

    const-string v38, "Horayos"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmiTransliterated:[Ljava/lang/String;

    .line 77
    const-string v39, "\u05e0\u05d9\u05d3\u05d4"

    const-string v40, "\u05d0\u05d9\u05df \u05d3\u05e3 \u05d4\u05d9\u05d5\u05dd"

    const-string v1, "\u05d1\u05e8\u05db\u05d5\u05ea"

    const-string v2, "\u05e4\u05d9\u05d0\u05d4"

    const-string v3, "\u05d3\u05de\u05d0\u05d9"

    const-string v4, "\u05db\u05dc\u05d0\u05d9\u05dd"

    const-string v5, "\u05e9\u05d1\u05d9\u05e2\u05d9\u05ea"

    const-string v6, "\u05ea\u05e8\u05d5\u05de\u05d5\u05ea"

    const-string v7, "\u05de\u05e2\u05e9\u05e8\u05d5\u05ea"

    const-string v8, "\u05de\u05e2\u05e9\u05e8 \u05e9\u05e0\u05d9"

    const-string v9, "\u05d7\u05dc\u05d4"

    const-string v10, "\u05e2\u05d5\u05e8\u05dc\u05d4"

    const-string v11, "\u05d1\u05d9\u05db\u05d5\u05e8\u05d9\u05dd"

    const-string v12, "\u05e9\u05d1\u05ea"

    const-string v13, "\u05e2\u05d9\u05e8\u05d5\u05d1\u05d9\u05df"

    const-string v14, "\u05e4\u05e1\u05d7\u05d9\u05dd"

    const-string v15, "\u05d1\u05d9\u05e6\u05d4"

    const-string v16, "\u05e8\u05d0\u05e9 \u05d4\u05e9\u05e0\u05d4"

    const-string v17, "\u05d9\u05d5\u05de\u05d0"

    const-string v18, "\u05e1\u05d5\u05db\u05d4"

    const-string v19, "\u05ea\u05e2\u05e0\u05d9\u05ea"

    const-string v20, "\u05e9\u05e7\u05dc\u05d9\u05dd"

    const-string v21, "\u05de\u05d2\u05d9\u05dc\u05d4"

    const-string v22, "\u05d7\u05d2\u05d9\u05d2\u05d4"

    const-string v23, "\u05de\u05d5\u05e2\u05d3 \u05e7\u05d8\u05df"

    const-string v24, "\u05d9\u05d1\u05de\u05d5\u05ea"

    const-string v25, "\u05db\u05ea\u05d5\u05d1\u05d5\u05ea"

    const-string v26, "\u05e1\u05d5\u05d8\u05d4"

    const-string v27, "\u05e0\u05d3\u05e8\u05d9\u05dd"

    const-string v28, "\u05e0\u05d6\u05d9\u05e8"

    const-string v29, "\u05d2\u05d9\u05d8\u05d9\u05df"

    const-string v30, "\u05e7\u05d9\u05d3\u05d5\u05e9\u05d9\u05df"

    const-string v31, "\u05d1\u05d1\u05d0 \u05e7\u05de\u05d0"

    const-string v32, "\u05d1\u05d1\u05d0 \u05de\u05e6\u05d9\u05e2\u05d0"

    const-string v33, "\u05d1\u05d1\u05d0 \u05d1\u05ea\u05e8\u05d0"

    const-string v34, "\u05e9\u05d1\u05d5\u05e2\u05d5\u05ea"

    const-string v35, "\u05de\u05db\u05d5\u05ea"

    const-string v36, "\u05e1\u05e0\u05d4\u05d3\u05e8\u05d9\u05df"

    const-string v37, "\u05e2\u05d1\u05d5\u05d3\u05d4 \u05d6\u05e8\u05d4"

    const-string v38, "\u05d4\u05d5\u05e8\u05d9\u05d5\u05ea"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmi:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "masechtaNumber"    # I
    .param p2, "daf"    # I

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    .line 128
    iput p2, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->daf:I

    .line 129
    return-void
.end method

.method public static getYerushalmiMasechtos()[Ljava/lang/String;
    .locals 1

    .line 268
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmi:[Ljava/lang/String;

    return-object v0
.end method

.method public static getYerushalmiMasechtosTransliterated()[Ljava/lang/String;
    .locals 1

    .line 249
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmiTransliterated:[Ljava/lang/String;

    return-object v0
.end method

.method public static getYerushlmiMasechtos()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    invoke-static {}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushalmiMasechtos()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getYerushlmiMasechtosTransliterated()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    invoke-static {}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushalmiMasechtosTransliterated()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDaf()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->daf:I

    return v0
.end method

.method public getMasechta()Ljava/lang/String;
    .locals 2

    .line 195
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosBavli:[Ljava/lang/String;

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMasechtaNumber()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    return v0
.end method

.method public getMasechtaTransliterated()Ljava/lang/String;
    .locals 2

    .line 158
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosBavliTransliterated:[Ljava/lang/String;

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getYerushalmiMasechta()Ljava/lang/String;
    .locals 2

    .line 289
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmi:[Ljava/lang/String;

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getYerushalmiMasechtaTransliterated()Ljava/lang/String;
    .locals 2

    .line 209
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmiTransliterated:[Ljava/lang/String;

    iget v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getYerushlmiMasechtaTransliterated()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->getYerushalmiMasechtaTransliterated()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDaf(I)V
    .locals 0
    .param p1, "daf"    # I

    .line 144
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->daf:I

    .line 145
    return-void
.end method

.method public setMasechtaNumber(I)V
    .locals 0
    .param p1, "masechtaNumber"    # I

    .line 116
    iput p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtaNumber:I

    .line 117
    return-void
.end method

.method public setMasechtaTransliterated([Ljava/lang/String;)V
    .locals 0
    .param p1, "masechtosBavliTransliterated"    # [Ljava/lang/String;

    .line 169
    sput-object p1, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosBavliTransliterated:[Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setYerushalmiMasechtaTransliterated([Ljava/lang/String;)V
    .locals 0
    .param p1, "masechtosYerushalmiTransliterated"    # [Ljava/lang/String;

    .line 229
    sput-object p1, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->masechtosYerushalmiTransliterated:[Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setYerushlmiMasechtaTransliterated([Ljava/lang/String;)V
    .locals 0
    .param p1, "masechtosYerushalmiTransliterated"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/Daf;->setYerushalmiMasechtaTransliterated([Ljava/lang/String;)V

    .line 240
    return-void
.end method

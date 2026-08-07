.class public Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
.super Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
.source "JewishCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;
    }
.end annotation


# static fields
.field public static final BEHAB:I = 0x25

.field public static final CHANUKAH:I = 0x15

.field public static final CHOL_HAMOED_PESACH:I = 0x2

.field public static final CHOL_HAMOED_SUCCOS:I = 0x10

.field public static final EREV_PESACH:I = 0x0

.field public static final EREV_ROSH_HASHANA:I = 0x9

.field public static final EREV_SHAVUOS:I = 0x4

.field public static final EREV_SUCCOS:I = 0xe

.field public static final EREV_YOM_KIPPUR:I = 0xc

.field public static final FAST_OF_ESTHER:I = 0x18

.field public static final FAST_OF_GEDALYAH:I = 0xb

.field public static final HOSHANA_RABBA:I = 0x11

.field public static final ISRU_CHAG:I = 0x23

.field public static final LAG_BAOMER:I = 0x21

.field public static final PESACH:I = 0x1

.field public static final PESACH_SHENI:I = 0x3

.field public static final PURIM:I = 0x19

.field public static final PURIM_KATAN:I = 0x1b

.field public static final ROSH_CHODESH:I = 0x1c

.field public static final ROSH_HASHANA:I = 0xa

.field public static final SEVENTEEN_OF_TAMMUZ:I = 0x6

.field public static final SHAVUOS:I = 0x5

.field public static final SHEMINI_ATZERES:I = 0x12

.field public static final SHUSHAN_PURIM:I = 0x1a

.field public static final SHUSHAN_PURIM_KATAN:I = 0x22

.field public static final SIMCHAS_TORAH:I = 0x13

.field public static final SUCCOS:I = 0xf

.field public static final TENTH_OF_TEVES:I = 0x16

.field public static final TISHA_BEAV:I = 0x7

.field public static final TU_BEAV:I = 0x8

.field public static final TU_BESHVAT:I = 0x17

.field public static final YOM_HAATZMAUT:I = 0x1f

.field public static final YOM_HASHOAH:I = 0x1d

.field public static final YOM_HAZIKARON:I = 0x1e

.field public static final YOM_KIPPUR:I = 0xd

.field public static final YOM_KIPPUR_KATAN:I = 0x24

.field public static final YOM_YERUSHALAYIM:I = 0x20

.field public static final parshalist:[[Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;


# instance fields
.field private inIsrael:Z

.field private isMukafChoma:Z

.field private useModernHolidays:Z


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 202
    const/16 v0, 0x11

    new-array v1, v0, [[Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v2, 0x33

    new-array v3, v2, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v9, 0x4

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v10, 0x5

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v11, 0x6

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/4 v12, 0x7

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v13, 0x8

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v14, 0x9

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v15, 0xa

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v16, 0xb

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v17, 0xc

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v18, 0xd

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v19, 0xe

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v20, 0xf

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v21, 0x10

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v22, 0x12

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v23, 0x13

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    const/16 v24, 0x14

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v5

    new-array v3, v2, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS_BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v6

    const/16 v3, 0x34

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    aput-object v3, v1, v7

    const/16 v3, 0x34

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    aput-object v3, v1, v8

    const/16 v3, 0x34

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    aput-object v3, v1, v9

    const/16 v3, 0x34

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    aput-object v3, v1, v10

    const/16 v3, 0x37

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS_BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v11

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x37

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v12

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x37

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v13

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x37

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v14

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x37

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v15

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS_BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x37

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v16

    new-array v3, v2, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR_BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v17

    const/16 v3, 0x34

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL_PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA_METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS_KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    aput-object v3, v1, v18

    const/16 v3, 0x37

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v19

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v24

    const/16 v4, 0x15

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x16

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x17

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x18

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x19

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x1f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x20

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x21

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x22

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x23

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x24

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x25

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x26

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x27

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x28

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x29

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2a

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2b

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2c

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2d

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2e

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x2f

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x30

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x31

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x32

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v2

    const/16 v4, 0x34

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x35

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x36

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    const/16 v4, 0x37

    sget-object v25, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v25, v3, v4

    aput-object v3, v1, v20

    const/16 v3, 0x38

    new-array v3, v3, [Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v5

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v6

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAAZINU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v7

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v8

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v9

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BERESHIS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v10

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NOACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v11

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->LECH_LECHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v12

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v13

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAYEI_SARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v14

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TOLDOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYETZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYISHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYESHEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MIKETZ:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIGASH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYECHI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHEMOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAERA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v0, v3, v22

    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v0, v3, v23

    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v0, v3, v24

    const/16 v0, 0x15

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->YISRO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x16

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MISHPATIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x17

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TERUMAH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x18

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TETZAVEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x19

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SISA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYAKHEL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PEKUDEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAYIKRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TZAV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHMINI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->TAZRIA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x20

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->METZORA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x21

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x22

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ACHREI_MOS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x23

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KEDOSHIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x24

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EMOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x25

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x26

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BECHUKOSAI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x27

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BAMIDBAR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x28

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NASSO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x29

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BEHAALOSCHA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x2a

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHLACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x2b

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KORACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x2c

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHUKAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x2d

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BALAK:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x2e

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PINCHAS:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x2f

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->MATOS_MASEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x30

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->DEVARIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x31

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->VAESCHANAN:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    const/16 v0, 0x32

    sget-object v4, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->EIKEV:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v4, v3, v0

    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->REEH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v0, v3, v2

    const/16 v0, 0x34

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHOFTIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v2, v3, v0

    const/16 v0, 0x35

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SEITZEI:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v2, v3, v0

    const/16 v0, 0x36

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->KI_SAVO:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v2, v3, v0

    const/16 v0, 0x37

    sget-object v2, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NITZAVIM_VAYEILECH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aput-object v2, v3, v0

    aput-object v3, v1, v21

    sput-object v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->parshalist:[[Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 163
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 170
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 254
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "jewishYear"    # I
    .param p2, "jewishMonth"    # I
    .param p3, "jewishDayOfMonth"    # I

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 163
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 170
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 304
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 1
    .param p1, "jewishYear"    # I
    .param p2, "jewishMonth"    # I
    .param p3, "jewishDayOfMonth"    # I
    .param p4, "inIsrael"    # Z

    .line 323
    invoke-direct {p0, p1, p2, p3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 163
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 170
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 324
    invoke-virtual {p0, p4}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->setInIsrael(Z)V

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 1
    .param p1, "localDate"    # Ljava/time/LocalDate;

    .line 283
    invoke-direct {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/time/LocalDate;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 163
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 170
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 284
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .line 273
    invoke-direct {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Calendar;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 163
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 170
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 274
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 263
    invoke-direct {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(Ljava/util/Date;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 163
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 170
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 264
    return-void
.end method

.method private getParshaYearType()I
    .locals 4

    .line 402
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishCalendarElapsedDays(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x7

    rem-int/2addr v0, v2

    .line 403
    .local v0, "roshHashanaDayOfWeek":I
    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x7

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 407
    const/16 v1, 0xf

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 436
    :pswitch_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const/16 v1, 0xa

    return v1

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCheshvanLong()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 440
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    const/16 v1, 0x10

    return v1

    .line 443
    :cond_2
    const/16 v1, 0xb

    return v1

    .line 428
    :pswitch_2
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    const/16 v1, 0x8

    return v1

    .line 431
    :cond_3
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCheshvanLong()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 432
    const/16 v1, 0x9

    return v1

    .line 423
    :pswitch_3
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 424
    return v1

    .line 426
    :cond_4
    return v2

    .line 409
    :pswitch_4
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 410
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 411
    const/16 v1, 0xe

    return v1

    .line 413
    :cond_5
    const/4 v1, 0x6

    return v1

    .line 415
    :cond_6
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCheshvanLong()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 416
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 417
    return v1

    .line 419
    :cond_7
    return v2

    .line 445
    :cond_8
    :goto_0
    goto :goto_1

    .line 448
    :cond_9
    const/16 v2, 0xc

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    goto :goto_1

    .line 477
    :pswitch_6
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 478
    const/4 v1, 0x4

    return v1

    .line 480
    :cond_a
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCheshvanLong()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 481
    const/4 v1, 0x5

    return v1

    .line 466
    :pswitch_7
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCheshvanLong()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 467
    const/4 v1, 0x3

    return v1

    .line 469
    :cond_b
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v1

    if-nez v1, :cond_10

    .line 470
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 471
    const/16 v1, 0xd

    return v1

    .line 473
    :cond_c
    const/4 v1, 0x2

    return v1

    .line 461
    :pswitch_8
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 462
    return v2

    .line 464
    :cond_d
    return v1

    .line 450
    :pswitch_9
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 451
    const/4 v1, 0x0

    return v1

    .line 453
    :cond_e
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCheshvanLong()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 454
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 455
    return v2

    .line 457
    :cond_f
    return v1

    .line 486
    :cond_10
    :goto_1
    const/4 v1, -0x1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 1605
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1606
    return v0

    .line 1608
    :cond_0
    instance-of v1, p1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1609
    return v2

    .line 1611
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 1612
    .local v1, "jewishCalendar":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v3

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    invoke-virtual {v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDafYomiBavli()Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
    .locals 1

    .line 1362
    invoke-static {p0}, Lkosherjava/zmanim/hebrewcalendar/YomiCalculator;->getDafYomiBavli(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Lcom/kosherjava/zmanim/hebrewcalendar/Daf;

    move-result-object v0

    return-object v0
.end method

.method public getDafYomiYerushalmi()Lcom/kosherjava/zmanim/hebrewcalendar/Daf;
    .locals 1

    .line 1372
    invoke-static {p0}, Lkosherjava/zmanim/hebrewcalendar/YerushalmiYomiCalculator;->getDafYomiYerushalmi(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Lcom/kosherjava/zmanim/hebrewcalendar/Daf;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfChanukah()I
    .locals 3

    .line 1130
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    .line 1131
    .local v0, "day":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isChanukah()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1132
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 1133
    add-int/lit8 v1, v0, -0x18

    return v1

    .line 1135
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x5

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x6

    :goto_0
    return v1

    .line 1138
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public getDayOfOmer()I
    .locals 4

    .line 1204
    const/4 v0, -0x1

    .line 1205
    .local v0, "omer":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 1206
    .local v1, "month":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v2

    .line 1209
    .local v2, "day":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 1210
    add-int/lit8 v0, v2, -0xf

    goto :goto_0

    .line 1212
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 1213
    add-int/lit8 v0, v2, 0xf

    goto :goto_0

    .line 1215
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 1216
    add-int/lit8 v0, v2, 0x2c

    .line 1218
    :cond_2
    :goto_0
    return v0
.end method

.method public getInIsrael()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    return v0
.end method

.method public getIsMukafChoma()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    return v0
.end method

.method public getMoladAsDate()Ljava/util/Date;
    .locals 19

    .line 1240
    invoke-virtual/range {p0 .. p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMolad()Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    move-result-object v0

    .line 1241
    .local v0, "molad":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    const-string v2, "Jerusalem, Israel"

    .line 1243
    .local v2, "locationName":Ljava/lang/String;
    const-wide v3, 0x403fc72b020c49baL    # 31.778

    .line 1244
    .local v3, "latitude":D
    const-wide v5, 0x40419e219652bd3cL    # 35.2354

    .line 1249
    .local v5, "longitude":D
    const-string v1, "GMT+2"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 1250
    .local v7, "yerushalayimStandardTZ":Ljava/util/TimeZone;
    new-instance v1, Lcom/kosherjava/zmanim/util/GeoLocation;

    invoke-direct/range {v1 .. v7}, Lcom/kosherjava/zmanim/util/GeoLocation;-><init>(Ljava/lang/String;DDLjava/util/TimeZone;)V

    .line 1251
    .local v1, "geo":Lcom/kosherjava/zmanim/util/GeoLocation;
    invoke-virtual {v1}, Lcom/kosherjava/zmanim/util/GeoLocation;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 1252
    .local v9, "cal":Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 1253
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getMoladChalakim()I

    move-result v8

    mul-int/lit8 v8, v8, 0xa

    int-to-double v10, v8

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    .line 1254
    .local v10, "moladSeconds":D
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianYear()I

    move-result v8

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianMonth()I

    move-result v12

    move v13, v12

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getGregorianDayOfMonth()I

    move-result v12

    .line 1255
    move v14, v13

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getMoladHours()I

    move-result v13

    move v15, v14

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;->getMoladMinutes()I

    move-result v14

    move/from16 v16, v15

    double-to-int v15, v10

    .line 1254
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-wide v0, v10

    move/from16 v11, v16

    move v10, v8

    .end local v1    # "geo":Lcom/kosherjava/zmanim/util/GeoLocation;
    .end local v10    # "moladSeconds":D
    .local v0, "moladSeconds":D
    .local v17, "molad":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    .local v18, "geo":Lcom/kosherjava/zmanim/util/GeoLocation;
    invoke-virtual/range {v9 .. v15}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1256
    double-to-int v8, v0

    int-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v0, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v10, v10, v12

    double-to-int v8, v10

    const/16 v10, 0xe

    invoke-virtual {v9, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 1258
    invoke-virtual/range {v18 .. v18}, Lcom/kosherjava/zmanim/util/GeoLocation;->getLocalMeanTimeOffset()J

    move-result-wide v11

    long-to-int v8, v11

    mul-int/lit8 v8, v8, -0x1

    invoke-virtual {v9, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 1259
    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    return-object v8
.end method

.method public getParshah()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;
    .locals 5

    .line 496
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 497
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getParshaYearType()I

    move-result v0

    .line 501
    .local v0, "yearType":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v2

    invoke-static {v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishCalendarElapsedDays(I)I

    move-result v2

    rem-int/2addr v2, v1

    .line 502
    .local v2, "roshHashanaDayOfWeek":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDaysSinceStartOfJewishYear()I

    move-result v1

    add-int/2addr v1, v2

    .line 504
    .local v1, "day":I
    if-ltz v0, :cond_1

    .line 505
    sget-object v3, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->parshalist:[[Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    aget-object v3, v3, v0

    div-int/lit8 v4, v1, 0x7

    aget-object v3, v3, v4

    return-object v3

    .line 507
    :cond_1
    sget-object v3, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v3
.end method

.method public getSofZmanKidushLevana15Days()Ljava/util/Date;
    .locals 4

    .line 1347
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate()Ljava/util/Date;

    move-result-object v0

    .line 1348
    .local v0, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1349
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1350
    const/16 v2, 0xa

    const/16 v3, 0x168

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1351
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSofZmanKidushLevanaBetweenMoldos()Ljava/util/Date;
    .locals 4

    .line 1316
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate()Ljava/util/Date;

    move-result-object v0

    .line 1317
    .local v0, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1318
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1322
    const/16 v2, 0xa

    const/16 v3, 0x162

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1323
    const/16 v2, 0xc

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1324
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1325
    const/16 v2, 0xe

    const/16 v3, 0x29a

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1326
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getSpecialShabbos()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;
    .locals 11

    .line 542
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    .line 543
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v2, 0x1d

    const/16 v3, 0x1b

    const/16 v4, 0x19

    const/16 v5, 0xc

    const/16 v6, 0xb

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 545
    :cond_2
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHKALIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 548
    :cond_3
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v7, 0x9

    const/16 v8, 0xd

    const/16 v9, 0x8

    const/4 v10, 0x1

    if-ne v0, v5, :cond_4

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v8, :cond_c

    .line 549
    :cond_5
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 550
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHKALIM:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 552
    :cond_6
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v9, :cond_b

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v7, :cond_b

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v6, :cond_b

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v8, :cond_7

    goto :goto_1

    .line 555
    :cond_7
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v5, 0x12

    if-eq v0, v5, :cond_a

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v5, 0x14

    if-eq v0, v5, :cond_a

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v5, 0x16

    if-eq v0, v5, :cond_a

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v5, 0x17

    if-ne v0, v5, :cond_8

    goto :goto_0

    .line 558
    :cond_8
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v3, :cond_9

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 559
    :cond_9
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HACHODESH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 556
    :cond_a
    :goto_0
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->PARA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 553
    :cond_b
    :goto_1
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->ZACHOR:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 562
    :cond_c
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v10, :cond_e

    .line 563
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v10, :cond_d

    .line 564
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HACHODESH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 566
    :cond_d
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-lt v0, v9, :cond_e

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0xe

    if-gt v0, v2, :cond_e

    .line 567
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->HAGADOL:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 570
    :cond_e
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_10

    .line 571
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_f

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-gt v0, v7, :cond_f

    .line 572
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->CHAZON:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 574
    :cond_f
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_10

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0x10

    if-gt v0, v2, :cond_10

    .line 575
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NACHAMU:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 578
    :cond_10
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v1, :cond_11

    .line 579
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-gt v0, v9, :cond_11

    .line 580
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHUVA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 584
    :cond_11
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getParshah()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    move-result-object v0

    sget-object v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->BESHALACH:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    if-ne v0, v1, :cond_12

    .line 585
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->SHIRA:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0

    .line 588
    :cond_12
    sget-object v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    return-object v0
.end method

.method public getTchilasZmanKidushLevana3Days()Ljava/util/Date;
    .locals 4

    .line 1273
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate()Ljava/util/Date;

    move-result-object v0

    .line 1274
    .local v0, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1275
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1276
    const/16 v2, 0xa

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1277
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getTchilasZmanKidushLevana7Days()Ljava/util/Date;
    .locals 4

    .line 1293
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getMoladAsDate()Ljava/util/Date;

    move-result-object v0

    .line 1294
    .local v0, "molad":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1295
    .local v1, "cal":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1296
    const/16 v2, 0xa

    const/16 v3, 0xa8

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1297
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method public getTekufasTishreiElapsedDays()I
    .locals 6

    .line 1397
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishCalendarElapsedDays(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDaysSinceStartOfJewishYear()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    .line 1399
    .local v0, "days":D
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide v4, 0x4076d40000000000L    # 365.25

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    .line 1400
    .local v2, "solar":D
    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method public getUpcomingParshah()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;
    .locals 6

    .line 519
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 520
    .local v0, "clone":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v1

    const/4 v2, 0x7

    rsub-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    rem-int/2addr v1, v2

    .line 521
    .local v1, "daysToShabbos":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v2, :cond_0

    .line 522
    invoke-virtual {v0, v4, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->forward(II)V

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {v0, v4, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->forward(II)V

    .line 526
    :goto_0
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getParshah()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    move-result-object v3

    sget-object v5, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;->NONE:Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    if-ne v3, v5, :cond_1

    .line 527
    invoke-virtual {v0, v4, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->forward(II)V

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getParshah()Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar$Parsha;

    move-result-object v2

    return-object v2
.end method

.method public getYomTovIndex()I
    .locals 25

    .line 603
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    .line 604
    .local v1, "day":I
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v2

    .line 607
    .local v2, "dayOfWeek":I
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v3

    const/16 v5, 0xd

    const/16 v6, 0xc

    const/16 v9, 0xb

    const/16 v14, 0xa

    const/16 v16, 0x12

    const/16 v17, 0x18

    const/4 v4, 0x2

    const/16 v18, 0x17

    const/4 v12, 0x6

    const/16 v19, 0x16

    const/16 v20, 0x15

    const/4 v13, 0x3

    const/4 v15, 0x1

    const/16 v8, 0xe

    const/4 v7, 0x7

    const/16 v11, 0xf

    const/16 v24, 0x19

    const/4 v10, 0x5

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 768
    :pswitch_1
    if-eq v1, v9, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    if-eq v2, v10, :cond_4

    :cond_1
    if-ne v1, v5, :cond_2

    if-eq v2, v12, :cond_2

    if-eq v2, v7, :cond_2

    goto :goto_0

    .line 772
    :cond_2
    if-ne v1, v8, :cond_3

    .line 773
    return v24

    .line 775
    :cond_3
    if-ne v1, v11, :cond_42

    .line 776
    const/16 v3, 0x1a

    return v3

    .line 770
    :cond_4
    :goto_0
    return v17

    .line 745
    :pswitch_2
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v3

    if-nez v3, :cond_a

    .line 747
    if-eq v1, v9, :cond_5

    if-ne v1, v6, :cond_6

    :cond_5
    if-eq v2, v10, :cond_9

    :cond_6
    if-ne v1, v5, :cond_7

    if-eq v2, v12, :cond_7

    if-eq v2, v7, :cond_7

    goto :goto_1

    .line 751
    :cond_7
    if-ne v1, v8, :cond_8

    .line 752
    return v24

    .line 754
    :cond_8
    if-ne v1, v11, :cond_42

    .line 755
    const/16 v3, 0x1a

    return v3

    .line 749
    :cond_9
    :goto_1
    return v17

    .line 758
    :cond_a
    if-ne v1, v8, :cond_b

    .line 759
    const/16 v3, 0x1b

    return v3

    .line 761
    :cond_b
    if-ne v1, v11, :cond_42

    .line 762
    const/16 v3, 0x22

    return v3

    .line 740
    :pswitch_3
    if-ne v1, v11, :cond_42

    .line 741
    return v18

    .line 731
    :pswitch_4
    if-eq v1, v15, :cond_d

    if-eq v1, v4, :cond_d

    if-ne v1, v13, :cond_c

    .line 732
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isKislevShort()Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_2

    .line 735
    :cond_c
    if-ne v1, v14, :cond_42

    .line 736
    return v19

    .line 733
    :cond_d
    :goto_2
    return v20

    .line 726
    :pswitch_5
    const/16 v3, 0x19

    if-lt v1, v3, :cond_42

    .line 727
    return v20

    .line 687
    :pswitch_6
    if-eq v1, v15, :cond_1f

    if-ne v1, v4, :cond_e

    goto :goto_6

    .line 690
    :cond_e
    if-ne v1, v13, :cond_f

    if-ne v2, v7, :cond_10

    :cond_f
    const/4 v3, 0x4

    if-ne v1, v3, :cond_11

    if-ne v2, v15, :cond_11

    .line 692
    :cond_10
    return v9

    .line 694
    :cond_11
    const/16 v3, 0x9

    if-ne v1, v3, :cond_12

    .line 695
    return v6

    .line 697
    :cond_12
    if-ne v1, v14, :cond_13

    .line 698
    return v5

    .line 700
    :cond_13
    if-ne v1, v8, :cond_14

    .line 701
    return v8

    .line 703
    :cond_14
    if-eq v1, v11, :cond_1e

    const/16 v3, 0x10

    if-ne v1, v3, :cond_15

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_15

    goto :goto_5

    .line 706
    :cond_15
    const/16 v3, 0x11

    if-lt v1, v3, :cond_17

    const/16 v3, 0x14

    if-le v1, v3, :cond_16

    goto :goto_3

    :cond_16
    const/16 v3, 0x10

    goto :goto_4

    :cond_17
    :goto_3
    const/16 v3, 0x10

    if-ne v1, v3, :cond_18

    iget-boolean v4, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v4, :cond_18

    .line 707
    :goto_4
    return v3

    .line 709
    :cond_18
    const/16 v3, 0x15

    if-ne v1, v3, :cond_19

    .line 710
    const/16 v21, 0x11

    return v21

    .line 712
    :cond_19
    const/16 v3, 0x16

    if-ne v1, v3, :cond_1a

    .line 713
    return v16

    .line 715
    :cond_1a
    const/16 v3, 0x17

    if-ne v1, v3, :cond_1b

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_1b

    .line 716
    const/16 v3, 0x13

    return v3

    .line 718
    :cond_1b
    const/16 v3, 0x17

    if-ne v1, v3, :cond_1c

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_1d

    :cond_1c
    const/16 v3, 0x18

    if-ne v1, v3, :cond_42

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_42

    .line 719
    :cond_1d
    const/16 v3, 0x23

    return v3

    .line 704
    :cond_1e
    :goto_5
    return v11

    .line 688
    :cond_1f
    :goto_6
    return v14

    .line 682
    :pswitch_7
    const/16 v3, 0x1d

    if-ne v1, v3, :cond_42

    .line 683
    const/16 v22, 0x9

    return v22

    .line 673
    :pswitch_8
    if-ne v2, v15, :cond_20

    if-eq v1, v14, :cond_21

    :cond_20
    if-eq v2, v7, :cond_22

    const/16 v3, 0x9

    if-ne v1, v3, :cond_22

    .line 675
    :cond_21
    return v7

    .line 677
    :cond_22
    if-ne v1, v11, :cond_42

    .line 678
    const/16 v3, 0x8

    return v3

    .line 666
    :pswitch_9
    const/16 v3, 0x11

    if-ne v1, v3, :cond_23

    if-ne v2, v7, :cond_24

    :cond_23
    const/16 v3, 0x12

    if-ne v1, v3, :cond_42

    if-ne v2, v15, :cond_42

    .line 668
    :cond_24
    return v12

    .line 654
    :pswitch_a
    if-ne v1, v10, :cond_25

    .line 655
    const/16 v23, 0x4

    return v23

    .line 657
    :cond_25
    if-eq v1, v12, :cond_29

    if-ne v1, v7, :cond_26

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_26

    goto :goto_7

    .line 660
    :cond_26
    if-ne v1, v7, :cond_27

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_28

    :cond_27
    const/16 v3, 0x8

    if-ne v1, v3, :cond_42

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_42

    .line 661
    :cond_28
    const/16 v3, 0x23

    return v3

    .line 658
    :cond_29
    :goto_7
    return v10

    .line 631
    :pswitch_b
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2a

    if-eq v2, v13, :cond_2d

    :cond_2a
    if-eq v1, v13, :cond_2b

    if-ne v1, v4, :cond_2c

    :cond_2b
    const/4 v3, 0x4

    if-eq v2, v3, :cond_2d

    :cond_2c
    if-ne v1, v10, :cond_2e

    if-ne v2, v4, :cond_2e

    .line 634
    :cond_2d
    const/16 v3, 0x1e

    return v3

    .line 638
    :cond_2e
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v3

    if-eqz v3, :cond_33

    if-ne v1, v10, :cond_2f

    const/4 v3, 0x4

    if-eq v2, v3, :cond_32

    goto :goto_8

    :cond_2f
    const/4 v3, 0x4

    :goto_8
    if-eq v1, v3, :cond_30

    if-ne v1, v13, :cond_31

    :cond_30
    if-eq v2, v10, :cond_32

    :cond_31
    if-ne v1, v12, :cond_33

    if-ne v2, v13, :cond_33

    .line 641
    :cond_32
    const/16 v3, 0x1f

    return v3

    .line 643
    :cond_33
    if-ne v1, v8, :cond_34

    .line 644
    return v13

    .line 646
    :cond_34
    const/16 v3, 0x12

    if-ne v1, v3, :cond_35

    .line 647
    const/16 v3, 0x21

    return v3

    .line 649
    :cond_35
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v3

    if-eqz v3, :cond_42

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_42

    .line 650
    const/16 v3, 0x20

    return v3

    .line 609
    :pswitch_c
    if-ne v1, v8, :cond_36

    .line 610
    const/4 v3, 0x0

    return v3

    .line 612
    :cond_36
    if-eq v1, v11, :cond_41

    const/16 v3, 0x15

    if-eq v1, v3, :cond_41

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_37

    const/16 v3, 0x10

    if-eq v1, v3, :cond_41

    const/16 v3, 0x16

    if-ne v1, v3, :cond_37

    goto :goto_9

    .line 616
    :cond_37
    const/16 v3, 0x11

    if-lt v1, v3, :cond_38

    const/16 v3, 0x14

    if-le v1, v3, :cond_39

    :cond_38
    const/16 v3, 0x10

    if-ne v1, v3, :cond_3a

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v3, :cond_3a

    .line 618
    :cond_39
    return v4

    .line 620
    :cond_3a
    const/16 v3, 0x16

    if-ne v1, v3, :cond_3b

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_3c

    :cond_3b
    const/16 v3, 0x17

    if-ne v1, v3, :cond_3d

    iget-boolean v3, v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-nez v3, :cond_3d

    .line 621
    :cond_3c
    const/16 v3, 0x23

    return v3

    .line 623
    :cond_3d
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v3

    if-eqz v3, :cond_42

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_3e

    if-eq v2, v10, :cond_40

    :cond_3e
    const/16 v3, 0x1c

    if-ne v1, v3, :cond_3f

    if-eq v2, v4, :cond_40

    :cond_3f
    const/16 v3, 0x1b

    if-ne v1, v3, :cond_42

    if-eq v2, v15, :cond_42

    if-eq v2, v12, :cond_42

    .line 627
    :cond_40
    const/16 v3, 0x1d

    return v3

    .line 614
    :cond_41
    :goto_9
    return v15

    .line 781
    :cond_42
    :goto_a
    const/4 v3, -0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasCandleLighting()Z
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isTomorrowShabbosOrYomTov()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1620
    const/16 v0, 0x11

    .line 1621
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1622
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getAbsDate()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    :goto_0
    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 1623
    return v1
.end method

.method public isAseresYemeiTeshuva()Z
    .locals 2

    .line 875
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAssurBemelacha()Z
    .locals 2

    .line 826
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isYomTovAssurBemelacha()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isBeHaB()Z
    .locals 5

    .line 1084
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    .line 1085
    .local v0, "dayOfWeek":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 1086
    .local v1, "month":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v2

    .line 1088
    .local v2, "day":I
    const/16 v3, 0x8

    const/4 v4, 0x2

    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_3

    .line 1089
    :cond_0
    if-ne v0, v4, :cond_1

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    const/16 v3, 0x12

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    const/4 v3, 0x7

    if-le v2, v3, :cond_3

    const/16 v3, 0xe

    if-ge v2, v3, :cond_3

    .line 1091
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 1094
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public isBirkasHachamah()Z
    .locals 6

    .line 381
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v0

    invoke-static {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishCalendarElapsedDays(I)I

    move-result v0

    .line 382
    .local v0, "elapsedDays":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDaysSinceStartOfJewishYear()I

    move-result v1

    add-int/2addr v0, v1

    .line 390
    int-to-double v1, v0

    const-wide v3, 0x40c3f98000000000L    # 10227.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    rem-double/2addr v1, v3

    const-wide v3, 0x4065800000000000L    # 172.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_0

    .line 391
    const/4 v1, 0x1

    return v1

    .line 393
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isChanukah()Z
    .locals 2

    .line 1150
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCholHamoed()Z
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCholHamoedPesach()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isCholHamoedSuccos()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCholHamoedPesach()Z
    .locals 2

    .line 901
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 902
    .local v0, "holidayIndex":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCholHamoedSuccos()Z
    .locals 2

    .line 1003
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 1004
    .local v0, "holidayIndex":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isErevRoshChodesh()Z
    .locals 2

    .line 1044
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isErevYomTov()Z
    .locals 3

    .line 1030
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 1031
    .local v0, "holidayIndex":I
    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1031
    :goto_1
    return v1
.end method

.method public isErevYomTovSheni()Z
    .locals 5

    .line 862
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v0

    if-nez v0, :cond_4

    .line 864
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v4, 0x15

    if-eq v0, v4, :cond_3

    .line 865
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0x16

    if-eq v0, v2, :cond_3

    .line 866
    :cond_2
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 862
    :goto_0
    return v1
.end method

.method public isHoshanaRabba()Z
    .locals 2

    .line 966
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 967
    .local v0, "holidayIndex":I
    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isIsruChag()Z
    .locals 2

    .line 1596
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 1597
    .local v0, "holidayIndex":I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMacharChodesh()Z
    .locals 2

    .line 1186
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMashivHaruachEndDate()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMashivHaruachRecited()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 1569
    .local v0, "startDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    new-instance v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 1570
    .local v1, "endDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->compareTo(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->compareTo(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public isMashivHaruachStartDate()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1535
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMoridHatalRecited()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1585
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMashivHaruachRecited()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMashivHaruachStartDate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMashivHaruachEndDate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPesach()Z
    .locals 3

    .line 888
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 889
    .local v0, "holidayIndex":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isPurim()Z
    .locals 4

    .line 1162
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1163
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    const/16 v3, 0x1a

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    const/16 v3, 0x19

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isRoshChodesh()Z
    .locals 3

    .line 1176
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRoshHashana()Z
    .locals 2

    .line 925
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 926
    .local v0, "holidayIndex":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShabbosMevorchim()Z
    .locals 2

    .line 1195
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShavuos()Z
    .locals 2

    .line 913
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 914
    .local v0, "holidayIndex":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShminiAtzeres()Z
    .locals 2

    .line 978
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 979
    .local v0, "holidayIndex":I
    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSimchasTorah()Z
    .locals 2

    .line 990
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 992
    .local v0, "holidayIndex":I
    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSuccos()Z
    .locals 2

    .line 954
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 955
    .local v0, "holidayIndex":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isTaanis()Z
    .locals 2

    .line 1104
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 1105
    .local v0, "holidayIndex":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isTaanisBechoros()Z
    .locals 4

    .line 1116
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    .line 1117
    .local v0, "day":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v1

    .line 1119
    .local v1, "dayOfWeek":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    :cond_0
    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    return v3
.end method

.method public isTishaBav()Z
    .locals 2

    .line 1226
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 1227
    .local v0, "holidayIndex":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTomorrowShabbosOrYomTov()Z
    .locals 2

    .line 852
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isErevYomTov()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isErevYomTovSheni()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUseModernHolidays()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    return v0
.end method

.method public isVeseinBerachaRecited()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1519
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isVeseinTalUmatarRecited()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVeseinTalUmatarRecited()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1493
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 1494
    return v1

    .line 1496
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 1497
    return v3

    .line 1499
    :cond_1
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    if-eqz v0, :cond_4

    .line 1500
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    .line 1502
    :cond_4
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    const/16 v2, 0x2f

    if-lt v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isVeseinTalUmatarStartDate()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1424
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 1426
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1427
    return v3

    .line 1439
    :cond_0
    return v2

    .line 1430
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1431
    return v2

    .line 1433
    :cond_2
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v3, :cond_5

    .line 1434
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2

    .line 1436
    :cond_5
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public isVeseinTalUmatarStartingTonight()Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1461
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1463
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1464
    return v2

    .line 1476
    :cond_0
    return v3

    .line 1467
    :cond_1
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1468
    return v3

    .line 1470
    :cond_2
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    const/16 v4, 0x2e

    if-ne v0, v1, :cond_5

    .line 1471
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2

    .line 1473
    :cond_5
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isYomKippur()Z
    .locals 2

    .line 937
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 938
    .local v0, "holidayIndex":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isYomKippurKatan()Z
    .locals 8

    .line 1057
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    .line 1058
    .local v0, "dayOfWeek":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 1059
    .local v1, "month":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v2

    .line 1060
    .local v2, "day":I
    const/4 v3, 0x0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_4

    const/4 v5, 0x7

    if-eq v1, v5, :cond_4

    const/16 v6, 0x9

    if-eq v1, v6, :cond_4

    const/4 v6, 0x1

    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 1064
    :cond_0
    const/16 v7, 0x1d

    if-ne v2, v7, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    .line 1065
    return v6

    .line 1068
    :cond_1
    const/16 v4, 0x1b

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_3

    :cond_2
    const/4 v4, 0x5

    if-ne v0, v4, :cond_3

    .line 1069
    return v6

    .line 1071
    :cond_3
    return v3

    .line 1061
    :cond_4
    :goto_0
    return v3
.end method

.method public isYomTov()Z
    .locals 4

    .line 800
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 801
    .local v0, "holidayIndex":I
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isErevYomTov()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_2

    .line 802
    :cond_0
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isTaanis()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    .line 803
    :cond_2
    return v2

    .line 805
    :cond_3
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public isYomTovAssurBemelacha()Z
    .locals 3

    .line 815
    invoke-virtual {p0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 816
    .local v0, "holidayIndex":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setInIsrael(Z)V
    .locals 0
    .param p1, "inIsrael"    # Z

    .line 336
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->inIsrael:Z

    .line 337
    return-void
.end method

.method public setIsMukafChoma(Z)V
    .locals 0
    .param p1, "isMukafChoma"    # Z

    .line 369
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isMukafChoma:Z

    .line 370
    return-void
.end method

.method public setUseModernHolidays(Z)V
    .locals 0
    .param p1, "useModernHolidays"    # Z

    .line 246
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->useModernHolidays:Z

    .line 247
    return-void
.end method

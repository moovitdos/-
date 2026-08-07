.class public Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;
.super Ljava/lang/Object;
.source "TefilaRules.java"


# instance fields
.field private tachanunRecited13SivanOutOfIsrael:Z

.field private tachanunRecited15IyarOutOfIsrael:Z

.field private tachanunRecitedEndOfTishrei:Z

.field private tachanunRecitedFridays:Z

.field private tachanunRecitedMinchaAllYear:Z

.field private tachanunRecitedMinchaErevLagBaomer:Z

.field private tachanunRecitedPesachSheni:Z

.field private tachanunRecitedShivasYemeiHamiluim:Z

.field private tachanunRecitedSundays:Z

.field private tachanunRecitedWeekAfterShavuos:Z

.field private tachanunRecitedWeekOfHod:Z

.field private tachanunRecitedWeekOfPurim:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedEndOfTishrei:Z

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekAfterShavuos:Z

    .line 79
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited13SivanOutOfIsrael:Z

    .line 86
    iput-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedPesachSheni:Z

    .line 93
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited15IyarOutOfIsrael:Z

    .line 100
    iput-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaErevLagBaomer:Z

    .line 107
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedShivasYemeiHamiluim:Z

    .line 114
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfHod:Z

    .line 121
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfPurim:Z

    .line 128
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedFridays:Z

    .line 135
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedSundays:Z

    .line 142
    iput-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaAllYear:Z

    return-void
.end method


# virtual methods
.method public isAlHanissimRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 1
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 453
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isPurim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isChanukah()Z

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

.method public isHallelRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 7
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 384
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    .line 385
    .local v0, "day":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 386
    .local v1, "month":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v2

    .line 387
    .local v2, "holidayIndex":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v3

    .line 389
    .local v3, "inIsrael":Z
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isRoshChodesh()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 390
    return v5

    .line 392
    :cond_0
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isChanukah()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    return v5

    .line 395
    :cond_1
    const/16 v4, 0x16

    const/16 v6, 0xf

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 413
    :pswitch_1
    if-lt v0, v6, :cond_7

    if-le v0, v4, :cond_2

    if-nez v3, :cond_7

    const/16 v4, 0x17

    if-gt v0, v4, :cond_7

    .line 414
    :cond_2
    return v5

    .line 408
    :pswitch_2
    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    if-nez v3, :cond_7

    const/4 v4, 0x7

    if-ne v0, v4, :cond_7

    .line 409
    :cond_3
    return v5

    .line 402
    :pswitch_3
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x1f

    if-eq v2, v4, :cond_4

    const/16 v4, 0x20

    if-ne v2, v4, :cond_7

    .line 404
    :cond_4
    return v5

    .line 397
    :pswitch_4
    if-lt v0, v6, :cond_7

    if-eqz v3, :cond_5

    const/16 v6, 0x15

    if-le v0, v6, :cond_6

    :cond_5
    if-nez v3, :cond_7

    if-gt v0, v4, :cond_7

    .line 398
    :cond_6
    return v5

    .line 417
    :cond_7
    :goto_0
    const/4 v4, 0x0

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isHallelShalemRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 6
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 429
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    .line 430
    .local v0, "day":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v1

    .line 431
    .local v1, "month":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v2

    .line 432
    .local v2, "inIsrael":Z
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isHallelRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 433
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isRoshChodesh()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isChanukah()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    if-eqz v2, :cond_1

    const/16 v5, 0xf

    if-gt v0, v5, :cond_2

    :cond_1
    if-nez v2, :cond_3

    const/16 v5, 0x10

    if-le v0, v5, :cond_3

    .line 435
    :cond_2
    return v4

    .line 437
    :cond_3
    return v3

    .line 440
    :cond_4
    return v4
.end method

.method public isMashivHaruachEndDate(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 3
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 343
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMashivHaruachRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 5
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 356
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 357
    .local v0, "startDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    new-instance v1, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishYear()I

    move-result v2

    const/16 v3, 0xf

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;-><init>(III)V

    .line 358
    .local v1, "endDate":Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;
    invoke-virtual {p1, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->compareTo(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->compareTo(Lcom/kosherjava/zmanim/hebrewcalendar/JewishDate;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public isMashivHaruachStartDate(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 2
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 330
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

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

.method public isMoridHatalRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 1
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 371
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isMashivHaruachRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isMashivHaruachStartDate(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isMashivHaruachEndDate(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

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

.method public isTachanunRecited13SivanOutOfIsrael()Z
    .locals 1

    .line 592
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited13SivanOutOfIsrael:Z

    return v0
.end method

.method public isTachanunRecited15IyarOutOfIsrael()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited15IyarOutOfIsrael:Z

    return v0
.end method

.method public isTachanunRecitedEndOfTishrei()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedEndOfTishrei:Z

    return v0
.end method

.method public isTachanunRecitedFridays()Z
    .locals 1

    .line 719
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedFridays:Z

    return v0
.end method

.method public isTachanunRecitedMincha(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 4
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 194
    new-instance v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;-><init>()V

    .line 195
    .local v0, "tomorrow":Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 196
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->forward(II)V

    .line 198
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaAllYear:Z

    if-eqz v1, :cond_2

    .line 199
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_2

    .line 200
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isTachanunRecitedShacharis(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {p0, v0}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isTachanunRecitedShacharis(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaErevLagBaomer:Z

    if-nez v1, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v1

    const/16 v3, 0x21

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    return v2

    .line 206
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isTachanunRecitedMinchaAllYear()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaAllYear:Z

    return v0
.end method

.method public isTachanunRecitedMinchaErevLagBaomer()Z
    .locals 1

    .line 671
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaErevLagBaomer:Z

    return v0
.end method

.method public isTachanunRecitedPesachSheni()Z
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedPesachSheni:Z

    return v0
.end method

.method public isTachanunRecitedShacharis(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 9
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 153
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getYomTovIndex()I

    move-result v0

    .line 154
    .local v0, "holidayIndex":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v1

    .line 155
    .local v1, "day":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v2

    .line 157
    .local v2, "month":I
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_11

    iget-boolean v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedSundays:Z

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v3

    if-eq v3, v5, :cond_11

    :cond_0
    iget-boolean v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedFridays:Z

    if-nez v3, :cond_1

    .line 159
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v3

    const/4 v6, 0x6

    if-eq v3, v6, :cond_11

    :cond_1
    if-eq v2, v5, :cond_11

    const/16 v3, 0x16

    if-ne v2, v4, :cond_3

    iget-boolean v6, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedEndOfTishrei:Z

    const/16 v7, 0x8

    if-nez v6, :cond_2

    if-gt v1, v7, :cond_11

    :cond_2
    iget-boolean v6, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedEndOfTishrei:Z

    if-eqz v6, :cond_3

    if-le v1, v7, :cond_3

    if-lt v1, v3, :cond_11

    :cond_3
    const/4 v6, 0x3

    const/16 v7, 0xd

    if-ne v2, v6, :cond_6

    iget-boolean v8, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekAfterShavuos:Z

    if-eqz v8, :cond_4

    if-lt v1, v4, :cond_11

    :cond_4
    iget-boolean v8, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekAfterShavuos:Z

    if-nez v8, :cond_6

    .line 165
    nop

    .line 164
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited13SivanOutOfIsrael:Z

    if-nez v8, :cond_5

    .line 165
    const/16 v8, 0xe

    goto :goto_0

    :cond_5
    const/16 v8, 0xd

    :goto_0
    if-lt v1, v8, :cond_11

    .line 166
    :cond_6
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isYomTov()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isTaanis()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedPesachSheni:Z

    if-nez v8, :cond_7

    if-eq v0, v6, :cond_11

    .line 168
    :cond_7
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v6

    const/4 v8, 0x2

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedPesachSheni:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited15IyarOutOfIsrael:Z

    if-nez v6, :cond_8

    .line 169
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v6

    if-ne v6, v8, :cond_8

    const/16 v6, 0xf

    if-eq v1, v6, :cond_11

    :cond_8
    if-eq v0, v4, :cond_11

    .line 170
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isIsruChag()Z

    move-result v4

    if-nez v4, :cond_11

    .line 171
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isRoshChodesh()Z

    move-result v4

    if-nez v4, :cond_11

    iget-boolean v4, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedShivasYemeiHamiluim:Z

    const/16 v6, 0xc

    if-nez v4, :cond_b

    .line 173
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v4

    if-nez v4, :cond_9

    if-eq v2, v6, :cond_a

    .line 174
    :cond_9
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v4

    if-eqz v4, :cond_b

    if-ne v2, v7, :cond_b

    :cond_a
    if-gt v1, v3, :cond_11

    :cond_b
    iget-boolean v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfPurim:Z

    if-nez v3, :cond_e

    .line 176
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v3

    if-nez v3, :cond_c

    if-eq v2, v6, :cond_d

    .line 177
    :cond_c
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isJewishLeapYear()Z

    move-result v3

    if-eqz v3, :cond_e

    if-ne v2, v7, :cond_e

    :cond_d
    const/16 v3, 0xa

    if-le v1, v3, :cond_e

    const/16 v3, 0x12

    if-lt v1, v3, :cond_11

    .line 178
    :cond_e
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isUseModernHolidays()Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v3, 0x1f

    if-eq v0, v3, :cond_11

    const/16 v3, 0x20

    if-eq v0, v3, :cond_11

    :cond_f
    iget-boolean v3, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfHod:Z

    if-nez v3, :cond_10

    if-ne v2, v8, :cond_10

    if-le v1, v7, :cond_10

    const/16 v3, 0x15

    if-ge v1, v3, :cond_10

    goto :goto_1

    .line 183
    :cond_10
    return v5

    .line 181
    :cond_11
    :goto_1
    const/4 v3, 0x0

    return v3
.end method

.method public isTachanunRecitedShivasYemeiHamiluim()Z
    .locals 1

    .line 696
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedShivasYemeiHamiluim:Z

    return v0
.end method

.method public isTachanunRecitedSundays()Z
    .locals 1

    .line 740
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedSundays:Z

    return v0
.end method

.method public isTachanunRecitedWeekAfterShavuos()Z
    .locals 1

    .line 563
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekAfterShavuos:Z

    return v0
.end method

.method public isTachanunRecitedWeekOfHod()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfHod:Z

    return v0
.end method

.method public isTachanunRecitedWeekOfPurim()Z
    .locals 1

    .line 490
    iget-boolean v0, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfPurim:Z

    return v0
.end method

.method public isVeseinBerachaRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 1
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 317
    invoke-virtual {p0, p1}, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->isVeseinTalUmatarRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isVeseinTalUmatarRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 4
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 295
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/16 v2, 0xf

    if-ge v0, v2, :cond_0

    .line 296
    return v1

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 299
    return v3

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1

    .line 304
    :cond_4
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    const/16 v2, 0x2f

    if-lt v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isVeseinTalUmatarStartDate(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 5
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 229
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 232
    return v3

    .line 244
    :cond_0
    return v2

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 236
    return v2

    .line 238
    :cond_2
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v3, :cond_5

    .line 239
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_3

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2

    .line 241
    :cond_5
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public isVeseinTalUmatarStartingTonight(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 5
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 265
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getInIsrael()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishMonth()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getJewishDayOfMonth()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 268
    return v2

    .line 280
    :cond_0
    return v3

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 272
    return v3

    .line 274
    :cond_2
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getDayOfWeek()I

    move-result v0

    const/4 v1, 0x7

    const/16 v4, 0x2e

    if-ne v0, v1, :cond_5

    .line 275
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    return v2

    .line 277
    :cond_5
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->getTekufasTishreiElapsedDays()I

    move-result v0

    if-ne v0, v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public isYaalehVeyavoRecited(Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;)Z
    .locals 1
    .param p1, "jewishCalendar"    # Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;

    .line 471
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isPesach()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isShavuos()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isRoshHashana()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isYomKippur()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isSuccos()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isShminiAtzeres()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isSimchasTorah()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/hebrewcalendar/JewishCalendar;->isRoshChodesh()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 471
    :goto_1
    return v0
.end method

.method public setTachanunRecited13SivanOutOfIsrael(Z)V
    .locals 0
    .param p1, "tachanunRecitedThirteenSivanOutOfIsrael"    # Z

    .line 607
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited13SivanOutOfIsrael:Z

    .line 608
    return-void
.end method

.method public setTachanunRecited15IyarOutOfIsrael(Z)V
    .locals 0
    .param p1, "tachanunRecited15IyarOutOfIsrael"    # Z

    .line 661
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecited15IyarOutOfIsrael:Z

    .line 662
    return-void
.end method

.method public setTachanunRecitedEndOfTishrei(Z)V
    .locals 0
    .param p1, "tachanunRecitedEndOfTishrei"    # Z

    .line 550
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedEndOfTishrei:Z

    .line 551
    return-void
.end method

.method public setTachanunRecitedFridays(Z)V
    .locals 0
    .param p1, "tachanunRecitedFridays"    # Z

    .line 729
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedFridays:Z

    .line 730
    return-void
.end method

.method public setTachanunRecitedMinchaAllYear(Z)V
    .locals 0
    .param p1, "tachanunRecitedMinchaAllYear"    # Z

    .line 772
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaAllYear:Z

    .line 773
    return-void
.end method

.method public setTachanunRecitedMinchaErevLagBaomer(Z)V
    .locals 0
    .param p1, "tachanunRecitedMinchaErevLagBaomer"    # Z

    .line 681
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedMinchaErevLagBaomer:Z

    .line 682
    return-void
.end method

.method public setTachanunRecitedPesachSheni(Z)V
    .locals 0
    .param p1, "tachanunRecitedPesachSheni"    # Z

    .line 631
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedPesachSheni:Z

    .line 632
    return-void
.end method

.method public setTachanunRecitedShivasYemeiHamiluim(Z)V
    .locals 0
    .param p1, "tachanunRecitedShivasYemeiHamiluim"    # Z

    .line 708
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedShivasYemeiHamiluim:Z

    .line 709
    return-void
.end method

.method public setTachanunRecitedSundays(Z)V
    .locals 0
    .param p1, "tachanunRecitedSundays"    # Z

    .line 750
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedSundays:Z

    .line 751
    return-void
.end method

.method public setTachanunRecitedWeekAfterShavuos(Z)V
    .locals 0
    .param p1, "tachanunRecitedWeekAfterShavuos"    # Z

    .line 572
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekAfterShavuos:Z

    .line 573
    return-void
.end method

.method public setTachanunRecitedWeekOfHod(Z)V
    .locals 0
    .param p1, "tachanunRecitedWeekOfHod"    # Z

    .line 526
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfHod:Z

    .line 527
    return-void
.end method

.method public setTachanunRecitedWeekOfPurim(Z)V
    .locals 0
    .param p1, "tachanunRecitedWeekOfPurim"    # Z

    .line 503
    iput-boolean p1, p0, Lcom/kosherjava/zmanim/hebrewcalendar/TefilaRules;->tachanunRecitedWeekOfPurim:Z

    .line 504
    return-void
.end method

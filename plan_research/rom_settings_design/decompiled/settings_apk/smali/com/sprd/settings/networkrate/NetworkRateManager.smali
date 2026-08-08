.class public Lcom/sprd/settings/networkrate/NetworkRateManager;
.super Ljava/lang/Object;
.source "NetworkRateManager.java"

# interfaces
.implements Lcom/android/settings/DataUsageSummary$DataUsageViewChangedReceive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;,
        Lcom/sprd/settings/networkrate/NetworkRateManager$RateData;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentSubId:I

.field private mDownLinkRate:Landroid/widget/TextView;

.field private mNetWorkType:Ljava/lang/String;

.field private mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

.field private mResources:Landroid/content/res/Resources;

.field private mTotalRate:Landroid/widget/TextView;

.field private mUpLinkRate:Landroid/widget/TextView;

.field private mUpdateUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    .line 32
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mDownLinkRate:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mTotalRate:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mCurrentSubId:I

    .line 59
    new-instance v0, Lcom/sprd/settings/networkrate/NetworkRateManager$1;

    invoke-direct {v0, p0}, Lcom/sprd/settings/networkrate/NetworkRateManager$1;-><init>(Lcom/sprd/settings/networkrate/NetworkRateManager;)V

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpdateUIHandler:Landroid/os/Handler;

    .line 178
    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    .line 181
    iput-object p1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    .line 182
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mResources:Landroid/content/res/Resources;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/networkrate/NetworkRateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;

    .prologue
    .line 19
    iget v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mCurrentSubId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/networkrate/NetworkRateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sprd/settings/networkrate/NetworkRateManager;->showNetworkRateViews(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sprd/settings/networkrate/NetworkRateManager;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .prologue
    .line 19
    invoke-direct/range {p0 .. p6}, Lcom/sprd/settings/networkrate/NetworkRateManager;->updateNetworkRate(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/settings/networkrate/NetworkRateManager;JJ)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/settings/networkrate/NetworkRateManager;->updateNetworkTotal(JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sprd/settings/networkrate/NetworkRateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->isMobileDataUsageView()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sprd/settings/networkrate/NetworkRateManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpdateUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sprd/settings/networkrate/NetworkRateManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/networkrate/NetworkRateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sprd/settings/networkrate/NetworkRateManager;->networkRateUpdate(Z)V

    return-void
.end method

.method private formatDataSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # J
    .param p4, "shorter"    # Z

    .prologue
    const/high16 v8, 0x44800000    # 1024.0f

    const/high16 v5, 0x44610000    # 900.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    if-nez p1, :cond_0

    .line 268
    const-string v3, ""

    .line 313
    :goto_0
    return-object v3

    .line 271
    :cond_0
    const-wide/16 v3, 0x8

    div-long/2addr p2, v3

    .line 273
    long-to-float v0, p2

    .line 274
    .local v0, "result":F
    const v1, 0x104008c

    .line 275
    .local v1, "suffix":I
    cmpl-float v3, v0, v5

    if-lez v3, :cond_1

    .line 276
    const v1, 0x104008d

    .line 277
    div-float/2addr v0, v8

    .line 279
    :cond_1
    cmpl-float v3, v0, v5

    if-lez v3, :cond_2

    .line 280
    const v1, 0x104008e

    .line 281
    div-float/2addr v0, v8

    .line 283
    :cond_2
    cmpl-float v3, v0, v5

    if-lez v3, :cond_3

    .line 284
    const v1, 0x104008f

    .line 285
    div-float/2addr v0, v8

    .line 287
    :cond_3
    cmpl-float v3, v0, v5

    if-lez v3, :cond_4

    .line 288
    const v1, 0x1040090

    .line 289
    div-float/2addr v0, v8

    .line 291
    :cond_4
    cmpl-float v3, v0, v5

    if-lez v3, :cond_5

    .line 292
    const v1, 0x1040091

    .line 293
    div-float/2addr v0, v8

    .line 296
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 297
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040092

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 298
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 299
    if-eqz p4, :cond_7

    .line 300
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 302
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 304
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 305
    if-eqz p4, :cond_9

    .line 306
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 308
    .end local v2    # "value":Ljava/lang/String;
    :cond_9
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 311
    .end local v2    # "value":Ljava/lang/String;
    :cond_a
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # J
    .param p4, "shorter"    # Z

    .prologue
    const/high16 v5, 0x44800000    # 1024.0f

    const/high16 v4, 0x44610000    # 900.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string v3, ""

    .line 261
    :goto_0
    return-object v3

    .line 221
    :cond_0
    long-to-float v0, p2

    .line 222
    .local v0, "result":F
    const v1, 0x7f090854

    .line 223
    .local v1, "suffix":I
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 224
    const v1, 0x7f090855

    .line 225
    div-float/2addr v0, v5

    .line 227
    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 228
    const v1, 0x7f090856

    .line 229
    div-float/2addr v0, v5

    .line 231
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 232
    const v1, 0x7f090857

    .line 233
    div-float/2addr v0, v5

    .line 235
    :cond_3
    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    .line 236
    const v1, 0x7f090858

    .line 237
    div-float/2addr v0, v5

    .line 239
    :cond_4
    cmpl-float v3, v0, v4

    if-lez v3, :cond_5

    .line 240
    const v1, 0x7f090859

    .line 241
    div-float/2addr v0, v5

    .line 244
    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 245
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040092

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 246
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 247
    if-eqz p4, :cond_7

    .line 248
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 250
    .end local v2    # "value":Ljava/lang/String;
    :cond_7
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 252
    .end local v2    # "value":Ljava/lang/String;
    :cond_8
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 253
    if-eqz p4, :cond_9

    .line 254
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 256
    .end local v2    # "value":Ljava/lang/String;
    :cond_9
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1

    .line 259
    .end local v2    # "value":Ljava/lang/String;
    :cond_a
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method private isMobileDataUsageView()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 348
    iget-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3g"

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "4g"

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private networkRateInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    :cond_1
    return-void
.end method

.method private networkRateUpdate(Z)V
    .locals 4
    .param p1, "bDelay"    # Z

    .prologue
    const/4 v3, 0x1

    .line 374
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_0
    if-eqz p1, :cond_3

    .line 379
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    if-nez v0, :cond_2

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showNetworkRateViews(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-eqz p1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mDownLinkRate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mTotalRate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mDownLinkRate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mTotalRate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNetworkRate(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "uplinkMax"    # Ljava/lang/String;
    .param p2, "downlinkMax"    # Ljava/lang/String;
    .param p3, "uplinkRate"    # J
    .param p5, "downlinkRate"    # J

    .prologue
    .line 321
    if-nez p1, :cond_0

    const-string v2, "0Kbps"

    .line 322
    .local v2, "uplinkMaxStr":Ljava/lang/String;
    :goto_0
    if-nez p2, :cond_1

    const-string v0, "0Kbps"

    .line 323
    .local v0, "downlinkMaxStr":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sprd/settings/networkrate/NetworkRateManager;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "uplinkStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/sprd/settings/networkrate/NetworkRateManager;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "downlinkStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090851

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v4, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mDownLinkRate:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090852

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    return-void

    .end local v0    # "downlinkMaxStr":Ljava/lang/String;
    .end local v1    # "downlinkStr":Ljava/lang/String;
    .end local v2    # "uplinkMaxStr":Ljava/lang/String;
    .end local v3    # "uplinkStr":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 321
    goto :goto_0

    .restart local v2    # "uplinkMaxStr":Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .line 322
    goto :goto_1
.end method

.method private updateNetworkTotal(JJ)V
    .locals 8
    .param p1, "sendTotal"    # J
    .param p3, "recTotal"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 333
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sprd/settings/networkrate/NetworkRateManager;->formatDataSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "sendStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sprd/settings/networkrate/NetworkRateManager;->formatDataSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "recStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mTotalRate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090853

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    .line 407
    :cond_0
    return-void
.end method

.method public initializeRateViews(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 187
    if-eqz p1, :cond_0

    .line 189
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpLinkRate:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0b00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mDownLinkRate:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0b00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mTotalRate:Landroid/widget/TextView;

    .line 195
    :cond_0
    return-void
.end method

.method public onDataUsageViewChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mNetWorkType:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mUpdateUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 344
    invoke-direct {p0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->networkRateInit()V

    .line 345
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/sprd/settings/networkrate/NetworkRateManager;->clean()V

    .line 396
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "measure_network_rate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 399
    new-instance v1, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    iget-object v2, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;-><init>(Lcom/sprd/settings/networkrate/NetworkRateManager;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mRateHandler:Lcom/sprd/settings/networkrate/NetworkRateManager$RateHandler;

    .line 400
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 410
    iput p1, p0, Lcom/sprd/settings/networkrate/NetworkRateManager;->mCurrentSubId:I

    .line 411
    return-void
.end method

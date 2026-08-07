.class public Lcom/sprd/simple/util/UnreadCountStyleUtil;
.super Ljava/lang/Object;
.source "UnreadCountStyleUtil.java"


# static fields
.field private static mLargeTextSize:F

.field private static mMiddleTextSize:F

.field private static mSmallTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/high16 v0, 0x41600000    # 14.0f

    sput v0, Lcom/sprd/simple/util/UnreadCountStyleUtil;->mLargeTextSize:F

    .line 17
    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Lcom/sprd/simple/util/UnreadCountStyleUtil;->mMiddleTextSize:F

    .line 18
    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/sprd/simple/util/UnreadCountStyleUtil;->mSmallTextSize:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setReadCountStyle(Landroid/widget/TextView;I)V
    .locals 5
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "count"    # I

    .prologue
    const/4 v4, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    const/16 v1, 0x63

    if-gt p1, v1, :cond_1

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "finalText":Ljava/lang/String;
    :goto_0
    const-string v1, "UnreadCountStyleUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReadCount count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 37
    sget v1, Lcom/sprd/simple/util/UnreadCountStyleUtil;->mSmallTextSize:F

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    const/4 v1, 0x5

    invoke-virtual {p0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    const-string v1, "UnreadCountStyleUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReadCount textView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    .end local v0    # "finalText":Ljava/lang/String;
    :cond_0
    return-void

    .line 26
    :cond_1
    const-string v0, "99+"

    .restart local v0    # "finalText":Ljava/lang/String;
    goto :goto_0

    .line 31
    :pswitch_0
    sget v1, Lcom/sprd/simple/util/UnreadCountStyleUtil;->mLargeTextSize:F

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 34
    :pswitch_1
    sget v1, Lcom/sprd/simple/util/UnreadCountStyleUtil;->mMiddleTextSize:F

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

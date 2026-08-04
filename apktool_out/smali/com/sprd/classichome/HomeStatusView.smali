.class public Lcom/sprd/classichome/HomeStatusView;
.super Landroid/widget/LinearLayout;
.source "HomeStatusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/HomeStatusView$Patterns;
    }
.end annotation


# instance fields
.field private mClockView:Landroid/widget/TextClock;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextClock;

.field private mLunarView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->refreshTime()V

    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->updateLunarDateView()V

    :cond_0
    return-void
.end method

.method public refreshTime()V
    .locals 3

    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/HomeStatusView$Patterns;->update(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sprd/classichome/HomeStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sprd/classichome/HomeStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lcom/sprd/classichome/HomeStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sprd/classichome/HomeStatusView;->updateAmPmTextSize(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sprd/classichome/HomeStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->updateLunarDateView()V

    return-void
.end method

.method public updateAmPmTextSize(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const/16 v4, 0x21

    if-gtz p1, :cond_0

    const-string v2, "a"

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    :cond_0
    const-string v2, " "

    const-string v3, "\u200a"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x61

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :goto_0
    return-object p2

    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v2, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string v3, "sans-serif-condensed"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p2, v1

    goto :goto_0
.end method

.method public updateLunarDateView()V
    .locals 7

    .prologue
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .local v3, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .local v4, "month":I
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "day":I
    invoke-static {v3, v4, v5}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildHebrewDate(III)Ljava/lang/String;

    move-result-object v2

    .local v2, "hebrewDateStr":Ljava/lang/String;
    iget-object v6, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "HomeStatusView"

    const-string p0, "Error getting Hebrew date from Duoqin lib"

    invoke-static {v6, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

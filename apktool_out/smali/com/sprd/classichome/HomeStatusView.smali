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

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public applyCustomSettings()V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    if-nez v0, :cond_1

    .line 72
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    if-nez v0, :cond_2

    .line 75
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 78
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->isClockEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 84
    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockSize(Landroid/content/Context;)I

    move-result v0

    .line 86
    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockColor(Landroid/content/Context;)I

    move-result v0

    .line 89
    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 91
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->getClockFontStyle(Landroid/content/Context;)I

    move-result v0

    .line 93
    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    .line 107
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_1

    .line 104
    :cond_5
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 105
    goto :goto_1

    .line 101
    :cond_6
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 102
    goto :goto_1

    .line 98
    :cond_7
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 99
    goto :goto_1

    .line 95
    :cond_8
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 96
    nop

    .line 110
    :goto_1
    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    invoke-virtual {v3, v0}, Landroid/widget/TextClock;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    :cond_9
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->isDateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 127
    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    if-eqz v0, :cond_a

    const/4 v4, 0x0

    goto :goto_2

    :cond_a
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextClock;->setVisibility(I)V

    .line 128
    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateSize(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setTextSize(F)V

    .line 130
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sprd/classichome/settings/LauncherSettings;->getDateColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextClock;->setTextColor(I)V

    .line 135
    :cond_b
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 136
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->isHebrewDateEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 137
    iget-object v3, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    :cond_c
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateSize(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sprd/classichome/settings/LauncherSettings;->getHebrewDateColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->updateLunarDateView()V

    .line 147
    :cond_d
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/settings/LauncherSettings;->createCardBackground(Landroid/content/Context;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    goto :goto_3

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    const-string v1, "HomeStatusView"

    const-string v2, "Unable to apply card background"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :goto_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    .line 47
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextClock;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    .line 48
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/HomeStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->refreshTime()V

    .line 50
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->applyCustomSettings()V

    .line 51
    return-void
.end method

.method public refreshTime()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sprd/classichome/HomeStatusView$Patterns;->update(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    if-eqz v0, :cond_0

    .line 56
    sget-object v1, Lcom/sprd/classichome/HomeStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mDateView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sprd/classichome/HomeStatusView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Lcom/sprd/classichome/HomeStatusView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/sprd/classichome/HomeStatusView;->updateAmPmTextSize(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/sprd/classichome/HomeStatusView;->mClockView:Landroid/widget/TextClock;

    sget-object v1, Lcom/sprd/classichome/HomeStatusView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->updateLunarDateView()V

    .line 64
    invoke-virtual {p0}, Lcom/sprd/classichome/HomeStatusView;->applyCustomSettings()V

    .line 65
    return-void
.end method

.method public updateAmPmTextSize(ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 154
    if-gtz p1, :cond_0

    .line 155
    const-string v0, "a"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    :cond_0
    const-string v0, " "

    const-string v1, "\u200a"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 158
    const/16 v0, 0x61

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 159
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 160
    return-object p2

    .line 162
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x21

    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 164
    new-instance p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p2, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1, p2, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 165
    new-instance p1, Landroid/text/style/TypefaceSpan;

    const-string p2, "sans-serif-condensed"

    invoke-direct {p1, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 166
    return-object v1
.end method

.method public updateLunarDateView()V
    .locals 4

    .line 171
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 173
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    .line 174
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 175
    invoke-static {v2, v3, v0}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildHebrewDate(III)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/sprd/classichome/HomeStatusView;->mLunarView:Landroid/widget/TextView;

    .line 177
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    const-string v1, "HomeStatusView"

    const-string v2, "Error getting Hebrew date from Duoqin lib"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :goto_0
    return-void
.end method

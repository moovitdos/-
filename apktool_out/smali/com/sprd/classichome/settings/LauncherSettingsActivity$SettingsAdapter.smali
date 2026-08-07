.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mRomRowLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;",
            ">;)V"
        }
    .end annotation

    .line 1446
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1447
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    .line 1448
    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    .line 1449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "duoqin_layout_preference"

    const-string v0, "layout"

    const-string v1, "android"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mRomRowLayout:I

    .line 1451
    return-void
.end method

.method private attachToggle(Landroid/view/ViewGroup;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)V
    .locals 2

    .line 1573
    nop

    .line 1574
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1577
    new-instance p2, Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1578
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1580
    new-instance p2, Landroid/widget/Switch;

    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1578
    :cond_1
    const/4 p2, 0x0

    .line 1582
    :goto_0
    if-eqz p2, :cond_2

    .line 1585
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 1586
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setFocusableInTouchMode(Z)V

    .line 1587
    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 1588
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1591
    iput-object p2, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->toggle:Landroid/widget/CompoundButton;

    .line 1593
    :cond_2
    return-void
.end method

.method private makeFallbackRow(ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)Landroid/view/View;
    .locals 8

    .line 1597
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1598
    const/high16 v1, 0x41400000    # 12.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 1599
    const/high16 v2, 0x40800000    # 4.0f

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 1601
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1602
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1603
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1604
    invoke-virtual {v3, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1605
    const/high16 v1, 0x42880000    # 68.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 1607
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1608
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1609
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const v7, 0x1010041

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1610
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1611
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    const v7, 0x1010042

    invoke-direct {v1, v5, v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1612
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1613
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1614
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1618
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1619
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    iput-object v2, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->title:Landroid/widget/TextView;

    .line 1624
    iput-object v1, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->summary:Landroid/widget/TextView;

    .line 1625
    invoke-direct {p0, v0, p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->attachToggle(Landroid/view/ViewGroup;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)V

    .line 1626
    return-object v3
.end method

.method private makeRow(Landroid/view/ViewGroup;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)Landroid/view/View;
    .locals 5

    .line 1546
    nop

    .line 1547
    iget v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mRomRowLayout:I

    if-eqz v0, :cond_1

    .line 1548
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mRomRowLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1549
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1550
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1551
    const v2, 0x1020006

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1552
    const v3, 0x1020018

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1553
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 1558
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1559
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    :cond_0
    iput-object v0, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->title:Landroid/widget/TextView;

    .line 1562
    iput-object v1, p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->summary:Landroid/widget/TextView;

    .line 1563
    invoke-direct {p0, v3, p2, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->attachToggle(Landroid/view/ViewGroup;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)V

    .line 1564
    return-object p1

    .line 1569
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->makeFallbackRow(ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1460
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1465
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    iget p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1503
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    .line 1505
    iget v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1507
    if-nez p2, :cond_0

    .line 1511
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mContext:Landroid/content/Context;

    const v0, 0x1010208

    invoke-direct {p2, p3, v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_0

    .line 1514
    :cond_0
    check-cast p2, Landroid/widget/TextView;

    .line 1516
    :goto_0
    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    return-object p2

    .line 1520
    :cond_1
    nop

    .line 1522
    if-nez p2, :cond_2

    .line 1523
    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;

    invoke-direct {p2, v1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;)V

    .line 1524
    iget v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    invoke-direct {p0, p3, v0, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->makeRow(Landroid/view/ViewGroup;ILcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;)Landroid/view/View;

    move-result-object p3

    .line 1525
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1527
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;

    move-object v2, p3

    move-object p3, p2

    move-object p2, v2

    .line 1530
    :goto_1
    iget-object v0, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1531
    iget-object v0, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1532
    iget-object v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1535
    :cond_3
    iget-object v0, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    iget-object v0, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1533
    :cond_4
    :goto_2
    iget-object v0, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->summary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1539
    :cond_5
    :goto_3
    iget-object v0, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->toggle:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_6

    .line 1540
    iget-object p2, p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter$RowHolder;->toggle:Landroid/widget/CompoundButton;

    iget-boolean p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->checked:Z

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1542
    :cond_6
    return-object p3
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1470
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1491
    iget-object v0, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingsAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    .line 1492
    iget v0, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->type:I

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->enabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.class public Lcom/sprd/classichome/widget/WidgetHostManager;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400

.field static final DEFAULT_WIDGET_H_PX:I = 0x48

.field static final EDIT_STEP_PX:I = 0x4

.field private static final MIN_USABLE_PX:I = 0x3c

.field static final MIN_WIDGET_PX:I = 0x20

.field private static final MODE_BOTTOM:I = 0x4

.field private static final MODE_LEFT:I = 0x1

.field private static final MODE_MOVE:I = 0x0

.field private static final MODE_RIGHT:I = 0x3

.field private static final MODE_TOP:I = 0x2

.field private static final PREFS_NAME:Ljava/lang/String; = "launcher_widget_prefs"

.field private static final PREF_KEY_WIDGET_LIST:Ljava/lang/String; = "widget_list_json"

.field public static final REQUEST_CREATE_WIDGET:I = 0x3ed

.field private static final TAG:Ljava/lang/String; = "WidgetHostManager"

.field private static sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mEditHint:Landroid/widget/TextView;

.field private mEditHolder:Landroid/view/View;

.field private mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

.field private mEditMode:I

.field private mOrigH:I

.field private mOrigW:I

.field private mOrigX:I

.field private mOrigY:I

.field private mPendingConfigurationStarted:Z

.field private mPendingConfigureComponent:Landroid/content/ComponentName;

.field private mPendingLabel:Ljava/lang/String;

.field private mPendingPkg:Ljava/lang/String;

.field private mPendingTargetPage:I

.field private mPendingWidgetId:I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    .line 134
    new-instance p1, Landroid/appwidget/AppWidgetHost;

    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x400

    invoke-direct {p1, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 135
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 136
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    const-string v0, "launcher_widget_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprd/classichome/widget/WidgetHostManager;->beginEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->clampAllToSurface(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->beginEditById(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$300(I)Z
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->isEditKey(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->step(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/classichome/widget/WidgetHostManager;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditMode:I

    return p0
.end method

.method static synthetic access$502(Lcom/sprd/classichome/widget/WidgetHostManager;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditMode:I

    return p1
.end method

.method static synthetic access$600(II)I
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->nextMode(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/sprd/classichome/widget/WidgetHostManager;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->updateEditHint(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->commitEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private applyWidgetSize(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 4

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 884
    iget v1, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    .line 885
    iget v2, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 886
    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v3, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 887
    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 888
    :cond_0
    const-string v3, "appWidgetMinWidth"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    const-string v3, "appWidgetMaxWidth"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v1, "appWidgetMinHeight"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 891
    const-string v1, "appWidgetMaxHeight"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 892
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget p1, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v0, p1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    goto :goto_0

    .line 893
    :catchall_0
    move-exception p1

    .line 894
    const-string v0, "WidgetHostManager"

    const-string v1, "Could not push widget size options"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    :goto_0
    return-void
.end method

.method private beginEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    .line 657
    iput-object p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditMode:I

    .line 659
    iget v0, p4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigX:I

    .line 660
    iget v0, p4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigY:I

    .line 661
    iget v0, p4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigW:I

    .line 662
    iget v0, p4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigH:I

    .line 666
    const/high16 v0, 0x40000

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 668
    invoke-virtual {p3, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 669
    const v0, -0xff3f2c

    invoke-static {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->editBorder(I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 672
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget p4, p4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v0, p4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p4

    .line 673
    if-eqz p4, :cond_1

    iget p4, p4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    goto :goto_0

    :cond_1
    const/4 p4, 0x3

    .line 675
    :goto_0
    invoke-direct {p0, p1, p2, p4}, Lcom/sprd/classichome/widget/WidgetHostManager;->showEditHint(Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    .line 677
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$5;

    invoke-direct {v0, p0, p2, p4, p1}, Lcom/sprd/classichome/widget/WidgetHostManager$5;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/view/ViewGroup;ILandroid/app/Activity;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 718
    return-void
.end method

.method private beginEditById(Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 5

    .line 611
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v1

    .line 612
    nop

    .line 613
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 614
    iget v4, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ne v4, p3, :cond_4

    .line 615
    nop

    .line 616
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 617
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 618
    instance-of v4, v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    if-ne v1, v4, :cond_0

    goto :goto_2

    .line 619
    :cond_0
    if-ne p3, v2, :cond_1

    .line 620
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/sprd/classichome/widget/WidgetHostManager;->beginEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    .line 621
    return-void

    .line 623
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 616
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_3
    return-void

    .line 627
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 628
    goto :goto_0

    .line 629
    :cond_5
    const-string p2, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05e0\u05de\u05e6\u05d0 \u05d1\u05e2\u05de\u05d5\u05d3 \u05d0\u05d7\u05e8, \u05dc\u05d0 \u05d1\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 631
    return-void
.end method

.method private static canResizeH(I)Z
    .locals 2

    .line 766
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private static canResizeV(I)Z
    .locals 1

    .line 771
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private clampAllToSurface(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 12

    .line 582
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 583
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 584
    const/16 v1, 0x3c

    if-lt p1, v1, :cond_7

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    .line 586
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v2

    .line 587
    nop

    .line 588
    nop

    .line 589
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 590
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 591
    instance-of v6, v5, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    if-ne v5, v6, :cond_1

    goto :goto_2

    .line 592
    :cond_1
    add-int/lit8 v6, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 593
    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iget v8, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iget v9, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iget v10, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 594
    invoke-static {v3, p1, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->clampToSurface(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;II)V

    .line 595
    iget v11, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    if-ne v7, v11, :cond_3

    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    if-ne v8, v7, :cond_3

    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    if-ne v9, v7, :cond_3

    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    if-eq v10, v7, :cond_2

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2

    .line 596
    :cond_3
    :goto_1
    nop

    .line 597
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 598
    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 599
    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 600
    iget v7, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 601
    iget v3, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 602
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    move v3, v6

    const/4 v4, 0x1

    .line 589
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_5
    if-eqz v4, :cond_6

    .line 606
    invoke-direct {p0, v2}, Lcom/sprd/classichome/widget/WidgetHostManager;->getMergedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 608
    :cond_6
    return-void

    .line 584
    :cond_7
    :goto_3
    return-void
.end method

.method static clampToSurface(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;II)V
    .locals 2

    .line 281
    if-lez p1, :cond_9

    if-gtz p2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 283
    :cond_1
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    if-le v0, p2, :cond_2

    iput p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 284
    :cond_2
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_3

    iput v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 285
    :cond_3
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    if-ge v0, v1, :cond_4

    iput v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 286
    :cond_4
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    const/4 v1, 0x0

    if-gez v0, :cond_5

    iput v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 287
    :cond_5
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    if-gez v0, :cond_6

    iput v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 288
    :cond_6
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iget v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_7

    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 289
    :cond_7
    iget p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    add-int/2addr p1, v0

    if-le p1, p2, :cond_8

    iget p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 290
    :cond_8
    return-void

    .line 281
    :cond_9
    :goto_0
    return-void
.end method

.method private commitEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 8

    .line 840
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    if-nez v0, :cond_0

    return-void

    .line 842
    :cond_0
    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 843
    iget v3, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v4, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v5, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v6, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v7, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveGeometry(IIIII)V

    .line 844
    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {p0, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->applyWidgetSize(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    .line 845
    const-string p3, "\u05e0\u05e9\u05de\u05e8"

    invoke-static {p1, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 847
    :cond_1
    iget p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigX:I

    iput p1, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 848
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigY:I

    iput p3, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 849
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigW:I

    iput p3, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 850
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigH:I

    iput p3, p1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 851
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 852
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigW:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 853
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigH:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 854
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigX:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 855
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mOrigY:I

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 856
    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 859
    :goto_0
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 860
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 862
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 863
    const/high16 p1, 0x60000

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 864
    invoke-direct {p0, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->hideEditHint(Landroid/view/ViewGroup;)V

    .line 866
    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    .line 867
    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 868
    iput v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditMode:I

    .line 869
    return-void
.end method

.method private deletePendingWidgetId()V
    .locals 3

    .line 1109
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1111
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    const-string v1, "WidgetHostManager"

    const-string v2, "Error deleting pending widget id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1116
    :cond_0
    :goto_0
    return-void
.end method

.method private static editBorder(I)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .line 899
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 900
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 901
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 902
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 903
    return-object v0
.end method

.method private finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1086
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1088
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Skipping invalid widget id "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetHostManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->deletePendingWidgetId()V

    .line 1090
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 1091
    return-void

    .line 1093
    :cond_1
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->addWidget(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    .line 1094
    const/4 p2, 0x0

    const-string p3, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05e0\u05d5\u05e1\u05e3 \u05d1\u05d4\u05e6\u05dc\u05d7\u05d4"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 1095
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->notifyActivityRefresh(Landroid/app/Activity;)V

    .line 1096
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 1097
    return-void

    .line 1086
    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;
    .locals 2

    const-class v0, Lcom/sprd/classichome/widget/WidgetHostManager;

    monitor-enter v0

    .line 140
    :try_start_0
    sget-object v1, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager;

    invoke-direct {v1, p0}, Lcom/sprd/classichome/widget/WidgetHostManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;

    .line 143
    :cond_0
    sget-object p0, Lcom/sprd/classichome/widget/WidgetHostManager;->sInstance:Lcom/sprd/classichome/widget/WidgetHostManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 139
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMergedList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;"
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 964
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 965
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 966
    iget v5, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    iget v6, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ne v5, v6, :cond_0

    .line 967
    iget v5, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iput v5, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 968
    iget v5, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iput v5, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 969
    iget v5, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iput v5, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 970
    iget v4, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    iput v4, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 972
    :cond_0
    goto :goto_1

    .line 973
    :cond_1
    goto :goto_0

    .line 974
    :cond_2
    return-object v0
.end method

.method private hideEditHint(Landroid/view/ViewGroup;)V
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 945
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    .line 947
    :cond_0
    return-void
.end method

.method private static isEditKey(I)Z
    .locals 1

    .line 759
    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private layoutPage0(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;)V"
        }
    .end annotation

    .line 482
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {p1 .. p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->usableWidth(Landroid/app/Activity;Landroid/view/ViewGroup;)I

    move-result v10

    .line 483
    invoke-static/range {p1 .. p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->usableHeight(Landroid/app/Activity;Landroid/view/ViewGroup;)I

    move-result v11

    .line 485
    nop

    .line 486
    nop

    .line 488
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 489
    iget-object v2, v7, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v4, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v2, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 490
    if-nez v2, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {v14}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->hasGeometry()Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x48

    if-nez v4, :cond_1

    .line 494
    iput v13, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 495
    iput v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 496
    iput v10, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 497
    iput v6, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 498
    const/4 v15, 0x1

    goto :goto_1

    .line 492
    :cond_1
    move v15, v0

    .line 500
    :goto_1
    invoke-static {v14, v10, v11}, Lcom/sprd/classichome/widget/WidgetHostManager;->clampToSurface(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;II)V

    .line 501
    iget v0, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iget v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    add-int/2addr v0, v1

    add-int/lit8 v1, v11, -0x48

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 504
    :try_start_0
    iget-object v0, v7, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v0, v8, v1, v2}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 505
    iget v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 506
    invoke-static {v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->makeViewOnly(Landroid/view/View;)V

    .line 508
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 509
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    .line 513
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move-object v13, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/sprd/classichome/widget/WidgetHostManager$2;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 521
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iget v2, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 522
    const/16 v1, 0x33

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 523
    iget v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 524
    iget v1, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 525
    invoke-virtual {v9, v13, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    goto :goto_2

    .line 526
    :catch_0
    move-exception v0

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating page 0 widget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WidgetHostManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    :goto_2
    move v0, v15

    move/from16 v1, v16

    const/4 v13, 0x0

    goto/16 :goto_0

    .line 531
    :cond_2
    if-eqz v0, :cond_3

    .line 532
    move-object/from16 v1, p3

    invoke-direct {v7, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->getMergedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 537
    :cond_3
    new-instance v0, Lcom/sprd/classichome/widget/WidgetHostManager$3;

    invoke-direct {v0, v7, v8, v9}, Lcom/sprd/classichome/widget/WidgetHostManager$3;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 547
    nop

    .line 548
    invoke-static/range {p1 .. p1}, Lcom/sprd/classichome/settings/LauncherSettings;->takePendingWidgetEdit(Landroid/content/Context;)I

    move-result v0

    .line 549
    if-eq v0, v3, :cond_4

    .line 550
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager$4;

    invoke-direct {v1, v7, v8, v9, v0}, Lcom/sprd/classichome/widget/WidgetHostManager$4;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Landroid/view/ViewGroup;I)V

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 557
    :cond_4
    return-void
.end method

.method public static makeViewOnly(Landroid/view/View;)V
    .locals 2

    .line 978
    if-nez p0, :cond_0

    return-void

    .line 979
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 980
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 981
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 982
    invoke-virtual {p0, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 983
    new-instance v1, Lcom/sprd/classichome/widget/WidgetHostManager$6;

    invoke-direct {v1}, Lcom/sprd/classichome/widget/WidgetHostManager$6;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 989
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 990
    check-cast p0, Landroid/view/ViewGroup;

    .line 991
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 992
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 993
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->makeViewOnly(Landroid/view/View;)V

    .line 992
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    :cond_1
    return-void
.end method

.method private static nextMode(II)I
    .locals 4

    .line 777
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    .line 778
    const/4 v3, 0x1

    add-int/2addr p0, v3

    rem-int/2addr p0, v2

    .line 779
    if-nez p0, :cond_0

    return p0

    .line 780
    :cond_0
    if-eq p0, v3, :cond_1

    const/4 v2, 0x3

    if-ne p0, v2, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->canResizeH(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p0

    .line 781
    :cond_2
    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x4

    if-ne p0, v2, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->canResizeV(I)Z

    move-result v2

    if-eqz v2, :cond_4

    return p0

    .line 777
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 783
    :cond_5
    return v0
.end method

.method private notifyActivityRefresh(Landroid/app/Activity;)V
    .locals 4

    .line 316
    if-nez p1, :cond_0

    return-void

    .line 318
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "refreshWidgets"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 319
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception p1

    .line 321
    const-string v0, "WidgetHostManager"

    const-string v1, "Failed to invoke refreshWidgets via reflection"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    :goto_0
    return-void
.end method

.method private purgeInvalidWidgets()V
    .locals 6

    .line 206
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    nop

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 210
    if-eqz v3, :cond_1

    iget v4, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v5, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 211
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    iget v2, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ltz v2, :cond_2

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v3, v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_2

    .line 214
    :catch_0
    move-exception v2

    .line 217
    :cond_2
    :goto_2
    const/4 v2, 0x1

    .line 221
    :goto_3
    goto :goto_0

    .line 222
    :cond_3
    if-eqz v2, :cond_4

    .line 223
    invoke-virtual {p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 225
    :cond_4
    return-void
.end method

.method private resetPendingWidget()V
    .locals 1

    .line 1119
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 1120
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 1121
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 1122
    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigureComponent:Landroid/content/ComponentName;

    .line 1124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    .line 1125
    return-void
.end method

.method private showEditHint(Landroid/app/Activity;Landroid/view/ViewGroup;I)V
    .locals 3

    .line 907
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    .line 910
    const/high16 p1, 0x41400000    # 12.0f

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 911
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 912
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 913
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 914
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 915
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 918
    const/16 v0, 0x53

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 919
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 920
    invoke-direct {p0, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->updateEditHint(I)V

    .line 921
    return-void
.end method

.method private startConfigurationActivity(Landroid/app/Activity;ILandroid/content/ComponentName;)V
    .locals 2

    .line 1100
    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1102
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    const-string p3, "appWidgetId"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1104
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    .line 1105
    const/16 p2, 0x3ed

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1106
    return-void

    .line 1100
    :cond_1
    :goto_0
    return-void
.end method

.method private step(Landroid/view/ViewGroup;II)V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 796
    :cond_0
    iget v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditMode:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    const/16 v3, 0x20

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p2, 0x4

    if-eq v1, p2, :cond_1

    goto :goto_0

    .line 821
    :cond_1
    iget p2, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    add-int/2addr p2, p3

    if-lt p2, v3, :cond_6

    .line 822
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    add-int/2addr v0, p3

    iput v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    goto :goto_0

    .line 809
    :cond_2
    iget p3, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    add-int/2addr p3, p2

    if-lt p3, v3, :cond_6

    .line 810
    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    add-int/2addr v0, p2

    iput v0, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    goto :goto_0

    .line 815
    :cond_3
    iget p2, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    sub-int/2addr p2, p3

    if-lt p2, v3, :cond_6

    .line 816
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    add-int/2addr v0, p3

    iput v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 817
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    sub-int/2addr v0, p3

    iput v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    goto :goto_0

    .line 803
    :cond_4
    iget p3, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    sub-int/2addr p3, p2

    if-lt p3, v3, :cond_6

    .line 804
    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    add-int/2addr v0, p2

    iput v0, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 805
    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    sub-int/2addr v0, p2

    iput v0, p3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    goto :goto_0

    .line 798
    :cond_5
    iget v1, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 799
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    add-int/2addr v0, p3

    iput v0, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 800
    nop

    .line 829
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->clampToSurface(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;II)V

    .line 831
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 832
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p2, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 833
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p2, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 834
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p2, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 835
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditItem:Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget p2, p2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 836
    iget-object p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    return-void

    .line 794
    :cond_7
    :goto_1
    return-void
.end method

.method private updateEditHint(I)V
    .locals 3

    .line 924
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 931
    const-string v0, "\u05d4\u05d6\u05d6\u05d4"

    goto :goto_0

    .line 930
    :cond_1
    const-string v0, "\u05e6\u05d3 \u05ea\u05d7\u05ea\u05d5\u05df"

    goto :goto_0

    .line 928
    :cond_2
    const-string v0, "\u05e6\u05d3 \u05d9\u05de\u05d9\u05df"

    goto :goto_0

    .line 929
    :cond_3
    const-string v0, "\u05e6\u05d3 \u05e2\u05dc\u05d9\u05d5\u05df"

    goto :goto_0

    .line 927
    :cond_4
    const-string v0, "\u05e6\u05d3 \u05e9\u05de\u05d0\u05dc"

    .line 935
    :goto_0
    if-nez p1, :cond_5

    .line 936
    const-string p1, ""

    goto :goto_1

    :cond_5
    const-string p1, " \u00b7 \u05d0\u05d9\u05e9\u05d5\u05e8 \u05de\u05d7\u05dc\u05d9\u05e3 \u05e6\u05d3"

    .line 937
    :goto_1
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u00b7 \u05d7\u05d9\u05e6\u05d9\u05dd"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string p1, "line.separator"

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u05d7\u05d6\u05d5\u05e8 \u05dc\u05e9\u05de\u05d9\u05e8\u05d4 \u00b7 \u05e1\u05d5\u05dc\u05de\u05d9\u05ea \u05dc\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 937
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    return-void
.end method

.method private static usableHeight(Landroid/app/Activity;Landroid/view/ViewGroup;)I
    .locals 1

    .line 575
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 576
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    return p1

    .line 577
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method private static usableWidth(Landroid/app/Activity;Landroid/view/ViewGroup;)I
    .locals 1

    .line 569
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 570
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    return p1

    .line 571
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method


# virtual methods
.method public addWidget(Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    .locals 1

    .line 249
    if-nez p1, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 253
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 255
    return-void
.end method

.method public addWidgetFromPackage(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    .line 999
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v0

    .line 1000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    if-eqz v0, :cond_1

    .line 1002
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1003
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    :cond_0
    goto :goto_0

    .line 1009
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1010
    const-string p2, "\u05dc\u05d0 \u05e0\u05de\u05e6\u05d0\u05d5 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05d9\u05d9\u05e9\u05d5\u05dd \u05d6\u05d4"

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1011
    return-void

    .line 1014
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 1015
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V

    goto :goto_2

    .line 1017
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    .line 1018
    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1019
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    aput-object v2, p2, v0

    .line 1020
    aget-object v2, p2, v0

    if-eqz v2, :cond_4

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1021
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1018
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1024
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    const-string v2, "\u05d1\u05d7\u05e8 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1026
    new-instance v2, Lcom/sprd/classichome/widget/WidgetHostManager$7;

    invoke-direct {v2, p0, p1, v1, p3}, Lcom/sprd/classichome/widget/WidgetHostManager$7;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Landroid/app/Activity;Ljava/util/List;I)V

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1032
    const/4 p1, 0x0

    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1033
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1035
    :goto_2
    return-void
.end method

.method public beginEditFromKey(Landroid/app/Activity;)Z
    .locals 7

    .line 731
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHolder:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 734
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "widget_container_page1"

    const-string v4, "id"

    .line 735
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 734
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 736
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 737
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-nez v3, :cond_2

    return v0

    .line 738
    :cond_2
    check-cast v1, Landroid/view/ViewGroup;

    .line 740
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v3

    .line 741
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 742
    const-string v1, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05d1\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 743
    return v2

    .line 745
    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 746
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 747
    instance-of v6, v5, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mEditHint:Landroid/widget/TextView;

    if-eq v5, v6, :cond_4

    .line 748
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {p0, p1, v1, v5, v3}, Lcom/sprd/classichome/widget/WidgetHostManager;->beginEdit(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    return v2

    .line 745
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 754
    :cond_5
    goto :goto_1

    .line 752
    :catchall_0
    move-exception p1

    .line 753
    const-string v1, "WidgetHostManager"

    const-string v2, "Could not enter widget edit mode"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    :goto_1
    return v0
.end method

.method public bindAndConfigureWidget(Landroid/app/Activity;Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 10

    .line 1038
    const-string v0, "WidgetHostManager"

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 1039
    :cond_0
    iget v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 1040
    const-string p2, "\u05e4\u05e2\u05d5\u05dc\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05e7\u05d5\u05d3\u05de\u05ea \u05e2\u05d3\u05d9\u05d9\u05df \u05d1\u05ea\u05d4\u05dc\u05d9\u05da"

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1041
    return-void

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    .line 1044
    iput v6, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    .line 1045
    iput p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    .line 1046
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    .line 1047
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v1, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    :goto_1
    iput-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    .line 1048
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigureComponent:Landroid/content/ComponentName;

    .line 1049
    iput-boolean v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    .line 1051
    nop

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v6, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1056
    goto :goto_2

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    const-string v2, "bindAppWidgetIdIfAllowed failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1058
    :goto_2
    if-nez v3, :cond_4

    .line 1060
    :try_start_1
    new-instance p3, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1061
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1062
    const-string v1, "appWidgetProvider"

    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1063
    const/16 p2, 0x3ed

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1068
    goto :goto_3

    .line 1064
    :catch_1
    move-exception p1

    .line 1065
    const-string p2, "Unable to start widget bind flow"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->deletePendingWidgetId()V

    .line 1067
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 1069
    :goto_3
    return-void

    .line 1072
    :cond_4
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    .line 1074
    :try_start_2
    iget-object p2, p2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v6, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->startConfigurationActivity(Landroid/app/Activity;ILandroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 1075
    :catch_2
    move-exception p1

    .line 1076
    const-string p2, "Unable to start widget configuration"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1077
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->deletePendingWidgetId()V

    .line 1078
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 1079
    :goto_4
    goto :goto_5

    .line 1081
    :cond_5
    iget-object v8, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    iget-object v9, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/sprd/classichome/widget/WidgetHostManager;->finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V

    .line 1083
    :goto_5
    return-void

    .line 1038
    :cond_6
    :goto_6
    return-void
.end method

.method public getHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public getManager()Landroid/appwidget/AppWidgetManager;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method public getMaxPage()I
    .locals 4

    .line 228
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 229
    nop

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 231
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-le v3, v1, :cond_0

    .line 232
    iget v1, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    .line 234
    :cond_0
    goto :goto_0

    .line 235
    :cond_1
    return v1
.end method

.method public declared-synchronized getWidgetList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 175
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "widget_list_json"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 179
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 180
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 181
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->fromJson(Lorg/json/JSONObject;)Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_0

    .line 183
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    :try_start_2
    const-string v2, "WidgetHostManager"

    const-string v3, "Error parsing widget list JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getWidgetsForPage(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 241
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    if-ne v3, p1, :cond_0

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    return-object v0
.end method

.method public handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    .line 1128
    const/16 v0, 0x3ed

    if-ne p2, v0, :cond_3

    .line 1129
    iget p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eqz p4, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p4, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    move v2, p2

    .line 1130
    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    if-eq v2, p2, :cond_2

    .line 1131
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eq p3, p2, :cond_1

    iget-boolean p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigurationStarted:Z

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingConfigureComponent:Landroid/content/ComponentName;

    if-eqz p3, :cond_1

    .line 1132
    invoke-direct {p0, p1, v2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->startConfigurationActivity(Landroid/app/Activity;ILandroid/content/ComponentName;)V

    .line 1133
    return-void

    .line 1135
    :cond_1
    iget p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingWidgetId:I

    if-eq p3, p2, :cond_3

    .line 1136
    iget v3, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingTargetPage:I

    iget-object v4, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPendingLabel:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sprd/classichome/widget/WidgetHostManager;->finalizeWidgetAdd(Landroid/app/Activity;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1138
    :cond_2
    if-eq v2, p2, :cond_3

    .line 1140
    :try_start_0
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    goto :goto_0

    .line 1141
    :catch_0
    move-exception p1

    .line 1142
    const-string p2, "WidgetHostManager"

    const-string p3, "Error deleting cancelled widget id"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1144
    :goto_0
    invoke-direct {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->resetPendingWidget()V

    .line 1147
    :cond_3
    :goto_1
    return-void
.end method

.method public removeWidgetById(Landroid/app/Activity;I)V
    .locals 8

    .line 293
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    nop

    .line 296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 297
    iget v5, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ne v5, p2, :cond_0

    .line 298
    const/4 v3, 0x1

    .line 300
    :try_start_0
    iget-object v5, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v6, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 301
    :catch_0
    move-exception v5

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting widget id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WidgetHostManager"

    invoke-static {v6, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    :goto_1
    goto :goto_2

    .line 305
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :goto_2
    goto :goto_0

    .line 308
    :cond_1
    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {p0, v1}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/sprd/classichome/widget/WidgetHostManager;->notifyActivityRefresh(Landroid/app/Activity;)V

    .line 311
    const-string p2, "\u05d4\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05d4\u05d5\u05e1\u05e8"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 313
    :cond_2
    return-void
.end method

.method public declared-synchronized resetPage0Layout()V
    .locals 4

    monitor-enter p0

    .line 951
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 952
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 953
    const/4 v3, -0x1

    iput v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 954
    iput v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 955
    iput v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 956
    iput v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 957
    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    monitor-exit p0

    return-void

    .line 950
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized saveGeometry(IIIII)V
    .locals 4

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetList()Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 261
    iget v3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    if-ne v3, p1, :cond_0

    .line 262
    iput p2, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 263
    iput p3, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 264
    iput p4, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 265
    iput p5, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 266
    goto :goto_1

    .line 268
    :cond_0
    goto :goto_0

    .line 269
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sprd/classichome/widget/WidgetHostManager;->saveWidgetList(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized saveWidgetList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 197
    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 200
    :cond_0
    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "widget_list_json"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setupHomeWidgets(Landroid/app/Activity;Landroid/widget/ViewFlipper;)V
    .locals 16

    .line 361
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v2, :cond_9

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 362
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->purgeInvalidWidgets()V

    .line 365
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 366
    const/16 v5, 0x8

    if-eqz v0, :cond_2

    .line 367
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "widget_container_page1"

    const-string v9, "id"

    invoke-virtual {v6, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 368
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 369
    if-eqz v0, :cond_2

    .line 370
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 373
    const/high16 v6, 0x60000

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 375
    invoke-virtual {v1, v4}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v6

    .line 376
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 377
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 380
    invoke-direct {v1, v2, v0, v6}, Lcom/sprd/classichome/widget/WidgetHostManager;->layoutPage0(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 386
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v6, 0x1

    if-le v0, v6, :cond_3

    .line 387
    invoke-virtual {v3, v6}, Landroid/widget/ViewFlipper;->removeViewAt(I)V

    goto :goto_0

    .line 391
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getMaxPage()I

    move-result v0

    .line 392
    if-ge v0, v6, :cond_4

    .line 393
    const/4 v7, 0x1

    goto :goto_1

    .line 392
    :cond_4
    move v7, v0

    .line 396
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-gt v8, v7, :cond_8

    .line 397
    nop

    .line 398
    nop

    .line 400
    new-instance v9, Landroid/widget/ScrollView;

    invoke-direct {v9, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 401
    invoke-virtual {v9, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 402
    invoke-virtual {v9, v6}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 404
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 406
    const/16 v0, 0xc

    const/16 v11, 0x10

    invoke-virtual {v10, v0, v5, v0, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 409
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 410
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    const v12, -0x4f000001

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    const/high16 v12, 0x41500000    # 13.0f

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    const/16 v12, 0x11

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 414
    const/4 v13, 0x4

    invoke-virtual {v0, v4, v13, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 415
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x1

    const/4 v6, -0x2

    invoke-direct {v14, v15, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    invoke-virtual {v1, v8}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 422
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 423
    const-string v13, "\u05e2\u05de\u05d5\u05d3 \u05e8\u05d9\u05e7\n\n\u05dc\u05d7\u05e5 \u05dc\u05d7\u05d9\u05e6\u05d4 \u05d0\u05e8\u05d5\u05db\u05d4 \u05e2\u05dc \u05d0\u05e4\u05dc\u05d9\u05e7\u05e6\u05d9\u05d4 \u05d1\u05ea\u05e4\u05e8\u05d9\u05d8 \u05dc\u05d4\u05d5\u05e1\u05e4\u05ea \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\n(\u05dc\u05d7\u05e5 \u05e2\u05dc \u05de\u05e7\u05e9 Menu \u05dc\u05d4\u05e1\u05e8\u05d4)"

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const v13, -0x66000001

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 425
    const/high16 v13, 0x41400000    # 12.0f

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextSize(F)V

    .line 426
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 427
    const/16 v12, 0x28

    invoke-virtual {v0, v11, v12, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 428
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v15, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
    const/4 v12, 0x0

    goto :goto_6

    .line 433
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    .line 434
    iget-object v12, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget v14, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v12, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v12

    .line 435
    if-eqz v12, :cond_6

    .line 437
    :try_start_0
    iget-object v14, v1, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget v4, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v14, v2, v4, v12}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v4

    .line 438
    iget v0, v0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v4, v0, v12}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 440
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v15, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 444
    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v0, v12, v13, v12, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 445
    invoke-virtual {v10, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 448
    goto :goto_5

    .line 446
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v12, 0x0

    .line 447
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error adding widget view for page "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v14, "WidgetHostManager"

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 435
    :cond_6
    const/4 v12, 0x0

    .line 450
    :goto_5
    const/4 v4, 0x0

    goto :goto_3

    .line 433
    :cond_7
    const/4 v12, 0x0

    .line 453
    :goto_6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v15, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v15, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 463
    :cond_8
    return-void

    .line 361
    :cond_9
    :goto_7
    return-void
.end method

.method public showRemoveDialogForCurrentPage(Landroid/app/Activity;I)V
    .locals 3

    .line 326
    invoke-virtual {p0, p2}, Lcom/sprd/classichome/widget/WidgetHostManager;->getWidgetsForPage(I)Ljava/util/List;

    move-result-object p2

    .line 327
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    const-string p2, "\u05d0\u05d9\u05df \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05dc\u05d4\u05e1\u05e8\u05d4 \u05d1\u05e2\u05de\u05d5\u05d3 \u05d6\u05d4"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 329
    return-void

    .line 332
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 333
    nop

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 334
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    iget-object v2, v2, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 338
    const-string v2, "\u05d1\u05d7\u05e8 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8 \u05dc\u05d4\u05e1\u05e8\u05d4"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 339
    new-instance v2, Lcom/sprd/classichome/widget/WidgetHostManager$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/sprd/classichome/widget/WidgetHostManager$1;-><init>(Lcom/sprd/classichome/widget/WidgetHostManager;Ljava/util/List;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 356
    const/4 p1, 0x0

    const-string p2, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 357
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 358
    return-void
.end method

.method public startListening()V
    .locals 3

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v1, "WidgetHostManager"

    const-string v2, "Error in startListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :goto_0
    return-void
.end method

.method public stopListening()V
    .locals 3

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "WidgetHostManager"

    const-string v2, "Error in stopListening"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_0
    return-void
.end method

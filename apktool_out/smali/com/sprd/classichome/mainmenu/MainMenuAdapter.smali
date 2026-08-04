.class public Lcom/sprd/classichome/mainmenu/MainMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainMenuAdapter.java"


# static fields
.field private static final CALL_LOG_CPNAME:Landroid/content/ComponentName;

.field private static final MSG_CPNAME:Landroid/content/ComponentName;


# instance fields
.field private mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

.field mContext:Landroid/content/Context;

.field mGridView:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMainMenuApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUnreadCallLogCount:I

.field private mUnreadMsgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.ui.ConversationList"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->MSG_CPNAME:Landroid/content/ComponentName;

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.dialer"

    const-string v2, "com.android.dialer.calllog.CallLogActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->CALL_LOG_CPNAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/widget/GridView;)V
    .locals 2
    .param p1, "gridView"    # Landroid/widget/GridView;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mUnreadMsgCount:I

    .line 37
    iput v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mUnreadCallLogCount:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mMainMenuApps:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter$1;

    invoke-direct {v0, p0}, Lcom/sprd/classichome/mainmenu/MainMenuAdapter$1;-><init>(Lcom/sprd/classichome/mainmenu/MainMenuAdapter;)V

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mContext:Landroid/content/Context;

    .line 56
    iput-object p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mGridView:Landroid/widget/GridView;

    .line 57
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->getMainMenuAppsList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mMainMenuApps:Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    invoke-static {}, Lcom/sprd/classichome/HomeApplication;->getInstance()Lcom/sprd/classichome/HomeApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->setHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)Lcom/sprd/classichome/model/LauncherModel;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/sprd/classichome/mainmenu/MainMenuAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/sprd/classichome/mainmenu/MainMenuAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mMainMenuApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method private setUnreadTextView(Landroid/widget/TextView;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "text"    # Landroid/widget/TextView;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "count":I
    sget-object v1, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->MSG_CPNAME:Landroid/content/ComponentName;

    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mUnreadMsgCount:I

    .line 126
    :cond_0
    :goto_0
    if-lez v0, :cond_3

    .line 127
    invoke-static {p1, v0}, Lcom/sprd/simple/util/UnreadCountStyleUtil;->setReadCountStyle(Landroid/widget/TextView;I)V

    .line 131
    :goto_1
    sget-boolean v1, Lcom/sprd/common/util/LogUtils;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MainMenuAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; componentName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return-void

    .line 123
    :cond_2
    sget-object v1, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->CALL_LOG_CPNAME:Landroid/content/ComponentName;

    invoke-virtual {v1, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mUnreadCallLogCount:I

    goto :goto_0

    .line 129
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 107
    invoke-static {}, Lcom/sprd/classichome/HomeApplication;->getInstance()Lcom/sprd/classichome/HomeApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mCallback:Lcom/sprd/classichome/model/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/sprd/classichome/HomeApplication;->removeHomeCallback(Lcom/sprd/classichome/model/HomeMonitorCallbacks;)V

    .line 108
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mMainMenuApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mMainMenuApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, -0x1

    .line 64
    iget-object v6, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v5

    .line 65
    .local v5, "width":I
    iget-object v6, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v7}, Landroid/widget/GridView;->getNumColumns()I

    move-result v7

    div-int v0, v6, v7

    .line 67
    .local v0, "height":I
    if-nez p2, :cond_0

    .line 68
    iget-object v6, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040007

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    :cond_0
    iget-object v6, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mMainMenuApps:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprd/classichome/AppItemInfo;

    .line 73
    .local v2, "info":Lcom/sprd/classichome/AppItemInfo;
    const v6, 0x7f0d0014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 74
    .local v1, "icon":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 75
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .end local v3    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sprd/classichome/util/UtilitiesExt;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    iget-object v6, v2, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :goto_0
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v5, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const v6, 0x7f0d0015

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 88
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {v2}, Lcom/sprd/classichome/AppItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->setUnreadTextView(Landroid/widget/TextView;Landroid/content/ComponentName;)V

    .line 89
    return-object p2

    .line 82
    .end local v4    # "text":Landroid/widget/TextView;
    :cond_2
    iget-object v7, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->mContext:Landroid/content/Context;

    iget-object v6, v2, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v7, v6}, Lcom/sprd/classichome/util/IconUtilities;->get3rdPartyAppIcon(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.class public Lcom/duoqin/settings/AppPickerActivity;
.super Landroid/app/Activity;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoqin/settings/AppPickerActivity$1;,
        Lcom/duoqin/settings/AppPickerActivity$AppAdapter;,
        Lcom/duoqin/settings/AppPickerActivity$Holder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentComponent:Landroid/content/ComponentName;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/duoqin/settings/AppPickerActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/AppPickerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/duoqin/settings/AppPickerActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/settings/AppPickerActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/duoqin/settings/AppPickerActivity;->mAppList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/duoqin/settings/AppPickerActivity;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/duoqin/settings/AppPickerActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mCurrentComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private isValidApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "com.iflytek.inputmethod"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.iflytek.inputmethod.LauncherActivity"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "com.sprd.firewall"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sprd.firewall.ui.CallFireWallActivity"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    const-string v0, "com.android.stk"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.sprd.simple.launcher"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.sprd.classichome.Home"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "com.sprd.simple.launcher"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.sprd.classichome.GamesActivity"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "com.sprd.simple.launcher"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.sprd.classichome.ExtrasActivity"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    :cond_4
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getSystemApps()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v6, "systemAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 140
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 141
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 145
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v7, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v7, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 147
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/duoqin/settings/AppPickerActivity;->isValidApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 42
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 43
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ComponentName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mCurrentComponent:Landroid/content/ComponentName;

    .line 48
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;

    invoke-direct {v1, p0}, Lcom/duoqin/settings/AppPickerActivity$AppAdapter;-><init>(Lcom/duoqin/settings/AppPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/duoqin/settings/AppPickerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 52
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity;->mAppList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p3, :cond_0

    .line 57
    iget-object v2, p0, Lcom/duoqin/settings/AppPickerActivity;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 58
    .local v0, "componentName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "ComponentName"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 64
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method

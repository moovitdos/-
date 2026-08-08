.class public Lcom/android/settings/applications/MouseControlerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MouseControlerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/MouseControlerFragment$AlertDialogFragment;,
        Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;
    }
.end annotation


# static fields
.field public static sInflater:Landroid/view/LayoutInflater;


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field public mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field private mContext:Landroid/content/Context;

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRelative:Landroid/view/ViewGroup;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRootView:Landroid/view/View;

.field private mSelectAllBox:Landroid/widget/CheckBox;

.field private mSelectText:Landroid/widget/TextView;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 419
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/MouseControlerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/MouseControlerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/MouseControlerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/MouseControlerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/MouseControlerFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/applications/MouseControlerFragment;->saveData()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/MouseControlerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectAllBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/MouseControlerFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectText:Landroid/widget/TextView;

    return-object v0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "mouse_support_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "str":Ljava/lang/String;
    const-string v1, "MouseControlerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init str="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-static {v0}, Lcom/android/settings/applications/MouseControlerFragment;->splitStringToMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment;->mMap:Ljava/util/HashMap;

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment;->mMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private saveData()V
    .locals 6

    .prologue
    .line 351
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 352
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 353
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 355
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    const-string v3, "MouseControlerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "mouse_support_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 357
    return-void
.end method

.method public static setActionText(Landroid/content/res/Resources;Landroid/app/ActionBar;Landroid/content/res/Configuration;)Landroid/text/SpannableString;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "actionBar"    # Landroid/app/ActionBar;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    .line 395
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 396
    .local v0, "text":Landroid/text/SpannableString;
    invoke-virtual {p2}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "land"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const v2, 0x7f080035

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 407
    :goto_0
    return-object v0

    .line 402
    :cond_0
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static splitStringToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "temp":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 363
    aget-object v3, v2, v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 365
    :cond_0
    return-object v1
.end method


# virtual methods
.method public initialViews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "contentParent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 504
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 505
    const-string v2, "MouseControlerFragment"

    const-string v3, "mRootView == null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0026

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRelative:Landroid/view/ViewGroup;

    .line 509
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0028

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectAllBox:Landroid/widget/CheckBox;

    .line 510
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectText:Landroid/widget/TextView;

    .line 511
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectText:Landroid/widget/TextView;

    const v3, 0x7f0908fa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 512
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mTextPaint:Landroid/text/TextPaint;

    .line 513
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 514
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mTextPaint:Landroid/text/TextPaint;

    const v3, 0x7f0d0023

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 515
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListContainer:Landroid/view/View;

    .line 516
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mSelectAllBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "emptyView":Landroid/view/View;
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 523
    .local v1, "lv":Landroid/widget/ListView;
    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 526
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 527
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 530
    iput-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListView:Landroid/widget/ListView;

    .line 531
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 532
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 533
    iget-object v2, p0, Lcom/android/settings/applications/MouseControlerFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/applications/MouseControlerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/MouseControlerFragment$1;-><init>(Lcom/android/settings/applications/MouseControlerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 387
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 388
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/settings/applications/MouseControlerFragment;->setActionText(Landroid/content/res/Resources;Landroid/app/ActionBar;Landroid/content/res/Configuration;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 391
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mContext:Landroid/content/Context;

    .line 329
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mResolver:Landroid/content/ContentResolver;

    .line 333
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 335
    new-instance v0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/MouseControlerFragment;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    .line 336
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mAppOps:Landroid/app/AppOpsManager;

    .line 338
    invoke-direct {p0}, Lcom/android/settings/applications/MouseControlerFragment;->initData()V

    .line 339
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 371
    sput-object p1, Lcom/android/settings/applications/MouseControlerFragment;->sInflater:Landroid/view/LayoutInflater;

    .line 372
    sget-object v0, Lcom/android/settings/applications/MouseControlerFragment;->sInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    .line 374
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/MouseControlerFragment;->initialViews(Landroid/view/ViewGroup;)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 500
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 501
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 492
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->release()V

    .line 495
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mRootView:Landroid/view/View;

    .line 496
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/android/settings/applications/MouseControlerFragment;->saveData()V

    .line 381
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 382
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 596
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 601
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 598
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 599
    const/4 v0, 0x1

    goto :goto_0

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 475
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 476
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->pause()V

    .line 479
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 462
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment;->mApplications:Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->resume()V

    .line 466
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 470
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 471
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 457
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "MouseControlerFragment"

    const-string v1, "---onStop---: do save data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/settings/applications/MouseControlerFragment;->saveData()V

    .line 486
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 487
    return-void
.end method

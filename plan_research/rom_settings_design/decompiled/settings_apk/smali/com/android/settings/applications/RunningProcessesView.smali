.class public Lcom/android/settings/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field final mMyUserId:I

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 422
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 80
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 81
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 82
    iput v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 83
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 84
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 85
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 86
    iput-wide v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 90
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 423
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mMyUserId:I

    .line 424
    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 403
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 404
    iget-object v0, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_0
    const-string v0, "user_id"

    iget v1, p1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 412
    const-class v1, Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0904b8

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 415
    :cond_1
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 431
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040081

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 432
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 434
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080100

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 439
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "emptyView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 441
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 443
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 444
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 445
    new-instance v3, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 446
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 447
    const v3, 0x7f0b0162

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 448
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 449
    const v3, 0x7f0b0164

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 450
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/applications/RunningProcessesView$1;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningProcessesView$1;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    const v3, 0x7f0b0163

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 457
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/RunningProcessesView$2;-><init>(Lcom/android/settings/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 465
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 466
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 467
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->pause()V

    .line 471
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 472
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 473
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "owner"    # Landroid/app/Fragment;
    .param p2, "dataAvail"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 476
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 477
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 478
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 485
    :goto_0
    return v0

    .line 484
    :cond_0
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 485
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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
    .line 393
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 394
    .local v0, "l":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 395
    .local v1, "mi":Lcom/android/settings/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 396
    invoke-direct {p0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    .line 397
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 503
    packed-switch p1, :pswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 505
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 512
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningProcessesView;->refreshUi(Z)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 19
    .param p1, "dataChanged"    # Z

    .prologue
    .line 326
    if-eqz p1, :cond_0

    .line 327
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    move-object v2, v13

    check-cast v2, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    .line 328
    .local v2, "adapter":Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v2}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 329
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 332
    .end local v2    # "adapter":Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v13, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    .line 334
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 340
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v3, v13, v15

    .line 342
    .local v3, "availMem":J
    const-wide/16 v13, 0x0

    cmp-long v13, v3, v13

    if-gez v13, :cond_2

    .line 343
    const-wide/16 v3, 0x0

    .line 346
    :cond_2
    invoke-static {}, Landroid/os/Process;->getZramAvailableMem()J

    move-result-wide v11

    .line 347
    .local v11, "zramAvailMem":J
    add-long/2addr v3, v11

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v14, v13, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 349
    :try_start_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v13, v15, :cond_3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v13, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    cmp-long v13, v15, v17

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v13, v15, v3

    if-eqz v13, :cond_4

    .line 352
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v13, v13, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v15, v13, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 354
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 355
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastAvailMemory:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    add-long v6, v15, v17

    .line 356
    .local v6, "freeMem":J
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .line 357
    .local v5, "bidiFormatter":Landroid/text/BidiFormatter;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0904ae

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v15}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v15

    sub-long/2addr v15, v6

    move-wide v0, v15

    invoke-static {v13, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0904af

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v5    # "bidiFormatter":Landroid/text/BidiFormatter;
    .end local v6    # "freeMem":J
    .end local v8    # "sizeStr":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v13, v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v13, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-wide/from16 v17, v0

    cmp-long v13, v15, v17

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v15, v15, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v13, v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v0, v13, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    move-wide/from16 v17, v0

    cmp-long v13, v15, v17

    if-eqz v13, :cond_6

    .line 371
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v13, v13, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v15, v13, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget v13, v13, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 374
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mState:Lcom/android/settings/applications/RunningState;

    iget-wide v15, v13, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 383
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v13}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v15

    long-to-float v9, v15

    .line 384
    .local v9, "totalMem":F
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v15, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    long-to-float v10, v15

    .line 386
    .local v10, "totalShownMem":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    sub-float v15, v9, v10

    div-float/2addr v15, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v16, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v9

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v15, v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 389
    monitor-exit v14

    .line 390
    return-void

    .line 389
    .end local v9    # "totalMem":F
    .end local v10    # "totalShownMem":F
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 489
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 490
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 492
    .local v0, "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 497
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 499
    .end local v0    # "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method

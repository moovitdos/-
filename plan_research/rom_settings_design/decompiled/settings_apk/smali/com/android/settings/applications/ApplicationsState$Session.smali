.class public Lcom/android/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .param p2, "callbacks"    # Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 536
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 537
    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 11

    .prologue
    .line 604
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 605
    :try_start_0
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_0

    .line 606
    monitor-exit v9

    .line 662
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 610
    .local v3, "filter":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 611
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 612
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 613
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 614
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 618
    if-eqz v3, :cond_1

    .line 619
    invoke-interface {v3}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 623
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 624
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 625
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 627
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v4, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 630
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 631
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 632
    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v8, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 634
    :try_start_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, v6}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 635
    .local v2, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 637
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 629
    .end local v2    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 614
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filter":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    .end local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 625
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v3    # "filter":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 639
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v5    # "i":I
    .restart local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .line 643
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 645
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    .line 646
    :try_start_6
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v8, :cond_5

    .line 647
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 648
    iget-boolean v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v8, :cond_6

    .line 649
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 650
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 659
    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 661
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 652
    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 653
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 655
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 659
    .end local v7    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 556
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 557
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 558
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 561
    :cond_0
    monitor-exit v1

    .line 562
    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "filter"    # Lcom/android/settings/applications/ApplicationsState$AppFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    .line 567
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v5, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 568
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 570
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 571
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 572
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 573
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 574
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 579
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0xfa

    add-long v3, v7, v9

    .line 584
    .local v3, "waitend":J
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 586
    .local v1, "now":J
    cmp-long v5, v1, v3

    if-ltz v5, :cond_2

    .line 595
    .end local v1    # "now":J
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 597
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v5

    .line 579
    .end local v3    # "waitend":J
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    .line 598
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 590
    .restart local v1    # "now":J
    .restart local v3    # "waitend":J
    :cond_2
    :try_start_5
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v7, v3, v1

    invoke-virtual {v5, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 591
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 665
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 666
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 667
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 668
    monitor-exit v1

    .line 669
    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 544
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 545
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 547
    :cond_0
    monitor-exit v1

    .line 549
    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

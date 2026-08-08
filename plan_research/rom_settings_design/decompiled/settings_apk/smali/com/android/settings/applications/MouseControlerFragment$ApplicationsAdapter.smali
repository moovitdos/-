.class Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MouseControlerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/MouseControlerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHolder:Lcom/android/settings/applications/MouseControlViewHolder;

.field private final mOtherSystemInMouse:[Ljava/lang/String;

.field private mResumed:Z

.field private final mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settings/applications/ApplicationsState;

.field final synthetic this$0:Lcom/android/settings/applications/MouseControlerFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/MouseControlerFragment;Lcom/android/settings/applications/ApplicationsState;)V
    .locals 3
    .param p2, "state"    # Lcom/android/settings/applications/ApplicationsState;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 94
    sget-object v0, Lcom/android/settings/applications/MouseControlerFragment;->sInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.facebook.lite.stub"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.facebook.lite"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.whatsapp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mOtherSystemInMouse:[Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 99
    invoke-virtual {p2, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 100
    return-void
.end method

.method private getOtherSystemEntry()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "systemApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    if-eqz v3, :cond_1

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mOtherSystemInMouse:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mOtherSystemInMouse:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 210
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    .end local v2    # "systemApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 300
    sget-object v1, Lcom/android/settings/applications/MouseControlerFragment;->sInflater:Landroid/view/LayoutInflater;

    invoke-static {v1, p2}, Lcom/android/settings/applications/MouseControlViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/MouseControlViewHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mHolder:Lcom/android/settings/applications/MouseControlViewHolder;

    .line 301
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mHolder:Lcom/android/settings/applications/MouseControlViewHolder;

    iget-object p2, v1, Lcom/android/settings/applications/MouseControlViewHolder;->mRootView:Landroid/view/View;

    .line 302
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 303
    .local v0, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mHolder:Lcom/android/settings/applications/MouseControlViewHolder;

    iput-object v0, v1, Lcom/android/settings/applications/MouseControlViewHolder;->mEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 305
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mHolder:Lcom/android/settings/applications/MouseControlViewHolder;

    iget-object v1, v1, Lcom/android/settings/applications/MouseControlViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mHolder:Lcom/android/settings/applications/MouseControlViewHolder;

    iget-object v1, v1, Lcom/android/settings/applications/MouseControlViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->isChecked(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 313
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 315
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    return-object p2

    .line 313
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 113
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v1}, Lcom/android/settings/applications/MouseControlerFragment;->access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "MouseControlerFragment"

    const-string v1, "onPackageListChanged..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->rebuild(Z)V

    .line 266
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const-string v6, "MouseControlerFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRebuildComplete...mEntries=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v6, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v6}, Lcom/android/settings/applications/MouseControlerFragment;->access$100(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 229
    const-string v6, "MouseControlerFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRebuildComplete...mEntries=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    move-object v5, p1

    .line 233
    .local v5, "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getOtherSystemEntry()Ljava/util/ArrayList;

    move-result-object v4

    .line 234
    .local v4, "systemEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-eqz v4, :cond_1

    .line 235
    if-nez v5, :cond_0

    .line 236
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .restart local v5    # "tempEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 239
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 241
    .local v1, "entrysys":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v1    # "entrysys":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_1
    if-eqz v5, :cond_2

    .line 246
    iput-object v5, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 253
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 254
    iget-object v6, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v6}, Lcom/android/settings/applications/MouseControlerFragment;->access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;

    move-result-object v7

    iget-object v6, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 255
    .local v0, "enabled":Z
    iget-object v6, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v6, v0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->setChecked(Ljava/lang/String;Z)V

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    .end local v0    # "enabled":Z
    .end local v2    # "i":I
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_1

    .line 258
    .restart local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 222
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mResumed:Z

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 135
    :cond_0
    return-void
.end method

.method public rebuild(Z)V
    .locals 10
    .param p1, "eraseold"    # Z

    .prologue
    .line 152
    const-string v7, "MouseControlerFragment"

    const-string v8, "Rebuilding app list..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v5, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 154
    .local v5, "filterObj":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 155
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v7, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v7, v5, v0}, Lcom/android/settings/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {p0}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->getOtherSystemEntry()Ljava/util/ArrayList;

    move-result-object v2

    .line 159
    .local v2, "entriesSystem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-eqz v2, :cond_2

    .line 160
    if-nez v1, :cond_0

    .line 161
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 164
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 166
    .local v4, "entrysys":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 167
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v4    # "entrysys":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    if-eqz v1, :cond_4

    .line 173
    iput-object v1, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 177
    :goto_1
    const-string v7, "MouseControlerFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rebuilding app list...mEntries=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v7, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 180
    iget-object v7, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 181
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 182
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 183
    .local v3, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v7, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    .line 184
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 175
    .end local v3    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_1

    .line 195
    :cond_5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 197
    if-nez v1, :cond_6

    .line 198
    iget-object v7, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v7}, Lcom/android/settings/applications/MouseControlerFragment;->access$100(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :goto_3
    return-void

    .line 200
    :cond_6
    iget-object v7, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v7}, Lcom/android/settings/applications/MouseControlerFragment;->access$100(Lcom/android/settings/applications/MouseControlerFragment;)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public release()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    .line 139
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 122
    const-string v0, "MouseControlerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 124
    iput-boolean v3, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mResumed:Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->rebuild(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public setChecked(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "pkgnmae"    # Ljava/lang/String;
    .param p2, "checked"    # Z

    .prologue
    .line 103
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v0}, Lcom/android/settings/applications/MouseControlerFragment;->access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v0}, Lcom/android/settings/applications/MouseControlerFragment;->access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v0}, Lcom/android/settings/applications/MouseControlerFragment;->access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/applications/MouseControlerFragment$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/MouseControlerFragment;

    invoke-static {v0}, Lcom/android/settings/applications/MouseControlerFragment;->access$000(Lcom/android/settings/applications/MouseControlerFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

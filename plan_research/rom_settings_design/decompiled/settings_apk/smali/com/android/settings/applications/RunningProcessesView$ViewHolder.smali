.class public Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    .line 161
    const v0, 0x7f0b003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f0b0098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0b0099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f0b0161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f0b0033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 168
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .locals 8
    .param p1, "state"    # Lcom/android/settings/applications/RunningState;
    .param p2, "item"    # Lcom/android/settings/applications/RunningState$BaseItem;
    .param p3, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 172
    iget-object v5, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 174
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v4, :cond_0

    instance-of v4, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v4, :cond_0

    .line 177
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v2, v0

    .line 178
    .local v2, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v4, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v4, :cond_0

    .line 179
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 180
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 181
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 185
    .end local v2    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/Utils;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 187
    .local v1, "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v4, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 188
    iput-object p2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 189
    iput-object p0, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 190
    iget-wide v6, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v6, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    .line 191
    iget-boolean v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v4, :cond_1

    .line 192
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0904aa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 200
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, p3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 202
    monitor-exit v5

    return-object v1

    .line 195
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/Utils;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    .end local v1    # "ai":Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

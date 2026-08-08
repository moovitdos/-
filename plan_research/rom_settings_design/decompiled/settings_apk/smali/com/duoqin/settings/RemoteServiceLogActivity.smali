.class public Lcom/duoqin/settings/RemoteServiceLogActivity;
.super Landroid/app/Activity;
.source "RemoteServiceLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoqin/settings/RemoteServiceLogActivity$1;,
        Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;,
        Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;
    }
.end annotation


# static fields
.field public static final REMOTE_SERVICE_COMMAND_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mListView:Landroid/widget/ListView;

.field private mLogAdapter:Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://com.duoqin.remoteservice/remote_service_command"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/duoqin/settings/RemoteServiceLogActivity;->REMOTE_SERVICE_COMMAND_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f04007e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 40
    const v0, 0x7f0b015f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mListView:Landroid/widget/ListView;

    .line 42
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/duoqin/settings/RemoteServiceLogActivity;->REMOTE_SERVICE_COMMAND_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mCursor:Landroid/database/Cursor;

    .line 45
    new-instance v0, Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;-><init>(Lcom/duoqin/settings/RemoteServiceLogActivity;Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mLogAdapter:Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;

    .line 46
    iget-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mLogAdapter:Lcom/duoqin/settings/RemoteServiceLogActivity$LogAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 49
    iget-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 50
    iget-object v0, p0, Lcom/duoqin/settings/RemoteServiceLogActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 51
    return-void
.end method

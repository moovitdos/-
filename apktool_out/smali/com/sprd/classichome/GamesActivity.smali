.class public Lcom/sprd/classichome/GamesActivity;
.super Lcom/sprd/classichome/BaseListActivity;
.source "GamesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sprd/classichome/BaseListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method getApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprd/classichome/AppItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->getGamesAppsList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/sprd/classichome/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

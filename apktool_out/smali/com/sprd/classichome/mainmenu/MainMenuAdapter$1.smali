.class Lcom/sprd/classichome/mainmenu/MainMenuAdapter$1;
.super Lcom/sprd/classichome/model/HomeMonitorCallbacks;
.source "MainMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/mainmenu/MainMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/mainmenu/MainMenuAdapter;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter$1;->this$0:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    invoke-direct {p0}, Lcom/sprd/classichome/model/HomeMonitorCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAppsUpdated()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter$1;->this$0:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    invoke-static {}, Lcom/sprd/classichome/model/LauncherModel;->getMainMenuAppsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/classichome/mainmenu/MainMenuAdapter;->access$002(Lcom/sprd/classichome/mainmenu/MainMenuAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 50
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuAdapter$1;->this$0:Lcom/sprd/classichome/mainmenu/MainMenuAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    return-void
.end method

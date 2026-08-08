.class Lcom/sprd/settings/sim/MobileSimChooseUUI$2;
.super Landroid/database/ContentObserver;
.source "MobileSimChooseUUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/sim/MobileSimChooseUUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/MobileSimChooseUUI;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/MobileSimChooseUUI;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI$2;->this$0:Lcom/sprd/settings/sim/MobileSimChooseUUI;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI$2;->this$0:Lcom/sprd/settings/sim/MobileSimChooseUUI;

    invoke-static {v0}, Lcom/sprd/settings/sim/MobileSimChooseUUI;->access$000(Lcom/sprd/settings/sim/MobileSimChooseUUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI$2;->this$0:Lcom/sprd/settings/sim/MobileSimChooseUUI;

    invoke-static {v0}, Lcom/sprd/settings/sim/MobileSimChooseUUI;->access$200(Lcom/sprd/settings/sim/MobileSimChooseUUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/sim/SimListAdapter;

    invoke-virtual {v0, v1}, Landroid/sim/SimListAdapter;->notifyDataSetChanged(Z)V

    .line 82
    iget-object v0, p0, Lcom/sprd/settings/sim/MobileSimChooseUUI$2;->this$0:Lcom/sprd/settings/sim/MobileSimChooseUUI;

    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 84
    :cond_0
    return-void
.end method

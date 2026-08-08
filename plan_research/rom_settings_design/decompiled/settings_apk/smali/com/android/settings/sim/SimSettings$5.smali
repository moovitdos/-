.class Lcom/android/settings/sim/SimSettings$5;
.super Landroid/database/ContentObserver;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimSettings;->access$1102(Lcom/android/settings/sim/SimSettings;[Landroid/sim/Sim;)[Landroid/sim/Sim;

    .line 704
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1300(Lcom/android/settings/sim/SimSettings;)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$5;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1600(Lcom/android/settings/sim/SimSettings;)V

    .line 718
    :cond_0
    return-void
.end method

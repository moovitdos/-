.class Lcom/android/settings/sim/SimSettings$SimInfoChanged;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/sim/SimManager$OnSimsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimInfoChanged"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimInfoChanged;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimUpdated([Landroid/sim/Sim;)V
    .locals 2
    .param p1, "sims"    # [Landroid/sim/Sim;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimInfoChanged;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimInfoChanged;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/sim/SimSettings;->access$1102(Lcom/android/settings/sim/SimSettings;[Landroid/sim/Sim;)[Landroid/sim/Sim;

    .line 574
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$SimInfoChanged;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$1300(Lcom/android/settings/sim/SimSettings;)V

    .line 575
    return-void
.end method

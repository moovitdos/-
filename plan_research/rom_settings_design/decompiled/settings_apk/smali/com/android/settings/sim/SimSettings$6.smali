.class Lcom/android/settings/sim/SimSettings$6;
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
    .line 1024
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$6;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$6;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$2200(Lcom/android/settings/sim/SimSettings;)V

    .line 1028
    return-void
.end method

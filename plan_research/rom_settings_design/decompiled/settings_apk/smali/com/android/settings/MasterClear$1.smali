.class Lcom/android/settings/MasterClear$1;
.super Landroid/content/BroadcastReceiver;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$002(Lcom/android/settings/MasterClear;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$100(Lcom/android/settings/MasterClear;)V

    .line 101
    return-void
.end method

.class Lcom/android/settings/sim/SimFragmentDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "SimFragmentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimFragmentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimFragmentDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimFragmentDialog;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/settings/sim/SimFragmentDialog$2;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "stateExtra":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog$2;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v2}, Lcom/android/settings/sim/SimFragmentDialog;->access$000(Lcom/android/settings/sim/SimFragmentDialog;)V

    .line 206
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/sim/SimFragmentDialog;->access$102(Lcom/android/settings/sim/SimFragmentDialog;)Lcom/android/settings/sim/SimFragmentDialog;

    .line 209
    .end local v1    # "stateExtra":Ljava/lang/String;
    :cond_0
    return-void
.end method

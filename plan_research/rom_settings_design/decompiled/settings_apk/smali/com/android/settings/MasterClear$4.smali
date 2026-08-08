.class Lcom/android/settings/MasterClear$4;
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
    .line 424
    iput-object p1, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 430
    const-string v4, "level"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 431
    .local v2, "rawlevel":I
    const-string v4, "scale"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 432
    .local v3, "scale":I
    const/4 v1, -0x1

    .line 433
    .local v1, "level":I
    if-ltz v2, :cond_0

    if-lez v3, :cond_0

    .line 434
    mul-int/lit8 v4, v2, 0x64

    div-int v1, v4, v3

    .line 436
    :cond_0
    iget-object v4, p0, Lcom/android/settings/MasterClear$4;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v4, v1}, Lcom/android/settings/MasterClear;->access$202(Lcom/android/settings/MasterClear;I)I

    .line 438
    .end local v1    # "level":I
    .end local v2    # "rawlevel":I
    .end local v3    # "scale":I
    :cond_1
    return-void
.end method

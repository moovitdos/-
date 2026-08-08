.class Lcom/android/settings/AirplaneModeEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {v0}, Lcom/android/settings/AirplaneModeEnabler;->access$300(Lcom/android/settings/AirplaneModeEnabler;)V

    .line 160
    return-void
.end method

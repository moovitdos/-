.class Lcom/android/settings/IccLockSettings$4;
.super Landroid/database/ContentObserver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$700(Lcom/android/settings/IccLockSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$800(Lcom/android/settings/IccLockSettings;Z)V

    .line 711
    :cond_0
    return-void
.end method

.class Lcom/android/settings/SecuritySettings$4;
.super Landroid/database/ContentObserver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$200(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$4;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$000(Lcom/android/settings/SecuritySettings;)V

    .line 813
    :cond_0
    return-void
.end method

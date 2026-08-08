.class Lcom/android/settings/DualSimSettings$3;
.super Ljava/util/TimerTask;
.source "DualSimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DualSimSettings;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DualSimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DualSimSettings;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/settings/DualSimSettings$3;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/settings/DualSimSettings$3;->this$0:Lcom/android/settings/DualSimSettings;

    invoke-static {v0}, Lcom/android/settings/DualSimSettings;->access$100(Lcom/android/settings/DualSimSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 463
    return-void
.end method

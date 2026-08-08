.class Lcom/android/settings/sim/SimFragmentDialog$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings/sim/SimFragmentDialog;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/sim/SimFragmentDialog$1;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog$1;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v0}, Lcom/android/settings/sim/SimFragmentDialog;->access$000(Lcom/android/settings/sim/SimFragmentDialog;)V

    .line 186
    return-void
.end method

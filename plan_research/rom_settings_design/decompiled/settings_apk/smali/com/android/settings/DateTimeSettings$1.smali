.class Lcom/android/settings/DateTimeSettings$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 412
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 413
    const-string v0, "DateTimeSettings"

    const-string v1, "setOnKeyListener KeyEvent.KEYCODE_BACK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$1;->this$0:Lcom/android/settings/DateTimeSettings;

    invoke-static {v0}, Lcom/android/settings/DateTimeSettings;->access$000(Lcom/android/settings/DateTimeSettings;)V

    .line 416
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

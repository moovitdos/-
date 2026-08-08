.class Lcom/android/settings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 367
    .local v0, "btn":Landroid/widget/Button;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 369
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/android/settings/IccLockSettings$3;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/IccLockSettings;->access$602(Lcom/android/settings/IccLockSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .end local v0    # "btn":Landroid/widget/Button;
    :cond_1
    return-void

    .line 371
    .restart local v0    # "btn":Landroid/widget/Button;
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 356
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 361
    return-void
.end method

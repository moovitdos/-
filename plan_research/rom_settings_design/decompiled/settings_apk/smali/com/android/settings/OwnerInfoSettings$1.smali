.class Lcom/android/settings/OwnerInfoSettings$1;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/android/settings/OwnerInfoSettings;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$1;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$100(Lcom/android/settings/OwnerInfoSettings;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0908d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->access$002(Z)Z

    .line 102
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 94
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 90
    return-void
.end method

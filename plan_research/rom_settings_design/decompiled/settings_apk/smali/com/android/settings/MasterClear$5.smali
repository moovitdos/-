.class Lcom/android/settings/MasterClear$5;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear;->dialog()V
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
    .line 452
    iput-object p1, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 455
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 456
    iget-object v0, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$500(Lcom/android/settings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/settings/MasterClear$5;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)V

    .line 459
    :cond_0
    return-void
.end method

.class Lcom/android/settings/ApnSettings$3;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 541
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 542
    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Z

    .line 543
    return-void
.end method

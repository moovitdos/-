.class Lcom/android/settings/wifi/Station$1;
.super Ljava/lang/Object;
.source "Station.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/Station;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/Station;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/Station;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings/wifi/Station$1;->this$0:Lcom/android/settings/wifi/Station;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 67
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/Station$1;->this$0:Lcom/android/settings/wifi/Station;

    invoke-virtual {v0}, Lcom/android/settings/wifi/Station;->setBlockButton()V

    .line 70
    :cond_0
    return-void
.end method

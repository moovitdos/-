.class Lcom/android/settings/ApnSettings$4;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 782
    iput-object p1, p0, Lcom/android/settings/ApnSettings$4;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 785
    packed-switch p2, :pswitch_data_0

    .line 797
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$4;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v1, 0x7c4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 798
    return-void

    .line 788
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$4;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v1, p0, Lcom/android/settings/ApnSettings$4;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->editApn(I)V

    goto :goto_0

    .line 792
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings$4;->this$0:Lcom/android/settings/ApnSettings;

    iget-object v1, p0, Lcom/android/settings/ApnSettings$4;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->switchDefaultApn(I)V

    goto :goto_0

    .line 785
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

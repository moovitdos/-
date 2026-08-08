.class Lcom/duoqin/settings/RemoteLocatingSettings$4;
.super Ljava/lang/Object;
.source "RemoteLocatingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoqin/settings/RemoteLocatingSettings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoqin/settings/RemoteLocatingSettings;


# direct methods
.method constructor <init>(Lcom/duoqin/settings/RemoteLocatingSettings;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$4;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 92
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$4;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-static {v1, v3}, Lcom/duoqin/settings/RemoteLocatingSettings;->access$300(Lcom/duoqin/settings/RemoteLocatingSettings;Z)V

    .line 93
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$4;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-static {v1, v3}, Lcom/duoqin/settings/RemoteLocatingSettings;->access$400(Lcom/duoqin/settings/RemoteLocatingSettings;Z)V

    .line 94
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$4;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-static {v1}, Lcom/duoqin/settings/RemoteLocatingSettings;->access$500(Lcom/duoqin/settings/RemoteLocatingSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remote_locating"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.remotelocating.Binding"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$4;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

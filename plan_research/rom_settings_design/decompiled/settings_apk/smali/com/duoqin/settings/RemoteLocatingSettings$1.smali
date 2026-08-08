.class Lcom/duoqin/settings/RemoteLocatingSettings$1;
.super Ljava/lang/Object;
.source "RemoteLocatingSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoqin/settings/RemoteLocatingSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 69
    iput-object p1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$1;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings$1;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-static {v0}, Lcom/duoqin/settings/RemoteLocatingSettings;->access$000(Lcom/duoqin/settings/RemoteLocatingSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings$1;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$1;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-static {v1}, Lcom/duoqin/settings/RemoteLocatingSettings;->access$100(Lcom/duoqin/settings/RemoteLocatingSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    :cond_0
    return-void
.end method

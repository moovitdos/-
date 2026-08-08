.class Lcom/duoqin/settings/RemoteLocatingSettings$3;
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
    .line 104
    iput-object p1, p0, Lcom/duoqin/settings/RemoteLocatingSettings$3;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/duoqin/settings/RemoteLocatingSettings$3;->this$0:Lcom/duoqin/settings/RemoteLocatingSettings;

    invoke-static {v0}, Lcom/duoqin/settings/RemoteLocatingSettings;->access$200(Lcom/duoqin/settings/RemoteLocatingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    return-void
.end method

.class Lcom/sprd/settings/sim/SimInfoSetActivity$3;
.super Ljava/lang/Object;
.source "SimInfoSetActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/sim/SimInfoSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimInfoSetActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$3;->this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.StatusSim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    const-string v1, "sub_id"

    iget-object v2, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$3;->this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimInfoSetActivity;->access$200(Lcom/sprd/settings/sim/SimInfoSetActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$3;->this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 193
    const/4 v1, 0x1

    return v1
.end method

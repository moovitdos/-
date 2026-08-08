.class Lcom/android/settings/deviceinfo/StatusOther$4;
.super Ljava/lang/Object;
.source "StatusOther.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StatusOther;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StatusOther;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StatusOther;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusOther$4;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.sprd.settings.sim.MobileSimChooseUUI"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v2, "targetComponent":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const-string v3, "package_name"

    const-string v4, "com.android.settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v3, "class_name"

    const-string v4, "com.android.settings.deviceinfo.StatusSim"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "title_name"

    const v4, 0x7f090981

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusOther$4;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "StatusOther"

    const-string v4, "Not found Activity !"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

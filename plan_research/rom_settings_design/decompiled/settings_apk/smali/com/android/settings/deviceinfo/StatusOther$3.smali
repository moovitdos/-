.class Lcom/android/settings/deviceinfo/StatusOther$3;
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
    .line 229
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusOther$3;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 231
    const-string v3, "com.spreadtrum.android.eng"

    .line 232
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "com.spreadtrum.android.eng.PhaseCheck"

    .line 233
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 234
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.spreadtrum.android.eng.PhaseCheck"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string v4, "textFilter"

    const-string v5, "filter"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusOther$3;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 239
    :catch_0
    move-exception v1

    .line 240
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "AA"

    const-string v5, "Not found Activity !"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

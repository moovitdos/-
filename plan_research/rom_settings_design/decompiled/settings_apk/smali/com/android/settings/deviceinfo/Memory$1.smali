.class Lcom/android/settings/deviceinfo/Memory$1;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Memory;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 100
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "value":Ljava/lang/String;
    const-string v1, "sdcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    const v3, 0x7f09087a

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 110
    :goto_0
    return v4

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Memory$1;->this$0:Lcom/android/settings/deviceinfo/Memory;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/Memory;->handleUpdateAppInstallLocation(Ljava/lang/String;)V

    goto :goto_0
.end method

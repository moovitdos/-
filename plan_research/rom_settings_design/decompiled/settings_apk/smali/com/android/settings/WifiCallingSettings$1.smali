.class Lcom/android/settings/WifiCallingSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallingSettings;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    .line 87
    .local v0, "activity":Lcom/android/settings/Settings;
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v3}, Lcom/android/settings/WifiCallingSettings;->access$000(Lcom/android/settings/WifiCallingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    .line 90
    .local v1, "isWfcEnabled":Z
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-static {v3}, Lcom/android/settings/WifiCallingSettings;->access$000(Lcom/android/settings/WifiCallingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v6

    if-nez p1, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 92
    const-string v3, "WifiCallingSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCallStateChanged isWfcEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v3, p0, Lcom/android/settings/WifiCallingSettings$1;->this$0:Lcom/android/settings/WifiCallingSettings;

    invoke-virtual {v3}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v6, "wifi_calling_mode"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 95
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 96
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 99
    :cond_0
    return-void

    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_1
    move v3, v5

    .line 90
    goto :goto_0

    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_2
    move v4, v5

    .line 96
    goto :goto_1
.end method

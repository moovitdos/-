.class Lcom/android/settings/wifi/HotspotSettings$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/HotspotSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/HotspotSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/HotspotSettings;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/HotspotSettings;Lcom/android/settings/wifi/HotspotSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/HotspotSettings;
    .param p2, "x1"    # Lcom/android/settings/wifi/HotspotSettings$1;

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;-><init>(Lcom/android/settings/wifi/HotspotSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x3

    .line 293
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_AP_CONNECTION_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.net.wifi.SOFTAP_BLOCKLIST_AVAILABLE_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.sprd.settings.STATIONS_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$100(Lcom/android/settings/wifi/HotspotSettings;)V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 302
    .local v1, "hotspotState":I
    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    .line 303
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$200(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 304
    invoke-static {}, Lcom/android/settings/wifi/HotspotSettings;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$200(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 309
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$200(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/HotspotSettings;->access$400(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 310
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$500(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 311
    invoke-static {}, Lcom/android/settings/wifi/HotspotSettings;->access$300()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 312
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$500(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 316
    :goto_2
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$500(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v3}, Lcom/android/settings/wifi/HotspotSettings;->access$600(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 307
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$200(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_1

    .line 314
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$500(Lcom/android/settings/wifi/HotspotSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOrder(I)V

    goto :goto_2

    .line 318
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/HotspotSettings$StateReceiver;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/HotspotSettings;->access$100(Lcom/android/settings/wifi/HotspotSettings;)V

    goto :goto_0
.end method

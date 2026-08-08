.class Lcom/sprd/settings/LocationAgpsEnableConfig$1;
.super Ljava/lang/Object;
.source "LocationAgpsEnableConfig.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/LocationAgpsEnableConfig;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;


# direct methods
.method constructor <init>(Lcom/sprd/settings/LocationAgpsEnableConfig;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprd/settings/LocationAgpsEnableConfig$1;->this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig$1;->this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsEnableConfig;->access$000(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig$1;->this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsEnableConfig;->access$000(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 50
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig$1;->this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsEnableConfig;->access$100(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 51
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig$1;->this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsEnableConfig;->access$200(Lcom/sprd/settings/LocationAgpsEnableConfig;)Lcom/android/settings/location/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsEnableConfig$1;->this$0:Lcom/sprd/settings/LocationAgpsEnableConfig;

    invoke-static {v0}, Lcom/sprd/settings/LocationAgpsEnableConfig;->access$300(Lcom/sprd/settings/LocationAgpsEnableConfig;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enable_option"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    :cond_0
    return v2
.end method

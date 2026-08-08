.class Lcom/android/settings/SecuritySettings$3;
.super Landroid/database/ContentObserver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->access$100(Lcom/android/settings/SecuritySettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "sim_lock"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 804
    :cond_0
    return-void
.end method

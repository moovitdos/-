.class Lcom/android/settings/sim/SimSettings$4;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 643
    invoke-static {}, Lcom/android/settings/sim/SimSettings;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneStateListener.onCallStateChanged: state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/settings/sim/SimSettings;->access$1500(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V

    .line 644
    :cond_0
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    const-string v4, "sim_cellular_data"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 645
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 646
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 649
    .local v0, "ecbMode":Z
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_2

    .line 650
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 657
    .end local v0    # "ecbMode":Z
    :cond_1
    :goto_0
    return-void

    .line 653
    .restart local v0    # "ecbMode":Z
    :cond_2
    if-nez p1, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings$4;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v3}, Lcom/android/settings/sim/SimSettings;->access$1200(Lcom/android/settings/sim/SimSettings;)[Landroid/sim/Sim;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

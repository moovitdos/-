.class Lcom/android/settings/deviceinfo/StatusOther$2;
.super Landroid/telephony/PhoneStateListener;
.source "StatusOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StatusOther;->createPhoneStateListener()V
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
    .line 151
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StatusOther$2;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/VoLteServiceState;

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1}, Landroid/telephony/VoLteServiceState;->getSrvccState()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/VoLteServiceState;->getImsState()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 156
    .local v0, "mRegisteVolte":Z
    :goto_0
    const-string v2, "StatusOther"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegisteVolte : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusOther$2;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusOther;->access$300(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090332

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "registered":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusOther$2;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusOther;->access$300(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusOther$2;->this$0:Lcom/android/settings/deviceinfo/StatusOther;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/StatusOther;->access$400(Lcom/android/settings/deviceinfo/StatusOther;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    return-void

    .line 154
    .end local v0    # "mRegisteVolte":Z
    .end local v1    # "registered":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

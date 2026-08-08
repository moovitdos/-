.class Lcom/android/settings/IccLockSettings$6;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$302(Lcom/android/settings/IccLockSettings;I)I

    .line 753
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabListener mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v2}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1002(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 755
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$300(Lcom/android/settings/IccLockSettings;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/IccLockSettings;->access$1102(Lcom/android/settings/IccLockSettings;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 757
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$1200(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->dismissDialog()V

    .line 760
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$200(Lcom/android/settings/IccLockSettings;)V

    .line 761
    return-void
.end method

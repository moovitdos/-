.class Lcom/android/settings/RadioInfo$22$1;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo$22;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/RadioInfo$22;

.field final synthetic val$radioInteraction:Lcom/android/settings/RadioInfo$RadioInteraction;

.field final synthetic val$setRadioFeature:Landroid/telephony/TelephonyManager$RadioFeatures;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo$22;Lcom/android/settings/RadioInfo$RadioInteraction;Landroid/telephony/TelephonyManager$RadioFeatures;)V
    .locals 0

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/android/settings/RadioInfo$22$1;->this$1:Lcom/android/settings/RadioInfo$22;

    iput-object p2, p0, Lcom/android/settings/RadioInfo$22$1;->val$radioInteraction:Lcom/android/settings/RadioInfo$RadioInteraction;

    iput-object p3, p0, Lcom/android/settings/RadioInfo$22$1;->val$setRadioFeature:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1224
    const-string v0, "phone"

    const-string v1, "run powerOffRadio callback..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/android/settings/RadioInfo$22$1;->val$radioInteraction:Lcom/android/settings/RadioInfo$RadioInteraction;

    new-instance v1, Lcom/android/settings/RadioInfo$22$1$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RadioInfo$22$1$1;-><init>(Lcom/android/settings/RadioInfo$22$1;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/RadioInfo$RadioInteraction;->setCallBack(Ljava/lang/Runnable;)V

    .line 1231
    iget-object v0, p0, Lcom/android/settings/RadioInfo$22$1;->this$1:Lcom/android/settings/RadioInfo$22;

    iget-object v0, v0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v1, p0, Lcom/android/settings/RadioInfo$22$1;->val$setRadioFeature:Landroid/telephony/TelephonyManager$RadioFeatures;

    invoke-virtual {v0, v1}, Lcom/android/settings/RadioInfo;->setRadioFeatures(Landroid/telephony/TelephonyManager$RadioFeatures;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    iget-object v0, p0, Lcom/android/settings/RadioInfo$22$1;->this$1:Lcom/android/settings/RadioInfo$22;

    iget-object v0, v0, Lcom/android/settings/RadioInfo$22;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$5300(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/RadioInfo$22$1$2;

    invoke-direct {v1, p0}, Lcom/android/settings/RadioInfo$22$1$2;-><init>(Lcom/android/settings/RadioInfo$22$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1241
    :goto_0
    return-void

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo$22$1;->val$radioInteraction:Lcom/android/settings/RadioInfo$RadioInteraction;

    invoke-virtual {v0}, Lcom/android/settings/RadioInfo$RadioInteraction;->RunnablesetBack()V

    goto :goto_0
.end method

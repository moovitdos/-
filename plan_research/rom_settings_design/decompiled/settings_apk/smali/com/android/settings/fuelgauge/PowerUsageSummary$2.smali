.class Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 327
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 354
    return-void

    .line 329
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 330
    .local v1, "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 333
    .local v2, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-eqz v2, :cond_0

    .line 336
    const-string v3, "PowerUsageSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: bs.name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    .end local v1    # "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    .end local v2    # "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 342
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 348
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->clearStats()V

    .line 349
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

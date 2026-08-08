.class Lcom/android/settings/sim/SimSettings$3;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 488
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 491
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$100(Lcom/android/settings/sim/SimSettings;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 492
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 493
    if-eqz v0, :cond_0

    .line 494
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v2, v3

    .line 534
    :cond_1
    :goto_0
    return v2

    .line 496
    :sswitch_0
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    instance-of v1, v0, Lcom/android/settings/sim/SimSettings$DataPreference;

    if-eqz v1, :cond_2

    .line 498
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$700(Lcom/android/settings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$700(Lcom/android/settings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 503
    :cond_2
    instance-of v1, v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/sim/SimFragmentDialog;->show(Lcom/android/settings/sim/SimSettings;I)V

    goto :goto_0

    .line 510
    :sswitch_1
    instance-of v1, v0, Lcom/android/settings/sim/SimSettings$DataPreference;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 511
    check-cast v1, Lcom/android/settings/sim/SimSettings$DataPreference;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$DataPreference;->mDataSwitch:Landroid/widget/Switch;

    .line 512
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings;->access$700(Lcom/android/settings/sim/SimSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v4

    .line 514
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1, v4}, Lcom/android/settings/sim/SimSettings;->access$800(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v1

    .line 515
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v5, v1}, Lcom/android/settings/sim/SimSettings;->access$900(Lcom/android/settings/sim/SimSettings;Z)V

    move-object v1, v0

    .line 516
    check-cast v1, Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings/sim/SimSettings$DataPreference;->updateDataSwitch(I)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    check-cast v0, Lcom/android/settings/sim/SimSettings$DataPreference;

    invoke-static {v1, v0}, Lcom/android/settings/sim/SimSettings;->access$200(Lcom/android/settings/sim/SimSettings;Lcom/android/settings/sim/SimSettings$DataPreference;)V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 515
    goto :goto_1

    .line 520
    :cond_4
    instance-of v1, v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 521
    check-cast v1, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v1}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$400(Lcom/android/settings/sim/SimSettings$SimPreference;)Landroid/widget/Switch;

    move-result-object v1

    .line 522
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    check-cast v0, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$300(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v0

    .line 524
    const-string v1, "SimSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[KEYCODE_DPAD_CENTER] slotId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    invoke-static {v1, v0}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v1

    .line 526
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings$3;->this$0:Lcom/android/settings/sim/SimSettings;

    if-nez v1, :cond_5

    move v3, v2

    :cond_5
    invoke-static {v4, v0, v3}, Lcom/android/settings/sim/SimSettings;->access$1000(Lcom/android/settings/sim/SimSettings;IZ)V

    goto/16 :goto_0

    .line 494
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

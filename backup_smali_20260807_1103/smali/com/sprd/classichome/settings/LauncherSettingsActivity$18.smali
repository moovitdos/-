.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showKeyActionDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

.field final synthetic val$prefKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 505
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 508
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 547
    :pswitch_0
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:none"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    goto/16 :goto_0

    .line 543
    :pswitch_1
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:call_log"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 545
    goto :goto_0

    .line 539
    :pswitch_2
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:main_menu"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 541
    goto :goto_0

    .line 535
    :pswitch_3
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:settings"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 537
    goto :goto_0

    .line 531
    :pswitch_4
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:silent"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 533
    goto :goto_0

    .line 527
    :pswitch_5
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:notifications"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 529
    goto :goto_0

    .line 523
    :pswitch_6
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:flashlight"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 525
    goto :goto_0

    .line 514
    :pswitch_7
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18$1;

    invoke-direct {p2, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;)V

    invoke-static {p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    .line 521
    goto :goto_0

    .line 510
    :pswitch_8
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->val$prefKey:Ljava/lang/String;

    const-string v0, "default"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$18;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 512
    nop

    .line 551
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

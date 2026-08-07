.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;
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

    .line 819
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iput-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 822
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 869
    :pswitch_0
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:none"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    goto/16 :goto_0

    .line 865
    :pswitch_1
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:widget_edit"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 867
    goto/16 :goto_0

    .line 861
    :pswitch_2
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:flipper_next"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 863
    goto/16 :goto_0

    .line 857
    :pswitch_3
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:call_log"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 859
    goto :goto_0

    .line 853
    :pswitch_4
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:main_menu"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 855
    goto :goto_0

    .line 849
    :pswitch_5
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:settings"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 851
    goto :goto_0

    .line 845
    :pswitch_6
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:silent"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 847
    goto :goto_0

    .line 841
    :pswitch_7
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:notifications"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 843
    goto :goto_0

    .line 837
    :pswitch_8
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "action:flashlight"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 839
    goto :goto_0

    .line 828
    :pswitch_9
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    new-instance p2, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;

    invoke-direct {p2, p0}, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21$1;-><init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;)V

    invoke-static {p1, p2}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$500(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Lcom/sprd/classichome/settings/LauncherSettingsActivity$AppSelectedCallback;)V

    .line 835
    goto :goto_0

    .line 824
    :pswitch_a
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->val$prefKey:Ljava/lang/String;

    const-string v0, "default"

    invoke-static {p1, p2, v0}, Lcom/sprd/classichome/settings/LauncherSettings;->setKeyAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$21;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V

    .line 826
    nop

    .line 873
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
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

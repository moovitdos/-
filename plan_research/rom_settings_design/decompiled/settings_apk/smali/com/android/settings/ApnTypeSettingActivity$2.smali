.class Lcom/android/settings/ApnTypeSettingActivity$2;
.super Ljava/lang/Object;
.source "ApnTypeSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnTypeSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnTypeSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnTypeSettingActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-static {v2}, Lcom/android/settings/ApnTypeSettingActivity;->access$100(Lcom/android/settings/ApnTypeSettingActivity;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "apnType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-static {v2, v0}, Lcom/android/settings/ApnTypeSettingActivity;->access$200(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 111
    .local v1, "defaultapnType":Z
    :cond_2
    if-nez v1, :cond_3

    .line 112
    iget-object v2, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-static {v2, v0}, Lcom/android/settings/ApnTypeSettingActivity;->access$300(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-static {v2, v0}, Lcom/android/settings/ApnTypeSettingActivity;->access$400(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "defaultapnType":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setResult(I)V

    .line 119
    iget-object v2, p0, Lcom/android/settings/ApnTypeSettingActivity$2;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x7f0b0013
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

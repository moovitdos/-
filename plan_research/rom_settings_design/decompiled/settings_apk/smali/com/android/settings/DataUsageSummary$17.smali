.class Lcom/android/settings/DataUsageSummary$17;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3150
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3153
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$1100(Lcom/android/settings/DataUsageSummary;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3166
    :goto_0
    return-void

    .line 3155
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$4400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 3156
    .local v1, "notificationEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v0

    .line 3157
    .local v0, "currentTab":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1200(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3158
    if-eqz v1, :cond_3

    .line 3159
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_show_today_usage"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3165
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v3, v2}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_0

    .end local v0    # "currentTab":Ljava/lang/String;
    .end local v1    # "notificationEnabled":Z
    :cond_2
    move v1, v3

    .line 3155
    goto :goto_1

    .line 3161
    .restart local v0    # "currentTab":Ljava/lang/String;
    .restart local v1    # "notificationEnabled":Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$17;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_show_today_usage"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

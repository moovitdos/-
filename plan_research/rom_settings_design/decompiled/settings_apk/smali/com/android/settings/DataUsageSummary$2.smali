.class Lcom/android/settings/DataUsageSummary$2;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


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
.method constructor <init>(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$502(Lcom/android/settings/DataUsageSummary;I)I

    .line 383
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultDataPhoneIdObserver--mDefaultPhoneId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;Z)V

    .line 386
    return-void
.end method

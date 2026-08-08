.class public Lcom/sprd/settings/timerpower/ToastMaster;
.super Ljava/lang/Object;
.source "ToastMaster.java"


# static fields
.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static cancelToast()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 23
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 24
    return-void
.end method

.method public static setToast(Landroid/widget/Toast;)V
    .locals 1
    .param p0, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 15
    sget-object v0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 17
    :cond_0
    sput-object p0, Lcom/sprd/settings/timerpower/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 18
    return-void
.end method

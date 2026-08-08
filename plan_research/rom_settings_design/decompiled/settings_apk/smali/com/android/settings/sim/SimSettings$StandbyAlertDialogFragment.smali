.class public Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandbyAlertDialogFragment"
.end annotation


# static fields
.field private static mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;


# instance fields
.field private mOnOff:Z

.field private mPhoneId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    .prologue
    .line 1095
    iget v0, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mPhoneId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mOnOff:Z

    return v0
.end method

.method public static declared-synchronized show(Lcom/android/settings/sim/SimSettings;IZ)V
    .locals 4
    .param p0, "parent"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "phoneId"    # I
    .param p2, "onOff"    # Z

    .prologue
    .line 1103
    const-class v1, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 1112
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 1104
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    if-nez v0, :cond_0

    .line 1107
    new-instance v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    .line 1108
    sget-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    iput p1, v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mPhoneId:I

    .line 1109
    sget-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    iput-boolean p2, v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mOnOff:Z

    .line 1110
    sget-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1111
    sget-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "standby_dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1116
    if-eqz p1, :cond_0

    .line 1117
    const-string v4, "phoneId"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mPhoneId:I

    .line 1118
    const-string v4, "onOff"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mOnOff:Z

    .line 1120
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/SimSettings;

    .line 1122
    .local v1, "sft":Lcom/android/settings/sim/SimSettings;
    if-nez v1, :cond_1

    .line 1123
    const-string v4, "SimSettings"

    const-string v5, "StandbyAlertDialogFragment getTargetFragment failure!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    .line 1148
    :goto_0
    return-object v4

    .line 1126
    :cond_1
    invoke-static {v1, p0}, Lcom/android/settings/sim/SimSettings;->access$2400(Lcom/android/settings/sim/SimSettings;Landroid/app/DialogFragment;)V

    .line 1128
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1129
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v2

    .line 1130
    .local v2, "simManager":Landroid/sim/SimManager;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1131
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0900b2

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1132
    const v4, 0x7f09098d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1133
    const v4, 0x7f09098e

    new-instance v5, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;

    invoke-direct {v5, p0, v3, v1}, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment$1;-><init>(Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;Landroid/telephony/TelephonyManager;Lcom/android/settings/sim/SimSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1147
    const v4, 0x7f0900f6

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1148
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1153
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1154
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mDialog:Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;

    .line 1156
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/SimSettings;

    invoke-static {v0}, Lcom/android/settings/sim/SimSettings;->access$2800(Lcom/android/settings/sim/SimSettings;)V

    .line 1160
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1164
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1165
    const-string v0, "phoneId"

    iget v1, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mPhoneId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1166
    const-string v0, "onOff"

    iget-boolean v1, p0, Lcom/android/settings/sim/SimSettings$StandbyAlertDialogFragment;->mOnOff:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1167
    return-void
.end method

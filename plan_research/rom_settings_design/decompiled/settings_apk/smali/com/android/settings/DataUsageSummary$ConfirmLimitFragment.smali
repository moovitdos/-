.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field private static mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2132
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2129
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static removeDialog()V
    .locals 3

    .prologue
    .line 2170
    const-string v0, "DataUsage"

    const-string v1, "removeDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    if-eqz v0, :cond_1

    .line 2172
    const-string v0, "DataUsage"

    const-string v1, "mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2174
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    :cond_0
    sget-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 2177
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    .line 2179
    :cond_1
    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 14
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    const-wide v12, 0x140000000L

    const v11, 0x7f090733

    .line 2134
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2135
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2139
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$000(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 2140
    .local v1, "currentTab":Ljava/lang/String;
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const-string v8, "3g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "4g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1200(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2144
    :cond_2
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v8

    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$1500(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v8

    iget-wide v8, v8, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v8, v8

    const v9, 0x3f99999a    # 1.2f

    mul-float/2addr v8, v9

    float-to-long v5, v8

    .line 2147
    .local v5, "minLimitBytes":J
    const-string v8, "3g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2148
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2149
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 2160
    .local v2, "limitBytes":J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2161
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "message"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2162
    const-string v8, "limitBytes"

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2164
    new-instance v8, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v8}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    sput-object v8, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    .line 2165
    sget-object v8, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2166
    sget-object v8, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    const/4 v9, 0x0

    invoke-virtual {v8, p0, v9}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2167
    sget-object v8, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->mDialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "confirmLimit"

    invoke-virtual {v8, v9, v10}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2150
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "limitBytes":J
    .end local v4    # "message":Ljava/lang/CharSequence;
    :cond_3
    const-string v8, "4g"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2151
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2152
    .restart local v4    # "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .restart local v2    # "limitBytes":J
    goto :goto_1

    .line 2153
    .end local v2    # "limitBytes":J
    .end local v4    # "message":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1200(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2154
    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2155
    .restart local v4    # "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .restart local v2    # "limitBytes":J
    goto :goto_1

    .line 2157
    .end local v2    # "limitBytes":J
    .end local v4    # "message":Ljava/lang/CharSequence;
    :cond_5
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknown current tab: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2184
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2185
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2187
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2188
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090732

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2189
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2191
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

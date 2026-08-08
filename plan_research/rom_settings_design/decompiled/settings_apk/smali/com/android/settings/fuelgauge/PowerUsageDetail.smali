.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$2;,
        Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    }
.end annotation


# static fields
.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mForceStopButton:Landroid/widget/Button;

.field mInstaller:Landroid/content/ComponentName;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0905d1
        0x7f0905d2
        0x7f0905d0
        0x7f0905d6
        0x7f0905d8
        0x7f0905d4
        0x7f0905db
        0x7f0905df
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 464
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageDetail;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "summary"    # I
    .param p3, "action"    # I

    .prologue
    .line 427
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 428
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 429
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f04005b

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 430
    .local v2, "item":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 431
    const v5, 0x7f0b0096

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 432
    .local v0, "actionButton":Landroid/widget/Button;
    const v5, 0x7f0b0049

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 433
    .local v4, "summaryView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v6, 0x7f020058

    invoke-virtual {v5, v6}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 440
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 442
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 472
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 499
    :goto_0
    return-void

    .line 476
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 476
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 482
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 485
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 486
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 494
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 489
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 482
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 14

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "title"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 190
    const-string v10, "percent"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 191
    .local v6, "percentage":I
    const-string v10, "gauge"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, "gaugeValue":I
    const-string v10, "since"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 193
    const-string v10, "uid"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 194
    const-string v10, "drainType"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 195
    const-string v10, "noCoverage"

    const-wide/16 v11, 0x0

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 196
    const-string v10, "iconPackage"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, "iconPackage":Ljava/lang/String;
    const-string v10, "iconId"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, "iconId":I
    const-string v10, "showLocationButton"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 217
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x1020010

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 218
    .local v8, "summary":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 221
    const-string v10, "types"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 222
    const-string v10, "values"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 224
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x1020016

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 225
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x1020014

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 228
    .local v9, "text1":Landroid/widget/TextView;
    const v10, 0x7f090776

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x7f0b0108

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 231
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x7f0b0195

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 232
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x7f0b0196

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 233
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 235
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x102000d

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    .line 236
    .local v7, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 238
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x1020006

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 239
    .local v3, "icon":Landroid/widget/ImageView;
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x7f0b0109

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 243
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v11, 0x7f0b010a

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 245
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 246
    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 247
    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-direct {p0, v10}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 249
    iget v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v11, 0x2710

    if-lt v10, v11, :cond_3

    .line 250
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v11, 0x7f09044b

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 251
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v11, 0x1040451

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 254
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 255
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "send_action_app_error"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, "enabled":I
    if-eqz v1, :cond_2

    .line 261
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v10, v10

    if-lez v10, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 265
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v10, v11, v12}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    .end local v1    # "enabled":I
    :goto_2
    return-void

    .line 270
    .restart local v1    # "enabled":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 272
    :cond_2
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 275
    .end local v1    # "enabled":I
    :cond_3
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 267
    .restart local v1    # "enabled":I
    :catch_0
    move-exception v10

    goto :goto_0
.end method

.method private doAction(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 295
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 296
    packed-switch p1, :pswitch_data_0

    .line 327
    :goto_0
    :pswitch_0
    return-void

    .line 298
    :pswitch_1
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902ad

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 302
    :pswitch_2
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0901ea

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 306
    :pswitch_3
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09017f

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 310
    :pswitch_4
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0900fb

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 314
    :pswitch_5
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 321
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 324
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 367
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 368
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 371
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 373
    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 375
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v4, 0x1

    .line 376
    .local v4, "removeHeader":Z
    sget-object v5, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 421
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 422
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_1
    return-void

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :cond_2
    move-object v2, v5

    .line 371
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 373
    goto :goto_1

    .line 379
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removeHeader":Z
    :pswitch_0
    if-eqz v1, :cond_4

    array-length v5, v1

    if-ne v5, v8, :cond_4

    .line 380
    const v5, 0x7f0905cb

    const v6, 0x7f0905dc

    const/4 v7, 0x5

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 382
    const/4 v4, 0x0

    .line 388
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v5, :cond_0

    .line 389
    const v5, 0x7f09012a

    const v6, 0x7f0905dd

    const/4 v7, 0x6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 391
    const/4 v4, 0x0

    goto :goto_2

    .line 395
    :pswitch_1
    const v5, 0x7f0902dc

    const v6, 0x7f0905d5

    invoke-direct {p0, v5, v6, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 398
    const/4 v4, 0x0

    .line 399
    goto :goto_2

    .line 401
    :pswitch_2
    const v5, 0x7f0901ea

    const v6, 0x7f0905d7

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 404
    const/4 v4, 0x0

    .line 405
    goto :goto_2

    .line 407
    :pswitch_3
    const v5, 0x7f09017f

    const v6, 0x7f0905d9

    const/4 v7, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 410
    const/4 v4, 0x0

    .line 411
    goto :goto_2

    .line 413
    :pswitch_4
    iget-wide v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 414
    const v5, 0x7f0900fb

    const v6, 0x7f0905d3

    const/4 v7, 0x4

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 417
    const/4 v4, 0x0

    goto :goto_2

    .line 372
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :catch_0
    move-exception v6

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 15

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 331
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v10, :cond_1

    .line 332
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v10, v10

    if-ge v2, v10, :cond_1

    .line 334
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v2

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    .line 332
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v10, v10, v2

    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    .local v5, "label":Ljava/lang/String;
    const/4 v8, 0x0

    .line 337
    .local v8, "value":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v10, v10, v2

    packed-switch v10, :pswitch_data_0

    .line 353
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v11, v11, v2

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v8

    .line 355
    :goto_3
    const v10, 0x7f04005c

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 357
    .local v4, "item":Landroid/view/ViewGroup;
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 358
    const v10, 0x7f0b00cf

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 359
    .local v6, "labelView":Landroid/widget/TextView;
    const v10, 0x7f0b0107

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 360
    .local v9, "valueView":Landroid/widget/TextView;
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 342
    .end local v4    # "item":Landroid/view/ViewGroup;
    .end local v6    # "labelView":Landroid/widget/TextView;
    .end local v9    # "valueView":Landroid/widget/TextView;
    :pswitch_1
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v2

    double-to-long v0, v10

    .line 343
    .local v0, "bytes":J
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 344
    goto :goto_3

    .line 346
    .end local v0    # "bytes":J
    :pswitch_2
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v7, v10

    .line 347
    .local v7, "percentage":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f090776

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 348
    goto :goto_3

    .line 350
    .end local v7    # "percentage":I
    :pswitch_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 364
    .end local v2    # "i":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 337
    :pswitch_data_0
    .packed-switch 0x7f0905bf
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 528
    const/4 v8, 0x1

    if-ge p1, v8, :cond_1

    .line 529
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b010d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 533
    .local v6, "packagesParent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 534
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 536
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 538
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 539
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 540
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 545
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 547
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 548
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 550
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 551
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 556
    :cond_4
    const v8, 0x7f04005e

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 558
    .local v3, "item":Landroid/view/ViewGroup;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 559
    const v8, 0x7f0b00cf

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 561
    .local v5, "labelView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-direct {p0, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "item":Landroid/view/ViewGroup;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "labelView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 562
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 568
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 4

    .prologue
    .line 455
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 462
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 458
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 458
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 461
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removeAndroidChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 573
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const-string v0, "(?i)android |android.|android"

    .line 575
    .local v0, "replaceStr":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 577
    .end local v0    # "replaceStr":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private removePackagesSection()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 446
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0b010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 502
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 525
    :goto_0
    return-void

    .line 504
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 505
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 506
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 507
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 508
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 510
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 512
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 513
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 514
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 515
    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 516
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 517
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 518
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 520
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 522
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 523
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 286
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 287
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 290
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090441

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 292
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 281
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 148
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 154
    const v1, 0x7f04005d

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 158
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 159
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 160
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 170
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 172
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 185
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 178
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 179
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 180
    return-void
.end method

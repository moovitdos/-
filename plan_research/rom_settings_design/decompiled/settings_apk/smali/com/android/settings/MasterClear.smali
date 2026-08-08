.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mEnvironmentData:Ljava/lang/String;

.field private mEraseExternalStorage:Landroid/widget/TextView;

.field private mEraseExternalStorageDescription:Landroid/widget/TextView;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mLevelpower:I

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mPinConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEnvironmentData:Ljava/lang/String;

    .line 95
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Lcom/android/settings/MasterClear$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    .line 424
    new-instance v0, Lcom/android/settings/MasterClear$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$4;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/MasterClear;->mEnvironmentData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/settings/MasterClear;->mLevelpower:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/MasterClear;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/settings/MasterClear;->mLevelpower:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEnvironmentData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEnvironmentData:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEraseExternalStorage:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEraseExternalStorageDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/MasterClear$3;

    invoke-direct {v1, p0}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    .line 263
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEraseExternalStorage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mEraseExternalStorageDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 26

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b00dc

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 272
    .local v10, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    const v24, 0x7f0b00dd

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 273
    .local v13, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v13}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 275
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 277
    .local v14, "context":Landroid/content/Context;
    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    .line 278
    .local v22, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual/range {v22 .. v22}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v9

    .line 279
    .local v9, "accounts":[Landroid/accounts/Account;
    array-length v5, v9

    .line 280
    .local v5, "N":I
    if-nez v5, :cond_0

    .line 281
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 344
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string v23, "layout_inflater"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/LayoutInflater;

    .line 289
    .local v20, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    .line 290
    .local v16, "descs":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v0, v16

    array-length v4, v0

    .line 292
    .local v4, "M":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    if-ge v0, v5, :cond_7

    .line 293
    aget-object v6, v9, v18

    .line 294
    .local v6, "account":Landroid/accounts/Account;
    const/4 v15, 0x0

    .line 295
    .local v15, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v4, :cond_1

    .line 296
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    aget-object v24, v16, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 297
    aget-object v15, v16, v21

    .line 301
    :cond_1
    if-nez v15, :cond_3

    .line 302
    const-string v23, "MasterClear"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No descriptor for account name="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " type="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 295
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 306
    :cond_3
    const/16 v19, 0x0

    .line 308
    .local v19, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    .line 309
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    .line 310
    .local v11, "authContext":Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 311
    const/16 v23, 0x64

    const/16 v24, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/MasterClear;->scaleDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 323
    .end local v11    # "authContext":Landroid/content/Context;
    :cond_4
    :goto_4
    const v23, 0x7f04004c

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 325
    .local v12, "child":Landroid/widget/LinearLayout;
    const v23, 0x7f0b00e5

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 327
    .local v8, "accountTitle":Landroid/widget/TextView;
    const-string v23, "sprd.com.android.account.phone"

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 328
    const v23, 0x7f0908fc

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 333
    :goto_5
    if-eqz v19, :cond_5

    .line 334
    const v23, 0x7f0b00e4

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 335
    .local v7, "accountIcon":Landroid/widget/ImageView;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 338
    .end local v7    # "accountIcon":Landroid/widget/ImageView;
    :cond_5
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 313
    .end local v8    # "accountTitle":Landroid/widget/TextView;
    .end local v12    # "child":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v17

    .line 314
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v23, "MasterClear"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "No icon for account type "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 330
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "accountTitle":Landroid/widget/TextView;
    .restart local v12    # "child":Landroid/widget/LinearLayout;
    :cond_6
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 342
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v8    # "accountTitle":Landroid/widget/TextView;
    .end local v12    # "child":Landroid/widget/LinearLayout;
    .end local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v19    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v21    # "j":I
    :cond_7
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f090398

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f090399

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private runRestrictionsChallenge()Z
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSoftKey()V
    .locals 2

    .prologue
    .line 506
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 507
    .local v0, "featureBar":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 513
    return-void
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 150
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 151
    const-class v0, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 152
    const v0, 0x7f09039b

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 153
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 155
    return-void
.end method


# virtual methods
.method protected dialog()V
    .locals 3

    .prologue
    .line 448
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090896

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 450
    const v1, 0x7f090897

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 451
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MasterClear$5;

    invoke-direct {v2, p0}, Lcom/android/settings/MasterClear$5;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    iget-object v1, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MasterClear$6;

    invoke-direct {v2, p0}, Lcom/android/settings/MasterClear$6;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 469
    return-void
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 347
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 348
    .local v3, "drawableWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 349
    .local v2, "drawableHeight":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 351
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 352
    .local v4, "newBitMap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 353
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 354
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 355
    return-object v4

    .line 349
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v1    # "config":Landroid/graphics/Bitmap$Config;
    .end local v4    # "newBitMap":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 132
    if-ne p2, v1, :cond_0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 142
    if-ne p2, v1, :cond_2

    .line 143
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 145
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 481
    const/4 v0, 0x1

    const v1, 0x7f090395

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 483
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x8

    .line 373
    const v2, 0x7f04004b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 374
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    .line 376
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v1, "mountFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 388
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 390
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 391
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00de

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, "externalOption":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 395
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mEraseExternalStorage:Landroid/widget/TextView;

    .line 396
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/MasterClear;->mEraseExternalStorageDescription:Landroid/widget/TextView;

    .line 398
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 399
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->setSoftKey()V

    .line 400
    iget-object v2, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 476
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-nez v1, :cond_2

    .line 488
    iget v1, p0, Lcom/android/settings/MasterClear;->mLevelpower:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->dialog()V

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 491
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 492
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z

    move-result v1

    if-nez v1, :cond_0

    .line 495
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 501
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 444
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 405
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 407
    invoke-static {}, Landroid/os/Environment;->getExternalStoragePathState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mEnvironmentData:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 409
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 411
    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 413
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void
.end method

.method public scaleDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 360
    .local v3, "drawablewidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 361
    .local v4, "drawableheight":I
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClear;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    .local v0, "oldbmp":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 363
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v2, p2

    int-to-float v6, v3

    div-float v9, v2, v6

    .line 364
    .local v9, "scaleWidth":F
    int-to-float v2, p3

    int-to-float v6, v4

    div-float v8, v2, v6

    .line 365
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 366
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 368
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.class public Lcom/android/settings/ApnEditor;
.super Landroid/preference/PreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mAllowEmptyApn:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnEditable:Z

.field private mApnSetting:Lcom/android/settings/ApnSetting;

.field private mApnType:Landroid/preference/Preference;

.field private mApnTypeSummary:Ljava/lang/String;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mFirstTime:Z

.field private mIsPreloaded:Z

.field private mIsdelete:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mNewApnSetting:Lcom/android/settings/ApnSetting;

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPhoneId:I

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRecordApnType:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;

.field private mVirtualOperator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    .line 145
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "preload"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "editable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 111
    iput v2, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    .line 117
    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsPreloaded:Z

    .line 123
    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsdelete:Z

    .line 125
    new-instance v0, Lcom/android/settings/ApnSetting;

    invoke-direct {v0}, Lcom/android/settings/ApnSetting;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    .line 126
    new-instance v0, Lcom/android/settings/ApnSetting;

    invoke-direct {v0}, Lcom/android/settings/ApnSetting;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    .line 129
    const-string v0, "ro.operator"

    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "orange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mAllowEmptyApn:Z

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mApnEditable:Z

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mVirtualOperator:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApnEditor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnEditor;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnEditor;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private allowDisplayXCAP()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1069
    const-string v1, "ro.operator"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1071
    sget-object v2, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowDisplayXCAP: strVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return v0

    .line 1076
    :cond_1
    const-string v2, "cucc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1077
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 606
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 607
    .local v1, "mBearerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 614
    :goto_0
    return-object v3

    .line 610
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 612
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1049
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    :cond_0
    const-string p1, ""

    .line 1052
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    :cond_0
    sget-object p1, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1044
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1024
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1025
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1026
    return-void
.end method

.method private fillUi()V
    .locals 14

    .prologue
    .line 427
    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 428
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 430
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 431
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 432
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 433
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 434
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 435
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x6

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 436
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x7

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 437
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xc

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 438
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xd

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 439
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 440
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x9

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 441
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xa

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 444
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 445
    .local v9, "strApnType":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->getApnEditable(Landroid/database/Cursor;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/ApnEditor;->mApnEditable:Z

    .line 446
    sget-object v11, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fillUi : mApnEditable = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/settings/ApnEditor;->mApnEditable:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", allowDisplayXCAP = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->allowDisplayXCAP()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",  strApnType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->allowDisplayXCAP()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ",xcap"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 452
    const-string v11, ",xcap"

    const-string v12, ""

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    .line 458
    :goto_0
    const-string v11, "1"

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x16

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/settings/ApnEditor;->mIsPreloaded:Z

    .line 460
    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_0

    .line 465
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 469
    const-string v11, "gsm.sim.operator.numeric"

    iget v12, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    invoke-static {v11, v12}, Landroid/telephony/TelephonyManager;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, "numeric":Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x4

    if-le v11, v12, :cond_0

    .line 479
    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "mcc":Ljava/lang/String;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "mnc":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 484
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 485
    iput-object v4, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 486
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 489
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    .end local v8    # "numeric":Ljava/lang/String;
    :cond_0
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xe

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 490
    .local v1, "authVal":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_7

    .line 491
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 496
    :goto_2
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x10

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 497
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x13

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 498
    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x11

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_8

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 499
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x12

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 501
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x14

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "mvnoType":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x14

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, "mvnoMatchData":Ljava/lang/String;
    sget-object v11, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fillUi mvnoType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",mvnoMatchData = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    sget-object v11, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 505
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/settings/ApnEditor;->mVirtualOperator:Z

    .line 508
    :cond_1
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 509
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 510
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0x15

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 512
    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 513
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 514
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 520
    .end local v1    # "authVal":I
    .end local v5    # "mvnoMatchData":Ljava/lang/String;
    .end local v7    # "mvnoType":Ljava/lang/String;
    .end local v9    # "strApnType":Ljava/lang/String;
    :cond_2
    iget-boolean v11, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 521
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0081

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "array":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v0, v11

    iput-object v11, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    .line 525
    .end local v0    # "array":[Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "authVal":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 541
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 542
    .local v2, "authValIndex":I
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 544
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0a0030

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 545
    .local v10, "values":[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v12, v10, v2

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 550
    .end local v2    # "authValIndex":I
    .end local v10    # "values":[Ljava/lang/String;
    :goto_4
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v12, v13}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    .line 560
    .local v6, "mvnoMatchDataSummery":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->isSpecificApnForCdma(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 561
    sget-object v6, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 563
    :cond_4
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmNameStr(Ljava/lang/String;)V

    .line 566
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmApnStr(Ljava/lang/String;)V

    .line 567
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmProxyStr(Ljava/lang/String;)V

    .line 568
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmPortStr(Ljava/lang/String;)V

    .line 569
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmUserStr(Ljava/lang/String;)V

    .line 570
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmServerStr(Ljava/lang/String;)V

    .line 571
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmPasswordStr(Ljava/lang/String;)V

    .line 572
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMmsProxyStr(Ljava/lang/String;)V

    .line 573
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMmsPortStr(Ljava/lang/String;)V

    .line 574
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMmscStr(Ljava/lang/String;)V

    .line 575
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMccStr(Ljava/lang/String;)V

    .line 576
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMncStr(Ljava/lang/String;)V

    .line 577
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmApnTypeStr(Ljava/lang/String;)V

    .line 578
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmAuthTypeStr(Ljava/lang/String;)V

    .line 579
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmProtocolStr(Ljava/lang/String;)V

    .line 580
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmRoamingProtocolStr(Ljava/lang/String;)V

    .line 581
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmBearerStr(Ljava/lang/String;)V

    .line 582
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v12}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMvnoTypeStr(Ljava/lang/String;)V

    .line 583
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v12, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/settings/ApnSetting;->setmMvnoMatchDataStr(Ljava/lang/String;)V

    .line 584
    return-void

    .line 454
    .end local v1    # "authVal":Ljava/lang/String;
    .end local v6    # "mvnoMatchDataSummery":Ljava/lang/String;
    .restart local v9    # "strApnType":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    goto/16 :goto_0

    .line 473
    :cond_6
    const-string v11, "gsm.sim.operator.numeric"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "numeric":Ljava/lang/String;
    goto/16 :goto_1

    .line 493
    .end local v8    # "numeric":Ljava/lang/String;
    .local v1, "authVal":I
    :cond_7
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 498
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 547
    .end local v9    # "strApnType":Ljava/lang/String;
    .local v1, "authVal":Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    sget-object v12, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private getApnEditable(Landroid/database/Cursor;)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 395
    const-string v1, "ro.operator"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "version":Ljava/lang/String;
    const-string v1, "vodafone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "cucc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ctcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    const/16 v2, 0x17

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    const/4 v1, 0x0

    .line 401
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 957
    const/4 v1, 0x0

    .line 959
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 960
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 961
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 962
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 963
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 964
    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090386

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    .line 969
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/ApnEditor;->mAllowEmptyApn:Z

    if-nez v2, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090387

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 971
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 972
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090388

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 973
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xfffe

    and-int/2addr v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 974
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 975
    :cond_3
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090951

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private isSpecificApnForCdma(Ljava/lang/String;)Z
    .locals 12
    .param p1, "mvnoMatchData"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 405
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v7

    .line 406
    .local v7, "simManager":Landroid/sim/SimManager;
    const/4 v5, 0x0

    .line 407
    .local v5, "mIccid":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 408
    iget v9, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    invoke-virtual {v7, v9}, Landroid/sim/SimManager;->getIccId(I)Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, "simIccid":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 410
    const/4 v9, 0x6

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 413
    .end local v6    # "simIccid":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 414
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "iccids":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 416
    .local v2, "iccid":Ljava/lang/String;
    sget-object v9, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iccid is configure file is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mIccid in sim is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 418
    const/4 v8, 0x1

    .line 422
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "iccid":Ljava/lang/String;
    .end local v3    # "iccids":[Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_1
    return v8

    .line 415
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "iccid":Ljava/lang/String;
    .restart local v3    # "iccids":[Ljava/lang/String;
    .restart local v4    # "len$":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 644
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 645
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 647
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 683
    :goto_0
    return-object v0

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 653
    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "values["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v4, "None"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 655
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 659
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 660
    const-string v2, "SPN"

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 661
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 681
    :cond_1
    :goto_2
    :try_start_0
    aget-object v0, v3, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 657
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 662
    :cond_3
    const-string v2, "IMSI"

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 663
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 666
    :cond_4
    const-string v2, "GID"

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 667
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 669
    :cond_5
    const-string v2, "PNN"

    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 671
    iget v2, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getPnnHomeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 673
    sget-object v4, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pnn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 682
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 592
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 593
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 600
    :goto_0
    return-object v3

    .line 596
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1029
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1030
    :cond_0
    sget-object v2, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 1036
    :goto_0
    return-object v2

    .line 1032
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1033
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1034
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1033
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1036
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 837
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 838
    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 840
    iget-object v5, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 842
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 843
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 953
    :goto_0
    return v1

    .line 847
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 848
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v2, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/ApnEditor;->mAllowEmptyApn:Z

    if-nez v6, :cond_2

    .line 856
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 859
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v3, "The mUri has delete!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iput-boolean v2, p0, Lcom/android/settings/ApnEditor;->mIsdelete:Z

    goto :goto_0

    .line 865
    :cond_2
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmNameStr(Ljava/lang/String;)V

    .line 866
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmApnStr(Ljava/lang/String;)V

    .line 867
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmProxyStr(Ljava/lang/String;)V

    .line 868
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmPortStr(Ljava/lang/String;)V

    .line 869
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmUserStr(Ljava/lang/String;)V

    .line 870
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmServerStr(Ljava/lang/String;)V

    .line 871
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmPasswordStr(Ljava/lang/String;)V

    .line 872
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMmsProxyStr(Ljava/lang/String;)V

    .line 873
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMmsPortStr(Ljava/lang/String;)V

    .line 874
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMmscStr(Ljava/lang/String;)V

    .line 875
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMccStr(Ljava/lang/String;)V

    .line 876
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMncStr(Ljava/lang/String;)V

    .line 877
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmApnTypeStr(Ljava/lang/String;)V

    .line 878
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmAuthTypeStr(Ljava/lang/String;)V

    .line 879
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmProtocolStr(Ljava/lang/String;)V

    .line 880
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmRoamingProtocolStr(Ljava/lang/String;)V

    .line 881
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmBearerStr(Ljava/lang/String;)V

    .line 882
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMvnoTypeStr(Ljava/lang/String;)V

    .line 883
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->setmMvnoMatchDataStr(Ljava/lang/String;)V

    .line 884
    iget-object v6, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    invoke-virtual {v6, v7}, Lcom/android/settings/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 885
    if-nez v6, :cond_8

    .line 886
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mApnSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mApnSetting:Lcom/android/settings/ApnSetting;

    invoke-virtual {v8}, Lcom/android/settings/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    sget-object v6, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNewApnSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/ApnEditor;->mNewApnSetting:Lcom/android/settings/ApnSetting;

    invoke-virtual {v8}, Lcom/android/settings/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 892
    const-string v7, "name"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x7f09067c

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v0, "apn"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v0, "proxy"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v0, "port"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const-string v0, "mmsproxy"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v0, "mmsport"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v0, "user"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const-string v0, "server"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v0, "password"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v0, "mmsc"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 905
    if-eqz v0, :cond_4

    .line 906
    const-string v3, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    :cond_4
    const-string v0, "protocol"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v0, "roaming_protocol"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 913
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    :cond_5
    const-string v0, "mcc"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v0, "mnc"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string v0, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "multi_sim_data_call"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 931
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 933
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    if-ne v1, v0, :cond_6

    .line 935
    const-string v0, "current"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 940
    if-eqz v0, :cond_7

    .line 941
    const-string v1, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    :cond_7
    const-string v0, "20404"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "898603,898611"

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->isSpecificApnForCdma(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 944
    const-string v0, "mvno_type"

    const-string v1, "iccid"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v0, "mvno_match_data"

    const-string v1, "898603,898611"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_8
    move v1, v2

    .line 953
    goto/16 :goto_0

    .line 926
    :catch_0
    move-exception v0

    .line 927
    sget-object v3, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v7, "Exception Reading Dual Sim Data Subscription Value."

    invoke-static {v3, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_1

    .line 947
    :cond_9
    const-string v0, "mvno_type"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v0, "mvno_match_data"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 744
    packed-switch p2, :pswitch_data_0

    .line 757
    :goto_0
    return-void

    .line 746
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 747
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "apn_type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "apnType":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 752
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "b":Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRecordApnType:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 210
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 211
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v4, 0x7f020058

    invoke-virtual {v0, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v4, 0x7f090002

    invoke-virtual {v0, v4}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterText(I)V

    .line 220
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090366

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 221
    const-string v0, "apn_name"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 222
    const-string v0, "apn_apn"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 223
    const-string v0, "apn_http_proxy"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 224
    const-string v0, "apn_http_port"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 225
    const-string v0, "apn_user"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 226
    const-string v0, "apn_server"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 227
    const-string v0, "apn_password"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 228
    const-string v0, "apn_mms_proxy"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 229
    const-string v0, "apn_mms_port"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 230
    const-string v0, "apn_mmsc"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 231
    const-string v0, "apn_mcc"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 232
    const-string v0, "apn_mnc"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 233
    const-string v0, "apn_type"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    .line 235
    const-string v0, "auth_type"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 236
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    const-string v0, "apn_protocol"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 239
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    const-string v0, "apn_roaming_protocol"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 242
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    const-string v0, "carrier_enabled"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 245
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/ApnEditor;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    const-string v0, "bearer"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    .line 248
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 250
    const-string v0, "mvno_type"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 251
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 252
    const-string v0, "mvno_match_data"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 254
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 257
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "action":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "sub_id"

    invoke-virtual {v7, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    .line 263
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090971

    new-array v5, v1, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApnEditor onCreate received mPhoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    .line 272
    if-eqz p1, :cond_0

    .line 273
    const-string v0, "APN_TYPE"

    const-string v4, ""

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    .line 275
    const-string v0, "IS_PRELOADED"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsPreloaded:Z

    .line 278
    :cond_0
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 320
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 322
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 324
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 326
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->fillUi()V

    .line 327
    :goto_3
    return-void

    .line 266
    :cond_1
    const v0, 0x7f090365

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 270
    goto :goto_1

    .line 280
    :cond_3
    const-string v0, "android.intent.action.INSERT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mFirstTime:Z

    if-nez v0, :cond_4

    const-string v0, "pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 282
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 293
    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    .line 295
    const-string v0, "mvno_type"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 296
    const-string v0, "mvno_match_data"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 303
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert new telephony provider into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 288
    :cond_5
    iget v0, p0, Lcom/android/settings/ApnEditor;->mPhoneId:I

    invoke-static {v0, v3}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_4

    .line 311
    :cond_6
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 314
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 985
    if-nez p1, :cond_0

    .line 986
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 988
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090385

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090970

    new-instance v3, Lcom/android/settings/ApnEditor$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ApnEditor$1;-><init>(Lcom/android/settings/ApnEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1007
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 762
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 765
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsPreloaded:Z

    if-eqz v0, :cond_0

    const-string v0, "cucc"

    const-string v1, "ro.operator"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 767
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mApnEditable:Z

    if-eqz v0, :cond_1

    .line 769
    const v0, 0x7f090381

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 772
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 773
    const/4 v0, 0x2

    const v1, 0x7f090383

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 775
    const/4 v0, 0x3

    const v1, 0x7f090384

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 781
    :cond_2
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 387
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 391
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 807
    packed-switch p1, :pswitch_data_0

    .line 815
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 809
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 812
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 786
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 802
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 788
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 791
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 796
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 797
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 799
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 380
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 689
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 692
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 693
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 695
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a0030

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 697
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 698
    goto :goto_1

    .line 700
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 701
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 703
    goto :goto_1

    .line 708
    :cond_2
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 709
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 711
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 712
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/settings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 713
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 714
    goto :goto_1

    .line 719
    :cond_4
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 720
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 722
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 723
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 725
    goto :goto_1

    .line 727
    :cond_6
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 728
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 729
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 730
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 732
    goto :goto_1

    .line 734
    :cond_8
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 735
    iget-object v7, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 623
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 624
    const-string v1, "apn_type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ApnTypeSettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 626
    const-string v1, "android.intent.action.APNTYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 628
    iget-object v2, p0, Lcom/android/settings/ApnEditor;->mApnType:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ApnEditor;->mRecordApnType:Ljava/lang/String;

    .line 629
    const-string v2, "apn_type"

    iget-object v3, p0, Lcom/android/settings/ApnEditor;->mRecordApnType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 631
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 633
    :cond_0
    instance-of v0, p2, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1

    .line 634
    check-cast p2, Landroid/preference/EditTextPreference;

    .line 635
    check-cast p2, Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 637
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 639
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1012
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1014
    if-nez p1, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/android/settings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1018
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1021
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 331
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 334
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsdelete:Z

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 337
    iput-object v3, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 339
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 340
    .local v6, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Get mUri again!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 342
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/ApnEditor;->sProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 343
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
    iput-boolean v8, p0, Lcom/android/settings/ApnEditor;->mIsdelete:Z

    .line 350
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 351
    .local v7, "prefSet":Landroid/preference/PreferenceScreen;
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mIsPreloaded:Z

    if-eqz v0, :cond_4

    const-string v0, "cucc"

    const-string v1, "ro.operator"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 359
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mApnEditable:Z

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 365
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/ApnEditor;->mVirtualOperator:Z

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 371
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 373
    return-void

    .line 354
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 821
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 825
    :cond_0
    const-string v0, "APN_TYPE"

    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mApnTypeSummary:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v0, "IS_PRELOADED"

    iget-boolean v1, p0, Lcom/android/settings/ApnEditor;->mIsPreloaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 828
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1058
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1059
    iget-object v1, p0, Lcom/android/settings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1060
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

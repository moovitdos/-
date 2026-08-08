.class public Lcom/android/settings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$5;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field public static mPhoneId:I

.field private static mRestoreDefaultApnMode:Z

.field private static mSelectedId:I


# instance fields
.field private mApnPreferenceId:I

.field private mDialogName:Ljava/lang/String;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMvnoMatchData:Ljava/lang/String;

.field private mMvnoType:Ljava/lang/String;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mRestoreDefaultApnThread:Landroid/os/HandlerThread;

.field private mSelectedKey:Ljava/lang/String;

.field private mSelectedPreference:Lcom/android/settings/ApnPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 107
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 122
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/ApnSettings;->mPhoneId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 149
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 731
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 65
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ApnSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/ApnSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnSettings;

    .prologue
    .line 65
    iget v0, p0, Lcom/android/settings/ApnSettings;->mApnPreferenceId:I

    return v0
.end method

.method private addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "pref"    # Lcom/android/settings/ApnPreference;
    .param p5, "mvnoType"    # Ljava/lang/String;
    .param p6, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/ApnPreference;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/ApnPreference;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "mnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .local p3, "mvnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .local p4, "cdmaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v9

    .line 401
    .local v9, "simManager":Landroid/sim/SimManager;
    const/4 v7, 0x0

    .line 402
    .local v7, "mIccid":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 403
    sget v10, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-virtual {v9, v10}, Landroid/sim/SimManager;->getIccId(I)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, "simIccid":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 405
    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 409
    .end local v8    # "simIccid":Ljava/lang/String;
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 410
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ApnSettings;->mvnoMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 411
    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    .line 414
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    .line 416
    :cond_1
    const-string v10, ","

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "iccids":[Ljava/lang/String;
    move-object v2, v5

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_4

    aget-object v4, v2, v3

    .line 418
    .local v4, "iccid":Ljava/lang/String;
    const-string v10, "ApnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "iccid is configure file is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mIccid in sim is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz v4, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 420
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 424
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "iccid":Ljava/lang/String;
    .end local v5    # "iccids":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_4
    return-void
.end method

.method private addNewApn()V
    .locals 5

    .prologue
    .line 565
    sget v2, Lcom/android/settings/ApnSettings;->mPhoneId:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 566
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    const-string v2, "sub_id"

    sget v3, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 573
    const-string v2, "mvno_type"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string v2, "mvno_match_data"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    :cond_1
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNewApn mMvnoType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mMvnoMatchData ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 580
    return-void
.end method

.method private fillList()V
    .locals 35

    .prologue
    .line 262
    sget v4, Lcom/android/settings/ApnSettings;->mPhoneId:I

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 266
    .local v5, "contentUri":Landroid/net/Uri;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    const-string v4, "gsm.sim.operator.numeric"

    sget v6, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-static {v4, v6}, Landroid/telephony/TelephonyManager;->getProperty(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 272
    .local v30, "mccmnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "where":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " and name!=\'CMCC DM\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    const-string v4, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "where = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ",mccmnc ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v15, "_id"

    aput-object v15, v6, v8

    const/4 v8, 0x1

    const-string v15, "name"

    aput-object v15, v6, v8

    const/4 v8, 0x2

    const-string v15, "apn"

    aput-object v15, v6, v8

    const/4 v8, 0x3

    const-string v15, "type"

    aput-object v15, v6, v8

    const/4 v8, 0x4

    const-string v15, "mvno_type"

    aput-object v15, v6, v8

    const/4 v8, 0x5

    const-string v15, "mvno_match_data"

    aput-object v15, v6, v8

    const/4 v8, 0x0

    const-string v9, "name ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 289
    .local v25, "cursor":Landroid/database/Cursor;
    if-eqz v25, :cond_b

    .line 290
    const-string v4, "apn_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/PreferenceGroup;

    .line 291
    .local v23, "apnList":Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v23 .. v23}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 294
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v10, "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v11, "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v17, "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v18, "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v12, "cdmaApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v19, "cdmaMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 304
    const-string v4, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedKey = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 307
    const/16 v27, 0x1

    .line 308
    .local v27, "id":I
    :goto_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_6

    .line 309
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 310
    .local v31, "name":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 311
    .local v22, "apn":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 312
    .local v29, "key":Ljava/lang/String;
    const/4 v4, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 314
    .local v34, "type":Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 315
    .local v13, "mvnoType":Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 316
    .local v14, "mvnoMatchData":Ljava/lang/String;
    const-string v4, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "apn = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "key = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "type = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "mvnoType ="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "mvnoMatchData = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v34

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/ApnSettings;->apnSettingVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    .line 321
    .local v28, "isApnVisible":Z
    const-string v4, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isApnVisible = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz v28, :cond_2

    .line 323
    new-instance v9, Lcom/android/settings/ApnPreference;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 326
    .local v9, "pref":Lcom/android/settings/ApnPreference;
    move/from16 v0, v27

    invoke-virtual {v9, v0}, Lcom/android/settings/ApnPreference;->setId(I)V

    .line 327
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 329
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 331
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    if-eqz v34, :cond_0

    const-string v4, "default"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    const-string v4, "*"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    const/16 v33, 0x1

    .line 338
    .local v33, "selectable":Z
    :goto_2
    move/from16 v0, v33

    invoke-virtual {v9, v0}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 340
    if-eqz v33, :cond_5

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 344
    sput v27, Lcom/android/settings/ApnSettings;->mSelectedId:I

    :cond_1
    move-object/from16 v8, p0

    .line 347
    invoke-direct/range {v8 .. v14}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .end local v9    # "pref":Lcom/android/settings/ApnPreference;
    .end local v33    # "selectable":Z
    :cond_2
    :goto_3
    add-int/lit8 v27, v27, 0x1

    .line 356
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 275
    .end local v7    # "where":Ljava/lang/String;
    .end local v10    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v11    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v12    # "cdmaApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v13    # "mvnoType":Ljava/lang/String;
    .end local v14    # "mvnoMatchData":Ljava/lang/String;
    .end local v17    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v18    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v19    # "cdmaMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v22    # "apn":Ljava/lang/String;
    .end local v23    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v27    # "id":I
    .end local v28    # "isApnVisible":Z
    .end local v29    # "key":Ljava/lang/String;
    .end local v30    # "mccmnc":Ljava/lang/String;
    .end local v31    # "name":Ljava/lang/String;
    .end local v34    # "type":Ljava/lang/String;
    :cond_3
    const-string v4, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 277
    .restart local v30    # "mccmnc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "where":Ljava/lang/String;
    goto/16 :goto_0

    .line 335
    .restart local v9    # "pref":Lcom/android/settings/ApnPreference;
    .restart local v10    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .restart local v11    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .restart local v12    # "cdmaApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .restart local v13    # "mvnoType":Ljava/lang/String;
    .restart local v14    # "mvnoMatchData":Ljava/lang/String;
    .restart local v17    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .restart local v18    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .restart local v19    # "cdmaMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .restart local v22    # "apn":Ljava/lang/String;
    .restart local v23    # "apnList":Landroid/preference/PreferenceGroup;
    .restart local v25    # "cursor":Landroid/database/Cursor;
    .restart local v27    # "id":I
    .restart local v28    # "isApnVisible":Z
    .restart local v29    # "key":Ljava/lang/String;
    .restart local v31    # "name":Ljava/lang/String;
    .restart local v34    # "type":Ljava/lang/String;
    :cond_4
    const/16 v33, 0x0

    goto :goto_2

    .restart local v33    # "selectable":Z
    :cond_5
    move-object/from16 v15, p0

    move-object/from16 v16, v9

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    .line 349
    invoke-direct/range {v15 .. v21}, Lcom/android/settings/ApnSettings;->addApnToList(Lcom/android/settings/ApnPreference;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 358
    .end local v9    # "pref":Lcom/android/settings/ApnPreference;
    .end local v13    # "mvnoType":Ljava/lang/String;
    .end local v14    # "mvnoMatchData":Ljava/lang/String;
    .end local v22    # "apn":Ljava/lang/String;
    .end local v28    # "isApnVisible":Z
    .end local v29    # "key":Ljava/lang/String;
    .end local v31    # "name":Ljava/lang/String;
    .end local v33    # "selectable":Z
    .end local v34    # "type":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 360
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 361
    const-string v4, "ApnSettings"

    const-string v6, "cdmaApnList.isEmpty() = false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    move-object v10, v12

    .line 363
    move-object/from16 v17, v19

    .line 367
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 368
    const-string v4, "ApnSettings"

    const-string v6, "mvnoApnList.isEmpty() = false"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object v10, v11

    .line 370
    move-object/from16 v17, v18

    .line 373
    :cond_8
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/settings/ApnPreference;

    .line 374
    .local v32, "preference":Landroid/preference/Preference;
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v24, v32

    .line 375
    check-cast v24, Lcom/android/settings/ApnPreference;

    .line 378
    .local v24, "apnPref":Lcom/android/settings/ApnPreference;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    if-nez v4, :cond_9

    invoke-virtual/range {v24 .. v24}, Lcom/android/settings/ApnPreference;->getSelectable()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {v24 .. v24}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4}, Lcom/android/settings/ApnSettings;->isNeedSetDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 381
    const-string v4, "ApnSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apnPref setChecked = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 384
    invoke-virtual/range {v24 .. v24}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    goto :goto_4

    .line 388
    .end local v24    # "apnPref":Lcom/android/settings/ApnPreference;
    .end local v32    # "preference":Landroid/preference/Preference;
    :cond_a
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/settings/ApnPreference;

    .line 389
    .restart local v32    # "preference":Landroid/preference/Preference;
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 394
    .end local v10    # "mnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v11    # "mvnoApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v12    # "cdmaApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v17    # "mnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v18    # "mvnoMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v19    # "cdmaMmsApnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/ApnPreference;>;"
    .end local v23    # "apnList":Landroid/preference/PreferenceGroup;
    .end local v26    # "i$":Ljava/util/Iterator;
    .end local v27    # "id":I
    .end local v32    # "preference":Landroid/preference/Preference;
    :cond_b
    return-void
.end method

.method private getApnIdByPhoneId(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 823
    packed-switch p1, :pswitch_data_0

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "apn_id_sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 825
    :pswitch_0
    const-string v0, "apn_id"

    goto :goto_0

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 169
    const-string v0, "state"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 667
    const/4 v7, 0x0

    .line 673
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/ApnSettings;->mPhoneId:I

    const-string v2, "preferapn"

    invoke-static {v1, v2}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 680
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 681
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 682
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 684
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 685
    return-object v7
.end method

.method private imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "imsiDB"    # Ljava/lang/String;
    .param p2, "imsiSIM"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 474
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 475
    .local v3, "len":I
    const/4 v2, 0x0

    .line 477
    .local v2, "idxCompare":I
    if-gtz v3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v4

    .line 478
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v3, v5, :cond_0

    .line 480
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 481
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 482
    .local v0, "c":C
    const/16 v5, 0x78

    if-eq v0, v5, :cond_2

    const/16 v5, 0x58

    if-eq v0, v5, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    .line 480
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "c":C
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isCTCCVersion()Z
    .locals 2

    .prologue
    .line 907
    const-string v0, "ro.operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctcc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isCUCCVersion()Z
    .locals 2

    .prologue
    .line 901
    const-string v0, "ro.operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cucc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isOperatorNeedVisible(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 866
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 895
    :goto_0
    return v0

    .line 870
    :cond_0
    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 872
    if-nez v0, :cond_1

    .line 873
    const-string v0, "ApnSettings"

    const-string v2, "configManager is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 874
    goto :goto_0

    .line 877
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfigForDefaultPhone()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 878
    if-nez v0, :cond_2

    .line 879
    const-string v0, "ApnSettings"

    const-string v2, "persistableBundle is null "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 880
    goto :goto_0

    .line 883
    :cond_2
    const-string v2, "operator_show_ims_apn"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operatorList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 887
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 888
    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 889
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 890
    const/4 v0, 0x1

    goto :goto_0

    .line 888
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 895
    goto :goto_0
.end method

.method private mvnoMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "mvno_type"    # Ljava/lang/String;
    .param p2, "mvno_match_data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 431
    const-string v7, "spn"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 432
    sget v7, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getSpnFromSimRecords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "spnName":Ljava/lang/String;
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mvnoMatches spnName ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-eqz v4, :cond_2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 462
    .end local v4    # "spnName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 439
    :cond_1
    const-string v7, "imsi"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 440
    sget v7, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "imsiSIM":Ljava/lang/String;
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mvnoMatches imsiSIM ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-eqz v1, :cond_2

    invoke-direct {p0, p2, v1}, Lcom/android/settings/ApnSettings;->imsiMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .end local v1    # "imsiSIM":Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 462
    goto :goto_0

    .line 445
    :cond_3
    const-string v7, "gid"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 446
    sget v7, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "gid1":Ljava/lang/String;
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mvnoMatches gid1 ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 449
    .local v2, "mvno_match_data_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v2, :cond_2

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 453
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v2    # "mvno_match_data_length":I
    :cond_4
    const-string v7, "pnn"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 454
    sget v7, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->getPnnHomeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "pnn":Ljava/lang/String;
    const-string v7, "ApnSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mvnoMatches pnn ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v3, :cond_2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_0
.end method

.method private restoreDefaultApn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 690
    sput-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 691
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 694
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    .line 700
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    .line 702
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 703
    new-instance v0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 709
    return v3
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 652
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 653
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 655
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 659
    .local v1, "values":Landroid/content/ContentValues;
    sget v2, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-direct {p0, v2}, Lcom/android/settings/ApnSettings;->getApnIdByPhoneId(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    sget v2, Lcom/android/settings/ApnSettings;->mPhoneId:I

    const-string v3, "preferapn"

    invoke-static {v2, v3}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 664
    return-void
.end method


# virtual methods
.method public apnSettingVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    const/4 v0, 0x1

    .line 496
    .local v0, "isApnVisible":Z
    const-string v3, "ims"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 498
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->isCUCCVersion()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->isCTCCVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    :cond_0
    const-string v2, "ApnSettings"

    const-string v3, "apnSettingVisibility is cucc  or ctcc version"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_1
    :goto_0
    return v1

    .line 504
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings;->isOperatorNeedVisible(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 506
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->isCTCCVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mms"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ctwap"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 507
    goto :goto_0

    :cond_4
    move v1, v0

    .line 510
    goto :goto_0
.end method

.method public editApn(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 618
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 620
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_1

    .line 621
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 622
    .local v9, "pos":I
    const-string v0, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    sget v0, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-static {v0, v2}, Landroid/provider/Telephony$Carriers;->getContentUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    int-to-long v3, v9

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 627
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 628
    const/4 v8, 0x0

    .line 629
    .local v8, "intent":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "intent":Landroid/content/Intent;
    const-string v0, "android.intent.action.EDIT"

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 630
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "sub_id"

    sget v2, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    :cond_0
    invoke-virtual {v6, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 638
    .end local v1    # "url":Landroid/net/Uri;
    .end local v6    # "context":Landroid/content/Context;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "pos":I
    :cond_1
    return-void
.end method

.method public isNeedSetDefault(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 846
    const-string v2, "ApnSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedSetDefault mccmnc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " apn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-string v2, "46001"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46006"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46009"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    .line 852
    :goto_0
    if-eqz v2, :cond_1

    .line 853
    const-string v2, "3gnet"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 860
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 848
    goto :goto_0

    :cond_3
    move v0, v1

    .line 856
    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sub_id"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/ApnSettings;->mPhoneId:I

    .line 187
    const-string v1, "ApnSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate phoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 189
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 192
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 199
    :cond_0
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v1, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 200
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setCenterIcon(I)V

    .line 206
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 208
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v6, 0x7f0909a3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 759
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v0, 0x7c4

    if-ne p1, v0, :cond_2

    .line 765
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 767
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0909a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 771
    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 775
    iget v3, p0, Lcom/android/settings/ApnSettings;->mApnPreferenceId:I

    sget v4, Lcom/android/settings/ApnSettings;->mSelectedId:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    invoke-virtual {v3}, Lcom/android/settings/ApnPreference;->getSelectable()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mDialogName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 782
    new-instance v1, Lcom/android/settings/ApnSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$4;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 811
    :goto_0
    return-object v0

    .line 805
    :cond_2
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_3

    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-eqz v0, :cond_3

    .line 806
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 807
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09038a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 808
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 811
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 516
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 517
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 520
    const/4 v0, 0x2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09038b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 523
    return v4
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 244
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 836
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 837
    const-string v0, "sub_id"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/ApnSettings;->mPhoneId:I

    .line 840
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent --> mPhoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/ApnSettings;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 557
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 530
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    goto :goto_0

    .line 535
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0909a1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 553
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 605
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 609
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 612
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v3, 0x7c4

    .line 592
    move-object v0, p2

    check-cast v0, Lcom/android/settings/ApnPreference;

    invoke-virtual {v0}, Lcom/android/settings/ApnPreference;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/ApnSettings;->mApnPreferenceId:I

    move-object v0, p2

    .line 593
    check-cast v0, Lcom/android/settings/ApnPreference;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    .line 594
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick mApnPreferenceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ApnSettings;->mApnPreferenceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/ApnSettings;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0, v3}, Landroid/app/Activity;->removeDialog(I)V

    .line 597
    const-string v0, "ApnSettings"

    const-string v1, "show menu dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mDialogName:Ljava/lang/String;

    .line 599
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    .line 601
    const/4 v0, 0x1

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 816
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 817
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 819
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 217
    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090980

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/android/settings/ApnSettings;->mPhoneId:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v0, :cond_1

    .line 224
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_1
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method public switchDefaultApn(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 641
    sput p1, Lcom/android/settings/ApnSettings;->mSelectedId:I

    .line 643
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mSelectedPreference:Lcom/android/settings/ApnPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 648
    :cond_0
    return-void
.end method

.class public Lcom/android/settings/deviceinfo/StatusSim;
.super Landroid/preference/PreferenceActivity;
.source "StatusSim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StatusSim$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static final PROPERTY_VALUE:Ljava/lang/String;

.field public static mPhoneId:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private myReceiver:Landroid/content/BroadcastReceiver;

.field private sUnknown:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data_state"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/StatusSim;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .line 116
    sput v3, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneId:I

    .line 120
    const-string v0, "ro.operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StatusSim;->PROPERTY_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 150
    new-instance v0, Lcom/android/settings/deviceinfo/StatusSim$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusSim$1;-><init>(Lcom/android/settings/deviceinfo/StatusSim;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 419
    new-instance v0, Lcom/android/settings/deviceinfo/StatusSim$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StatusSim$2;-><init>(Lcom/android/settings/deviceinfo/StatusSim;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StatusSim;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusSim;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/StatusSim;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusSim;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StatusSim;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StatusSim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusSim;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusSim;->updateDataState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StatusSim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/StatusSim;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusSim;->updateNetworkType()V

    return-void
.end method

.method private getCurrentServiceState()I
    .locals 2

    .prologue
    .line 303
    const/4 v0, -0x1

    .line 304
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 307
    :cond_0
    return v0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 287
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StatusSim;->sUnknown:Ljava/lang/String;

    .line 297
    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    :cond_2
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 337
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void

    .line 341
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    goto :goto_0

    .line 350
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 7

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusSim;->getCurrentServiceState()I

    move-result v2

    .line 312
    .local v2, "state":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/4 v4, 0x1

    if-eq v4, v2, :cond_0

    const/4 v4, 0x3

    if-ne v4, v2, :cond_1

    .line 314
    :cond_0
    const-string v4, "network_type"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v1, 0x0

    .line 320
    .local v1, "networkType":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v3

    .line 321
    .local v3, "voiceType":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 322
    .local v0, "dataType":I
    const-string v4, "StatusSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "voiceType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v4, "StatusSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataType ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz v3, :cond_3

    .line 325
    move v1, v3

    .line 331
    :cond_2
    :goto_1
    const-string v4, "network_type"

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v4, "StatusSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "network type ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :cond_3
    if-eqz v0, :cond_2

    .line 328
    move v1, v0

    goto :goto_1
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 358
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 359
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 374
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_1
    const-string v3, "operator_name"

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void

    .line 363
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    goto :goto_0

    .line 367
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    goto :goto_0

    .line 370
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_0
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v4, "operator"

    invoke-static {v2, v4}, Lcom/sprd/internal/telephony/TeleUtils;->updateOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    new-instance v7, Lcom/android/settings/deviceinfo/StatusSim$MyHandler;

    invoke-direct {v7, p0}, Lcom/android/settings/deviceinfo/StatusSim$MyHandler;-><init>(Lcom/android/settings/deviceinfo/StatusSim;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mHandler:Landroid/os/Handler;

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "sub_id"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneId:I

    .line 172
    const-string v7, "phone"

    sget v8, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneId:I

    invoke-static {v7, v8}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 175
    const v7, 0x7f050010

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 177
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    .line 178
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->sUnknown:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 179
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f090010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->sUnknown:Ljava/lang/String;

    .line 182
    :cond_0
    sget v7, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneId:I

    invoke-static {v7}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 184
    const-string v7, "signal_strength"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mSignalStrength:Landroid/preference/Preference;

    .line 186
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    sget-object v0, Lcom/android/settings/deviceinfo/StatusSim;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_4

    aget-object v4, v0, v2

    .line 188
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "len$":I
    :cond_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "CDMA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 194
    const-string v7, "meid_number"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v7, "min_number"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 197
    const-string v7, "min_number"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v8, 0x7f090324

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 199
    :cond_2
    const-string v7, "prl_version"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v7, "imei_sv"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 204
    const-string v7, "icc_id"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_1
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "rawNumber":Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, "formattedNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 233
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    :cond_3
    const-string v7, "number"

    invoke-direct {p0, v7, v1}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v7, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mHandler:Landroid/os/Handler;

    sget v9, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneId:I

    invoke-direct {v7, p0, v8, v9}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 239
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0xc8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 240
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 242
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v6    # "rawNumber":Ljava/lang/String;
    :cond_4
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 243
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v7, p0, Lcom/android/settings/deviceinfo/StatusSim;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void

    .line 209
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_5
    const-string v7, "imei"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 210
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_6
    const-string v7, "cmcc"

    sget-object v8, Lcom/android/settings/deviceinfo/StatusSim;->PROPERTY_VALUE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 214
    const-string v7, "imei"

    invoke-static {v9}, Landroid/telephony/TelephonyManager;->getDefault(I)Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_2
    const-string v8, "imei_sv"

    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v7, "prl_version"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 225
    const-string v7, "meid_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 226
    const-string v7, "min_number"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 227
    const-string v7, "icc_id"

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/StatusSim;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 216
    :cond_7
    const-string v7, "imei"

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 279
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 270
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 272
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 274
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 251
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StatusSim;->updateSignalStrength()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/StatusSim;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 256
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusSim;->updateDataState()V

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StatusSim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 264
    :cond_0
    return-void
.end method

.method updateSignalStrength()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 391
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StatusSim;->getCurrentServiceState()I

    move-result v3

    .line 392
    .local v3, "state":I
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusSim;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 393
    if-eq v3, v7, :cond_0

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_2

    .line 395
    :cond_0
    const-string v4, "signal_strength"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/StatusSim;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 400
    .local v0, "r":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 401
    .local v2, "signalDbm":I
    const-string v4, "StatusSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "signalDbm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-ne v7, v2, :cond_3

    const/4 v2, 0x0

    .line 406
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusSim;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 407
    .local v1, "signalAsu":I
    const-string v4, "StatusSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "signalAsu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-ne v7, v1, :cond_4

    const/4 v1, 0x0

    .line 412
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StatusSim;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090031

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090032

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

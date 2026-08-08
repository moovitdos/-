.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field private mDialog:Lcom/android/settings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 75
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 464
    return-void
.end method

.method static synthetic access$000(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/security/KeyStore;
    .param p1, "x1"    # [I

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090766

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "excludeTypes"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 554
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "keys":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 556
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 557
    .local v2, "key":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 559
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 560
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-object v6
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 402
    const v0, 0x7f0907bf

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 355
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 360
    .local v0, "info":Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 362
    .local v1, "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 363
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 365
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 367
    .end local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 369
    .restart local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 370
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 371
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v0    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 379
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 374
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v7, -0x1

    .line 239
    if-ne p2, v7, :cond_0

    .line 241
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 242
    .local v2, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 246
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 247
    .local v1, "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_1

    .line 248
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    .line 258
    :goto_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    :goto_1
    return-void

    .line 251
    .restart local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .restart local v2    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_1
    new-instance v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 252
    .restart local v1    # "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 290
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "VpnSettings"

    const-string v2, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 315
    :goto_0
    return v4

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 296
    .local v6, "preference":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-nez v6, :cond_1

    .line 297
    const-string v1, "VpnSettings"

    const-string v2, "onContextItemSelected() is called but no preference is found"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 298
    goto :goto_0

    .line 301
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v4, v0

    .line 315
    goto :goto_0

    .line 304
    :pswitch_0
    new-instance v0, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 305
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x7f090760
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 92
    const v0, 0x7f050042

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "VpnKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnProfile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 97
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    if-eqz v3, :cond_0

    .line 98
    new-instance v0, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "VpnEditing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 103
    .end local v3    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "info"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v6, 0x7f090761

    const v5, 0x7f090760

    const/4 v4, 0x0

    .line 270
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 271
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 275
    .restart local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "info":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 278
    .local v0, "preference":Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 279
    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v0    # "preference":Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 280
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 281
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 282
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 283
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 108
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 109
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 235
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 126
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 127
    .local v6, "millis":J
    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v0, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 133
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 138
    .end local v6    # "millis":J
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings/vpn2/VpnSettings;)V

    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x7f0b0250
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 229
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 320
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "VpnSettings"

    const-string v1, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local p1    # "preference":Landroid/preference/Preference;
    :goto_0
    return v9

    .line 325
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_0
    instance-of v0, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v0, :cond_2

    .line 326
    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local p1    # "preference":Landroid/preference/Preference;
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v3

    .line 327
    .local v3, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v1, v1, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 337
    :cond_1
    new-instance v0, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 348
    .end local v3    # "profile":Lcom/android/internal/net/VpnProfile;
    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 340
    .restart local p1    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 341
    .local v11, "millis":J
    :goto_2
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    const-wide/16 v0, 0x1

    add-long/2addr v11, v0

    goto :goto_2

    .line 344
    :cond_3
    new-instance v5, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v8, Lcom/android/internal/net/VpnProfile;

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    move-object v7, p0

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 116
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f0b0251

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.net.vpn.PICK_LOCKDOWN"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 163
    .local v3, "pickLockdown":Z
    if-eqz v3, :cond_0

    .line 164
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 168
    :cond_0
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v8

    if-nez v8, :cond_3

    .line 169
    iget-boolean v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_2

    .line 171
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 176
    :goto_0
    iget-boolean v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    iput-boolean v7, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 213
    :goto_1
    return-void

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    .line 181
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 186
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 187
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 189
    .local v1, "group":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 190
    .local v0, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v9, v7, [I

    invoke-static {v8, v9}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v6

    .line 191
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 192
    .local v5, "profile":Lcom/android/internal/net/VpnProfile;
    new-instance v4, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v4, v0, v5}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 193
    .local v4, "pref":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 200
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pref":Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v5    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v8, :cond_5

    .line 201
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v8, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 202
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 206
    :cond_5
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v8, :cond_6

    .line 207
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 209
    :cond_6
    iget-object v8, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 150
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 152
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    .end local v0    # "profile":Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

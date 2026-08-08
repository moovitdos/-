.class public Lcom/android/settings/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field private static final SUPORT_CMCC:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/preference/PreferenceActivity;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/android/settings/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "cmcc"

    const-string v1, "ro.operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/location/RecentLocationApps;->SUPORT_CMCC:Z

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/preference/PreferenceActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    .line 54
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/RecentLocationApps;)Landroid/preference/PreferenceActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/RecentLocationApps;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "isHighBattery"    # Z
    .param p4, "listener"    # Landroid/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 81
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz p3, :cond_0

    .line 85
    const v1, 0x7f0903ce

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 89
    :goto_0
    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    return-object v0

    .line 87
    :cond_0
    const v1, 0x7f0903cf

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;
    .locals 14
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    .prologue
    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v4, 0x0

    .line 143
    .local v4, "highBattery":Z
    const/4 v6, 0x0

    .line 145
    .local v6, "normalBattery":Z
    const-wide/32 v11, 0xdbba0

    sub-long v9, p1, v11

    .line 146
    .local v9, "recentLocationCutoffTime":J
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$OpEntry;

    .line 147
    .local v3, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-ltz v11, :cond_0

    .line 148
    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    const/4 v6, 0x1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_1
    const/4 v4, 0x1

    .line 154
    goto :goto_0

    .line 161
    .end local v3    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    if-nez v4, :cond_5

    if-nez v6, :cond_5

    .line 162
    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 163
    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hadn\'t used location within the time interval."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    const/4 v8, 0x0

    .line 194
    :cond_4
    :goto_1
    return-object v8

    .line 170
    :cond_5
    const/4 v8, 0x0

    .line 172
    .local v8, "pref":Landroid/preference/Preference;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v7, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 180
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 181
    iget-object v11, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    new-instance v13, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;

    invoke-direct {v13, p0, v7}, Lcom/android/settings/location/RecentLocationApps$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/RecentLocationApps;Ljava/lang/String;)V

    invoke-direct {p0, v11, v12, v4, v13}, Lcom/android/settings/location/RecentLocationApps;->createRecentLocationEntry(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLandroid/preference/Preference$OnPreferenceClickListener;)Landroid/preference/Preference;

    move-result-object v8

    goto :goto_1

    .line 186
    :cond_6
    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 187
    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " with Uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " belongs to another inactive account, ignored."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 190
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v11, Lcom/android/settings/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Package not found: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v10, p0, Lcom/android/settings/location/RecentLocationApps;->mActivity:Landroid/preference/PreferenceActivity;

    const-string v11, "appops"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 101
    .local v0, "aoManager":Landroid/app/AppOpsManager;
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    invoke-virtual {v0, v10}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v1

    .line 108
    .local v1, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v8, "prefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 110
    .local v4, "now":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 113
    .local v6, "ops":Landroid/app/AppOpsManager$PackageOps;
    sget-boolean v10, Lcom/android/settings/location/RecentLocationApps;->SUPORT_CMCC:Z

    if-eqz v10, :cond_1

    .line 114
    const-string v10, "com.sprd.sopm"

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "com.sprd.opm"

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 117
    :cond_1
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    .line 118
    .local v9, "uid":I
    const/16 v10, 0x3e8

    if-ne v9, v10, :cond_2

    const-string v10, "android"

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v3, 0x1

    .line 120
    .local v3, "isAndroidOs":Z
    :goto_1
    if-nez v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v10, v11, :cond_0

    .line 121
    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/location/RecentLocationApps;->getPreferenceFromOps(JLandroid/app/AppOpsManager$PackageOps;)Landroid/preference/Preference;

    move-result-object v7

    .line 122
    .local v7, "pref":Landroid/preference/Preference;
    if-eqz v7, :cond_0

    .line 123
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    .end local v3    # "isAndroidOs":Z
    .end local v7    # "pref":Landroid/preference/Preference;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 128
    .end local v6    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v9    # "uid":I
    :cond_3
    return-object v8

    .line 101
    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method

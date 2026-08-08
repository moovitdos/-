.class public Lcom/android/settings/WallpaperTypeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private populateWallpaperTypes()V
    .locals 15

    .prologue
    .line 44
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 85
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 52
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/high16 v12, 0x10000

    :try_start_0
    invoke-virtual {v8, v5, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 60
    .local v11, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 61
    .local v7, "parent":Landroid/preference/PreferenceScreen;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v8, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 65
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 66
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 67
    .local v9, "pref":Landroid/preference/Preference;
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 68
    .local v10, "prefIntent":Landroid/content/Intent;
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v13, "WallpaperPickerActivity"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 71
    if-eqz v0, :cond_2

    .line 72
    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 77
    :cond_2
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 78
    invoke-virtual {v4, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 79
    .local v6, "label":Ljava/lang/CharSequence;
    if-nez v6, :cond_3

    .line 80
    iget-object v12, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 81
    :cond_3
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v7, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 54
    .end local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .end local v2    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "label":Ljava/lang/CharSequence;
    .end local v7    # "parent":Landroid/preference/PreferenceScreen;
    .end local v9    # "pref":Landroid/preference/Preference;
    .end local v10    # "prefIntent":Landroid/content/Intent;
    .end local v11    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "WallpaperPickerActivity"

    const-string v13, "populateWallpaperTypes(): fail to call queryIntentActivities!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 84
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentDefaultHome":Landroid/content/ComponentName;
    .restart local v2    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "parent":Landroid/preference/PreferenceScreen;
    .restart local v11    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f050043

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 41
    return-void
.end method

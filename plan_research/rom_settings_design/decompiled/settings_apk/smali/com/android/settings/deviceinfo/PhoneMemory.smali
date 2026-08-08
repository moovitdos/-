.class public Lcom/android/settings/deviceinfo/PhoneMemory;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PhoneMemory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PhoneMemory$ConfirmClearCacheFragment;,
        Lcom/android/settings/deviceinfo/PhoneMemory$ClearCacheObserver;
    }
.end annotation


# instance fields
.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 75
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Lcom/android/settings/deviceinfo/PhoneMemory$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PhoneMemory$1;-><init>(Lcom/android/settings/deviceinfo/PhoneMemory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 197
    new-instance v0, Lcom/android/settings/deviceinfo/PhoneMemory$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PhoneMemory$2;-><init>(Lcom/android/settings/deviceinfo/PhoneMemory;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/PhoneMemory;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PhoneMemory;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/PhoneMemory;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PhoneMemory;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/PhoneMemory;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/PhoneMemory;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PhoneMemory;->onCacheCleared()V

    return-void
.end method

.method private addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 1
    .param p1, "category"    # Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    return-void
.end method

.method private onCacheCleared()V
    .locals 3

    .prologue
    .line 221
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 222
    .local v0, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onCacheCleared()V

    goto :goto_0

    .line 224
    .end local v0    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    const-string v1, "usb"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 86
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 87
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 89
    const v1, 0x7f050021

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 91
    invoke-static {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->buildForInternal(Landroid/content/Context;)Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/PhoneMemory;->addCategory(Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "PhoneMemory"

    const-string v1, "onDestroy() --- start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 159
    .local v0, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    goto :goto_0

    .line 161
    .end local v0    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 174
    const-string v5, "cache"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    invoke-static {p0}, Lcom/android/settings/deviceinfo/PhoneMemory$ConfirmClearCacheFragment;->show(Lcom/android/settings/deviceinfo/PhoneMemory;)V

    .line 194
    :cond_0
    :goto_0
    return v4

    .line 179
    :cond_1
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 180
    .local v1, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, p2}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v3

    .line 181
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 183
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v5, "PhoneMemory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No activity found for intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 194
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v1    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 126
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 127
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PhoneMemory;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;

    .line 134
    .local v0, "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 135
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    goto :goto_0

    .line 137
    .end local v0    # "category":Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    return-void
.end method

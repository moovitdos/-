.class public Lcom/android/settings/accounts/AuthenticatorHelper;
.super Ljava/lang/Object;
.source "AuthenticatorHelper.java"


# instance fields
.field private mAccTypeIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mEnabledAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    .line 43
    return-void
.end method


# virtual methods
.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v4

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    monitor-exit v4

    .line 86
    :goto_0
    return-object v3

    .line 70
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 74
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_2
    move-object v3, v2

    .line 86
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 78
    .restart local v0    # "authContext":Landroid/content/Context;
    .restart local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 79
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 80
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 122
    if-nez p2, :cond_0

    .line 123
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p2

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 127
    move-object v1, p2

    .local v1, "arr$":[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 128
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    return-void
.end method

.method public updateAuthDescriptions(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

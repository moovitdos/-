.class public Lcom/android/settings/ApnSetting;
.super Ljava/lang/Object;
.source "ApnSetting.java"


# instance fields
.field private mApnStr:Ljava/lang/String;

.field private mApnTypeStr:Ljava/lang/String;

.field private mAuthTypeStr:Ljava/lang/String;

.field private mBearerStr:Ljava/lang/String;

.field private mMccStr:Ljava/lang/String;

.field private mMmsPortStr:Ljava/lang/String;

.field private mMmsProxyStr:Ljava/lang/String;

.field private mMmscStr:Ljava/lang/String;

.field private mMncStr:Ljava/lang/String;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mNameStr:Ljava/lang/String;

.field private mPasswordStr:Ljava/lang/String;

.field private mPortStr:Ljava/lang/String;

.field private mProtocolStr:Ljava/lang/String;

.field private mProxyStr:Ljava/lang/String;

.field private mRoamingProtocolStr:Ljava/lang/String;

.field private mServerStr:Ljava/lang/String;

.field private mUserStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 155
    if-nez p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/android/settings/ApnSetting;

    .line 160
    .local v0, "newApnSetting":Lcom/android/settings/ApnSetting;
    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmNameStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmNameStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmApnStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmApnStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmProxyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmProxyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmPortStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmPortStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmUserStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmUserStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmServerStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmServerStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmPasswordStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmPasswordStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMmsProxyStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMmsProxyStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMmsPortStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMmsPortStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMmscStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMmscStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMccStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMccStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMncStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMncStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmAuthTypeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmAuthTypeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmApnTypeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmApnTypeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmProtocolStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmProtocolStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmRoamingProtocolStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmRoamingProtocolStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmBearerStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmBearerStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMvnoTypeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMvnoTypeStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApnSetting;->getmMvnoMatchDataStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/ApnSetting;->getmMvnoMatchDataStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public getmApnStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mApnStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmApnTypeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mApnTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmAuthTypeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mAuthTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmBearerStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mBearerStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMccStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMmsPortStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMmsPortStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMmsProxyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMmsProxyStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMmscStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMmscStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMncStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMvnoMatchDataStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMvnoMatchDataStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmMvnoTypeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mMvnoTypeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmNameStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mNameStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmPasswordStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mPasswordStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmPortStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mPortStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmProtocolStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mProtocolStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmProxyStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mProxyStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmRoamingProtocolStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mRoamingProtocolStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmServerStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mServerStr:Ljava/lang/String;

    return-object v0
.end method

.method public getmUserStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/ApnSetting;->mUserStr:Ljava/lang/String;

    return-object v0
.end method

.method public setmApnStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApnStr"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mApnStr:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setmApnTypeStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mApnTypeStr"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mApnTypeStr:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setmAuthTypeStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAuthTypeStr"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mAuthTypeStr:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setmBearerStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBearerStr"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mBearerStr:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setmMccStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMccStr"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMccStr:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setmMmsPortStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMmsPortStr"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMmsPortStr:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setmMmsProxyStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMmsProxyStr"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMmsProxyStr:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setmMmscStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMmscStr"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMmscStr:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setmMncStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMncStr"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMncStr:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setmMvnoMatchDataStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMvnoMatchDataStr"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setmMvnoTypeStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMvnoTypeStr"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mMvnoTypeStr:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setmNameStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNameStr"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mNameStr:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setmPasswordStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPasswordStr"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mPasswordStr:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setmPortStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPortStr"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mPortStr:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setmProtocolStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProtocolStr"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mProtocolStr:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setmProxyStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProxyStr"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mProxyStr:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setmRoamingProtocolStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRoamingProtocolStr"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mRoamingProtocolStr:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setmServerStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerStr"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mServerStr:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setmUserStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUserStr"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/ApnSetting;->mUserStr:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApnSetting [mNameStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mApnStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProxyStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mProxyStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPortStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mPortStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mUserStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServerStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mServerStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPasswordStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mPasswordStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMmscStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMmscStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMccStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMncStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMmsProxyStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMmsProxyStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMmsPortStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMmsPortStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthTypeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mAuthTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnTypeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mApnTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProtocolStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mProtocolStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingProtocolStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mRoamingProtocolStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBearerStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mBearerStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMvnoTypeStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMvnoTypeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMvnoMatchDataStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnSetting;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

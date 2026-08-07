.class public Lcom/sprd/common/util/SystemPropertiesUtils;
.super Ljava/lang/Object;
.source "SystemPropertiesUtils.java"


# static fields
.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetBooleanMethod:Ljava/lang/reflect/Method;

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    .line 16
    sput-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 17
    sput-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/sprd/common/util/SystemPropertiesUtils;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 53
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemPropertiesUtils"

    const-string v3, "Unable to read system properties"

    invoke-static {v2, v3}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, p1

    .line 53
    goto :goto_0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 57
    move v1, p1

    .line 59
    .local v1, "value":Z
    :try_start_0
    invoke-static {}, Lcom/sprd/common/util/SystemPropertiesUtils;->getBooleanMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemPropertiesUtils"

    const-string v3, "Unable to read system properties"

    invoke-static {v2, v3}, Lcom/sprd/common/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getBooleanMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/sprd/common/util/SystemPropertiesUtils;->getSystemPropertiesClass()Ljava/lang/Class;

    move-result-object v0

    .line 38
    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    .line 40
    :cond_0
    sget-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetBooleanMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getMethod()Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/sprd/common/util/SystemPropertiesUtils;->getSystemPropertiesClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 32
    :cond_0
    sget-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mGetMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private static getSystemPropertiesClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    .line 24
    :cond_0
    sget-object v0, Lcom/sprd/common/util/SystemPropertiesUtils;->mClassType:Ljava/lang/Class;

    return-object v0
.end method

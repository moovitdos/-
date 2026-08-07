.class public Lcom/sprd/common/util/StatusBarUtils;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"


# static fields
.field private static mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mGetMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/sprd/common/util/StatusBarUtils;->mClassType:Ljava/lang/Class;

    .line 16
    sput-object v0, Lcom/sprd/common/util/StatusBarUtils;->mGetMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandNotificationsPanel(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Lcom/sprd/common/util/StatusBarUtils;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatusBarUtils"

    const-string v2, "Unable expandNotificationsPanel"

    invoke-static {v1, v2, v0}, Lcom/sprd/common/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    sget-object v1, Lcom/sprd/common/util/StatusBarUtils;->mGetMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 28
    invoke-static {}, Lcom/sprd/common/util/StatusBarUtils;->getStatusBarManagerClass()Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "clazz":Ljava/lang/Class;
    const-string v1, "expandNotificationsPanel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sprd/common/util/StatusBarUtils;->mGetMethod:Ljava/lang/reflect/Method;

    .line 31
    :cond_0
    sget-object v1, Lcom/sprd/common/util/StatusBarUtils;->mGetMethod:Ljava/lang/reflect/Method;

    return-object v1
.end method

.method private static getStatusBarManagerClass()Ljava/lang/Class;
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
    .line 20
    sget-object v0, Lcom/sprd/common/util/StatusBarUtils;->mClassType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 21
    const-string v0, "android.app.StatusBarManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sprd/common/util/StatusBarUtils;->mClassType:Ljava/lang/Class;

    .line 23
    :cond_0
    sget-object v0, Lcom/sprd/common/util/StatusBarUtils;->mClassType:Ljava/lang/Class;

    return-object v0
.end method

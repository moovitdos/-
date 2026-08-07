.class public final enum Lcom/sprd/common/util/FeatureBarUtil$SoftKey;
.super Ljava/lang/Enum;
.source "FeatureBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/common/util/FeatureBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoftKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprd/common/util/FeatureBarUtil$SoftKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

.field public static final enum LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

.field public static final enum MDK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

.field public static final enum RTK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    const-string v1, "LFK"

    invoke-direct {v0, v1, v2}, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    new-instance v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    const-string v1, "MDK"

    invoke-direct {v0, v1, v3}, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->MDK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    new-instance v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    const-string v1, "RTK"

    invoke-direct {v0, v1, v4}, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->RTK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->LFK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->MDK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->RTK:Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->$VALUES:[Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprd/common/util/FeatureBarUtil$SoftKey;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    return-object v0
.end method

.method public static values()[Lcom/sprd/common/util/FeatureBarUtil$SoftKey;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sprd/common/util/FeatureBarUtil$SoftKey;->$VALUES:[Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    return-object v0
.end method

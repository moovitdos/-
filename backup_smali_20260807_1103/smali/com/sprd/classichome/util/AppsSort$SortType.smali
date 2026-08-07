.class public final enum Lcom/sprd/classichome/util/AppsSort$SortType;
.super Ljava/lang/Enum;
.source "AppsSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/util/AppsSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprd/classichome/util/AppsSort$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprd/classichome/util/AppsSort$SortType;

.field public static final enum NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

.field public static final enum POSITION:Lcom/sprd/classichome/util/AppsSort$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sprd/classichome/util/AppsSort$SortType;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/sprd/classichome/util/AppsSort$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    new-instance v0, Lcom/sprd/classichome/util/AppsSort$SortType;

    const-string v1, "POSITION"

    invoke-direct {v0, v1, v3}, Lcom/sprd/classichome/util/AppsSort$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->POSITION:Lcom/sprd/classichome/util/AppsSort$SortType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sprd/classichome/util/AppsSort$SortType;

    sget-object v1, Lcom/sprd/classichome/util/AppsSort$SortType;->NAME:Lcom/sprd/classichome/util/AppsSort$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sprd/classichome/util/AppsSort$SortType;->POSITION:Lcom/sprd/classichome/util/AppsSort$SortType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->$VALUES:[Lcom/sprd/classichome/util/AppsSort$SortType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprd/classichome/util/AppsSort$SortType;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/util/AppsSort$SortType;

    return-object v0
.end method

.method public static values()[Lcom/sprd/classichome/util/AppsSort$SortType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sprd/classichome/util/AppsSort$SortType;->$VALUES:[Lcom/sprd/classichome/util/AppsSort$SortType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprd/classichome/util/AppsSort$SortType;

    return-object v0
.end method

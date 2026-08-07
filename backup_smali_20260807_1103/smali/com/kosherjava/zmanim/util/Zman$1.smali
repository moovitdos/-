.class Lcom/kosherjava/zmanim/util/Zman$1;
.super Ljava/lang/Object;
.source "Zman.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosherjava/zmanim/util/Zman;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/kosherjava/zmanim/util/Zman;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kosherjava/zmanim/util/Zman;Lcom/kosherjava/zmanim/util/Zman;)I
    .locals 6
    .param p1, "zman1"    # Lcom/kosherjava/zmanim/util/Zman;
    .param p2, "zman2"    # Lcom/kosherjava/zmanim/util/Zman;

    .line 197
    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v2, v0

    .line 198
    .local v2, "firstTime":J
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 199
    .local v0, "secondTime":J
    :cond_3
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 195
    check-cast p1, Lcom/kosherjava/zmanim/util/Zman;

    check-cast p2, Lcom/kosherjava/zmanim/util/Zman;

    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/util/Zman$1;->compare(Lcom/kosherjava/zmanim/util/Zman;Lcom/kosherjava/zmanim/util/Zman;)I

    move-result p1

    return p1
.end method

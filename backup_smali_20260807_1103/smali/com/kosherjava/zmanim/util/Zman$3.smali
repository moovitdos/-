.class Lcom/kosherjava/zmanim/util/Zman$3;
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

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kosherjava/zmanim/util/Zman;Lcom/kosherjava/zmanim/util/Zman;)I
    .locals 5
    .param p1, "zman1"    # Lcom/kosherjava/zmanim/util/Zman;
    .param p2, "zman2"    # Lcom/kosherjava/zmanim/util/Zman;

    .line 228
    const-wide v0, 0x7fffffffffffffffL

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Zman;->getDuration()J

    move-result-wide v2

    .line 229
    .local v2, "firstDuration":J
    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/Zman;->getDuration()J

    move-result-wide v0

    .line 230
    .local v0, "secondDuration":J
    :goto_1
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, -0x1

    :goto_2
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 226
    check-cast p1, Lcom/kosherjava/zmanim/util/Zman;

    check-cast p2, Lcom/kosherjava/zmanim/util/Zman;

    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/util/Zman$3;->compare(Lcom/kosherjava/zmanim/util/Zman;Lcom/kosherjava/zmanim/util/Zman;)I

    move-result p1

    return p1
.end method

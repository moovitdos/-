.class Lcom/kosherjava/zmanim/util/Zman$2;
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

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kosherjava/zmanim/util/Zman;Lcom/kosherjava/zmanim/util/Zman;)I
    .locals 3
    .param p1, "zman1"    # Lcom/kosherjava/zmanim/util/Zman;
    .param p2, "zman2"    # Lcom/kosherjava/zmanim/util/Zman;

    .line 212
    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    .line 213
    .local v1, "firstLabel":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "secondLabel":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 210
    check-cast p1, Lcom/kosherjava/zmanim/util/Zman;

    check-cast p2, Lcom/kosherjava/zmanim/util/Zman;

    invoke-virtual {p0, p1, p2}, Lcom/kosherjava/zmanim/util/Zman$2;->compare(Lcom/kosherjava/zmanim/util/Zman;Lcom/kosherjava/zmanim/util/Zman;)I

    move-result p1

    return p1
.end method

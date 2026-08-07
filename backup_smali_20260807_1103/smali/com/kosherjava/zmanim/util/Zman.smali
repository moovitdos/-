.class public Lcom/kosherjava/zmanim/util/Zman;
.super Ljava/lang/Object;
.source "Zman.java"


# static fields
.field public static final DATE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/kosherjava/zmanim/util/Zman;",
            ">;"
        }
    .end annotation
.end field

.field public static final DURATION_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/kosherjava/zmanim/util/Zman;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/kosherjava/zmanim/util/Zman;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private description:Ljava/lang/String;

.field private duration:J

.field private label:Ljava/lang/String;

.field private zman:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman$1;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/util/Zman$1;-><init>()V

    sput-object v0, Lcom/kosherjava/zmanim/util/Zman;->DATE_ORDER:Ljava/util/Comparator;

    .line 210
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman$2;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/util/Zman$2;-><init>()V

    sput-object v0, Lcom/kosherjava/zmanim/util/Zman;->NAME_ORDER:Ljava/util/Comparator;

    .line 226
    new-instance v0, Lcom/kosherjava/zmanim/util/Zman$3;

    invoke-direct {v0}, Lcom/kosherjava/zmanim/util/Zman$3;-><init>()V

    sput-object v0, Lcom/kosherjava/zmanim/util/Zman;->DURATION_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "duration"    # J
    .param p3, "label"    # Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p3, p0, Lcom/kosherjava/zmanim/util/Zman;->label:Ljava/lang/String;

    .line 107
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/Zman;->duration:J

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "label"    # Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/kosherjava/zmanim/util/Zman;->label:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/Zman;->zman:Ljava/util/Date;

    .line 94
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/Zman;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/kosherjava/zmanim/util/Zman;->duration:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/Zman;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getZman()Ljava/util/Date;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/kosherjava/zmanim/util/Zman;->zman:Ljava/util/Date;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/Zman;->description:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .param p1, "duration"    # J

    .line 147
    iput-wide p1, p0, Lcom/kosherjava/zmanim/util/Zman;->duration:J

    .line 148
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/Zman;->label:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setZman(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .line 125
    iput-object p1, p0, Lcom/kosherjava/zmanim/util/Zman;->zman:Ljava/util/Date;

    .line 126
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 238
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 239
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\nLabel:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/Zman;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v1, "\nZman:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/Zman;->getZman()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 241
    const-string v1, "\nDuration:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/Zman;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 242
    const-string v1, "\nDescription:\t\t\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kosherjava/zmanim/util/Zman;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

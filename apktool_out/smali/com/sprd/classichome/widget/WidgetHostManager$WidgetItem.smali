.class public Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;
.super Ljava/lang/Object;
.source "WidgetHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/widget/WidgetHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetItem"
.end annotation


# instance fields
.field public h:I

.field public id:I

.field public label:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public page:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 70
    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 71
    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 72
    iput v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 75
    iput p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    .line 76
    iput p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    .line 77
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->packageName:Ljava/lang/String;

    .line 78
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    :goto_1
    iput-object p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;
    .locals 6

    .line 103
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 104
    :cond_0
    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 105
    if-ne v1, v2, :cond_1

    return-object v0

    .line 106
    :cond_1
    const/4 v0, 0x1

    const-string v3, "page"

    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 107
    const-string v3, "pkg"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    const-string v4, "label"

    const-string v5, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v5, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "x"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    .line 113
    const-string v0, "y"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    .line 114
    const-string v0, "w"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    .line 115
    const-string v0, "h"

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v5, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    .line 116
    return-object v5
.end method


# virtual methods
.method public hasGeometry()Z
    .locals 1

    .line 82
    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    :try_start_0
    const-string v1, "id"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v1, "page"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v1, "label"

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v1, "x"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v1, "y"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v1, "w"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string v1, "h"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    const-string v2, "WidgetHostManager"

    const-string v3, "Error serializing widget item"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    :goto_0
    return-object v0
.end method

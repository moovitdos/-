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
.field public id:I

.field public label:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public page:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    .line 50
    iput p2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    .line 51
    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, ""

    :goto_0
    iput-object p3, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->packageName:Ljava/lang/String;

    .line 52
    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    :goto_1
    iput-object p4, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;
    .locals 5

    .line 69
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    const-string v1, "id"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    if-ne v1, v2, :cond_1

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x1

    const-string v2, "page"

    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 73
    const-string v2, "pkg"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    const-string v3, "label"

    const-string v4, "\u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8"

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    new-instance v3, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;

    invoke-direct {v3, v1, v0, v2, p0}, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    const-string v1, "id"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->id:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v1, "page"

    iget v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->page:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "label"

    iget-object v2, p0, Lcom/sprd/classichome/widget/WidgetHostManager$WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    const-string v2, "WidgetHostManager"

    const-string v3, "Error serializing widget item"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    :goto_0
    return-object v0
.end method

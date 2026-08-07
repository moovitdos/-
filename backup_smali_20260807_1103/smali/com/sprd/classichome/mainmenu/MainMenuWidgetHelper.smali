.class public Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper;
.super Ljava/lang/Object;
.source "MainMenuWidgetHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainMenuWidgetHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1

    .line 96
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sprd/classichome/widget/WidgetHostManager;->handleActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public static handleItemLongClick(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 9

    .line 18
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 22
    :cond_0
    nop

    .line 23
    nop

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "pkgName"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :cond_1
    const-string v1, ""

    .line 32
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 35
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 40
    :cond_2
    const-string p1, "\u05d9\u05d9\u05e9\u05d5\u05dd"

    :goto_1
    nop

    .line 42
    nop

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 44
    return v0

    .line 47
    :cond_3
    invoke-static {p0}, Lcom/sprd/classichome/widget/WidgetHostManager;->getInstance(Landroid/content/Context;)Lcom/sprd/classichome/widget/WidgetHostManager;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/sprd/classichome/widget/WidgetHostManager;->getMaxPage()I

    move-result v2

    .line 49
    const/4 v3, 0x1

    if-ge v2, v3, :cond_4

    const/4 v2, 0x1

    .line 51
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const-string v6, "\u05d4\u05d5\u05e1\u05e3 \u05dc\u05de\u05e1\u05da \u05d4\u05e8\u05d0\u05e9\u05d9 (\u05e6\u05e4\u05d9\u05d9\u05d4 \u05d1\u05dc\u05d1\u05d3)"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const/4 v6, 0x1

    :goto_2
    if-gt v6, v2, :cond_5

    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u05d4\u05d5\u05e1\u05e3 \u05dc\u05e2\u05de\u05d5\u05d3 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 65
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u05d4\u05d5\u05e1\u05e3 \u05dc\u05e2\u05de\u05d5\u05d3 \u05d5\u05d5\u05d9\u05d3\u05d2\'\u05d8\u05d9\u05dd \u05d7\u05d3\u05e9 ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v2, "\u05e4\u05e8\u05d8\u05d9 \u05d9\u05d9\u05e9\u05d5\u05dd"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 72
    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 74
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 76
    new-instance p1, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;

    invoke-direct {p1, v2, v1, p0, v5}, Lcom/sprd/classichome/mainmenu/MainMenuWidgetHelper$1;-><init>(ILjava/lang/String;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v4, v0, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    const/4 p0, 0x0

    const-string p1, "\u05d1\u05d9\u05d8\u05d5\u05dc"

    invoke-virtual {v4, p1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 92
    return v3

    .line 37
    :catch_0
    move-exception p0

    .line 38
    const-string p1, "MainMenuWidgetHelper"

    const-string v1, "Error inspecting itemTag"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    return v0

    .line 19
    :cond_6
    :goto_3
    return v0
.end method

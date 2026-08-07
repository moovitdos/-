.class public Lcom/sprd/classichome/AppItemInfo;
.super Ljava/lang/Object;
.source "AppItemInfo.java"


# instance fields
.field public final clsName:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconCustomized:Z

.field public final pkgName:Ljava/lang/String;

.field public position:I

.field public title:Ljava/lang/CharSequence;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v5, "mainmenu"

    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sprd/classichome/AppItemInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "cls"    # Ljava/lang/String;
    .param p5, "group"    # Ljava/lang/String;
    .param p6, "position"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/sprd/classichome/AppItemInfo;->title:Ljava/lang/CharSequence;

    .line 98
    iput-object p2, p0, Lcom/sprd/classichome/AppItemInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 99
    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "pkg":Ljava/lang/String;
    :cond_0
    iput-object p3, p0, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    .line 100
    if-nez p4, :cond_1

    const-string p4, ""

    .end local p4    # "cls":Ljava/lang/String;
    :cond_1
    iput-object p4, p0, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p5}, Lcom/sprd/classichome/AppItemInfo;->isGroupValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .end local p5    # "group":Ljava/lang/String;
    :goto_0
    iput-object p5, p0, Lcom/sprd/classichome/AppItemInfo;->group:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    if-ge p6, v0, :cond_2

    const p6, 0x7fffffff

    .end local p6    # "position":I
    :cond_2
    iput p6, p0, Lcom/sprd/classichome/AppItemInfo;->position:I

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sprd/common/util/Utilities;->getNoEmptyUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/AppItemInfo;->user:Landroid/os/UserHandle;

    .line 104
    return-void

    .line 101
    .restart local p5    # "group":Ljava/lang/String;
    .restart local p6    # "position":I
    :cond_3
    const-string p5, "mainmenu"

    goto :goto_0
.end method


# virtual methods
.method public getComponentKey()Lcom/sprd/classichome/util/ComponentKey;
    .locals 4

    .prologue
    .line 117
    new-instance v0, Lcom/sprd/classichome/util/ComponentKey;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sprd/classichome/AppItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Lcom/sprd/classichome/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sprd/classichome/AppItemInfo;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprd/classichome/AppItemInfo;->clsName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isGroupValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "mainmenu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "extra"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "game"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/sprd/classichome/util/ComponentKey;
.super Ljava/lang/Object;
.source "ComponentKey.java"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field private final mHashCode:I

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 39
    invoke-static {p2}, Lcom/sprd/common/util/Utilities;->getNoEmptyUser(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/classichome/util/ComponentKey;->user:Landroid/os/UserHandle;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/sprd/classichome/util/ComponentKey;->mHashCode:I

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 72
    instance-of v1, p1, Lcom/sprd/classichome/util/ComponentKey;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/sprd/classichome/util/ComponentKey;

    .line 74
    .local v0, "other":Lcom/sprd/classichome/util/ComponentKey;
    iget-object v1, v0, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sprd/classichome/util/ComponentKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/sprd/classichome/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 76
    .end local v0    # "other":Lcom/sprd/classichome/util/ComponentKey;
    :goto_0
    return v1

    .line 74
    .restart local v0    # "other":Lcom/sprd/classichome/util/ComponentKey;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 76
    .end local v0    # "other":Lcom/sprd/classichome/util/ComponentKey;
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/sprd/classichome/util/ComponentKey;->mHashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sprd/classichome/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprd/classichome/util/ComponentKey;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

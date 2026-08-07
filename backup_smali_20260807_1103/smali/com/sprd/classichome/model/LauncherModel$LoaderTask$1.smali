.class Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/model/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;->this$1:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask$1;->this$1:Lcom/sprd/classichome/model/LauncherModel$LoaderTask;

    iget-object v0, v0, Lcom/sprd/classichome/model/LauncherModel$LoaderTask;->this$0:Lcom/sprd/classichome/model/LauncherModel;

    invoke-static {v0}, Lcom/sprd/classichome/model/LauncherModel;->access$100(Lcom/sprd/classichome/model/LauncherModel;)V

    .line 234
    return-void
.end method

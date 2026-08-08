.class Lcom/android/settings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick  mLevelpower is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v2}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-virtual {v0}, Lcom/android/settings/MasterClear;->dialog()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$302(Lcom/android/settings/MasterClear;Z)Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$400(Lcom/android/settings/MasterClear;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/MasterClear;->access$500(Lcom/android/settings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/MasterClear$2;->this$0:Lcom/android/settings/MasterClear;

    invoke-static {v0}, Lcom/android/settings/MasterClear;->access$600(Lcom/android/settings/MasterClear;)V

    goto :goto_0
.end method

.class Lcom/android/settings/RadioInfo$22$1$2;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RadioInfo$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/RadioInfo$22$1;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo$22$1;)V
    .locals 0

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/settings/RadioInfo$22$1$2;->this$2:Lcom/android/settings/RadioInfo$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/settings/RadioInfo$22$1$2;->this$2:Lcom/android/settings/RadioInfo$22$1;

    iget-object v0, v0, Lcom/android/settings/RadioInfo$22$1;->val$radioInteraction:Lcom/android/settings/RadioInfo$RadioInteraction;

    invoke-virtual {v0}, Lcom/android/settings/RadioInfo$RadioInteraction;->RunnablesetBack()V

    .line 1236
    return-void
.end method

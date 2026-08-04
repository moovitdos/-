.class Lcom/sprd/classichome/Home$ScreenStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenStatusReceiver"
.end annotation


# instance fields
.field ACTION_SCREEN_ON:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprd/classichome/Home;


# direct methods
.method private constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 104
    const-string v0, "duoqin.intent.action.SCREEN_ON"

    iput-object v0, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->ACTION_SCREEN_ON:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/classichome/Home;Lcom/sprd/classichome/Home$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sprd/classichome/Home;
    .param p2, "x1"    # Lcom/sprd/classichome/Home$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sprd/classichome/Home$ScreenStatusReceiver;-><init>(Lcom/sprd/classichome/Home;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v0, "intentToSend":Landroid/content/Intent;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->ACTION_SCREEN_ON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->this$0:Lcom/sprd/classichome/Home;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    :cond_0
    return-void
.end method

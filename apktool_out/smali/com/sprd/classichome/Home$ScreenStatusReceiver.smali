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
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 140
    const-string p1, "duoqin.intent.action.SCREEN_ON"

    iput-object p1, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->ACTION_SCREEN_ON:Ljava/lang/String;

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lcom/sprd/classichome/Home;Lcom/sprd/classichome/Home$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/sprd/classichome/Home$ScreenStatusReceiver;-><init>(Lcom/sprd/classichome/Home;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 145
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 146
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 147
    iget-object p2, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->ACTION_SCREEN_ON:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object p2, p0, Lcom/sprd/classichome/Home$ScreenStatusReceiver;->this$0:Lcom/sprd/classichome/Home;

    invoke-virtual {p2, p1}, Lcom/sprd/classichome/Home;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    :cond_0
    return-void
.end method

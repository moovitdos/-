.class Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;
.super Ljava/lang/Object;
.source "RemoteServiceLogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/settings/RemoteServiceLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field nameTV:Landroid/widget/TextView;

.field numberTV:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/duoqin/settings/RemoteServiceLogActivity;

.field timeTV:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/duoqin/settings/RemoteServiceLogActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;->this$0:Lcom/duoqin/settings/RemoteServiceLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoqin/settings/RemoteServiceLogActivity;Lcom/duoqin/settings/RemoteServiceLogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/duoqin/settings/RemoteServiceLogActivity;
    .param p2, "x1"    # Lcom/duoqin/settings/RemoteServiceLogActivity$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/duoqin/settings/RemoteServiceLogActivity$Holder;-><init>(Lcom/duoqin/settings/RemoteServiceLogActivity;)V

    return-void
.end method

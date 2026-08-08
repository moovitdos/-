.class Lcom/sprd/settings/sim/SimManagerActivity$6;
.super Landroid/database/ContentObserver;
.source "SimManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/sim/SimManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/SimManagerActivity;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimManagerActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$6;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 381
    const-string v0, "SimManagerActivity"

    const-string v1, "mMobileDataObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$6;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1200(Lcom/sprd/settings/sim/SimManagerActivity;)V

    .line 383
    return-void
.end method

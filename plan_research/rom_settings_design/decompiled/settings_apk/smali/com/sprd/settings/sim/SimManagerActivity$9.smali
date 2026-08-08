.class Lcom/sprd/settings/sim/SimManagerActivity$9;
.super Ljava/lang/Object;
.source "SimManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/sim/SimManagerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/SimManagerActivity;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimManagerActivity;)V
    .locals 0

    .prologue
    .line 728
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$9;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$9;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1500(Lcom/sprd/settings/sim/SimManagerActivity;)V

    .line 732
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 734
    return-void
.end method

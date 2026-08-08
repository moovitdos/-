.class Lcom/sprd/settings/sim/SimManagerActivity$4;
.super Ljava/lang/Object;
.source "SimManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/sim/SimManagerActivity;->prepareForAdapter()V
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
    .line 289
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$4;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    const-string v0, "SimManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simMmsAdapter default-- position  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$4;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1000(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/settings/sim/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 295
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$4;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    const-string v1, "mms_setting"

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$4;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$1100(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->preferenceChanged(Ljava/lang/String;I)V

    .line 296
    return-void
.end method

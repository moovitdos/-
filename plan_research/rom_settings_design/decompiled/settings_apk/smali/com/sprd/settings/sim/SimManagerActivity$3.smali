.class Lcom/sprd/settings/sim/SimManagerActivity$3;
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
    .line 274
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    const-string v0, "SimManagerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simAdapter default-- position  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$600(Lcom/sprd/settings/sim/SimManagerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$700(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/settings/sim/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    const-string v1, "video_setting"

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$800(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->preferenceChanged(Ljava/lang/String;I)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$600(Lcom/sprd/settings/sim/SimManagerActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$900(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/settings/sim/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 284
    iget-object v0, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    const-string v1, "voice_setting"

    iget-object v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$3;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$800(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->preferenceChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method

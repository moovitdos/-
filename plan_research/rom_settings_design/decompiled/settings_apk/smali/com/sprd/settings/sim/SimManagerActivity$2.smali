.class Lcom/sprd/settings/sim/SimManagerActivity$2;
.super Ljava/lang/Object;
.source "SimManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/sim/SimManagerActivity;->prepareForDataAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/sim/SimManagerActivity;

.field final synthetic val$dataPhoneId:I


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimManagerActivity;I)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    iput p2, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->val$dataPhoneId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$000(Lcom/sprd/settings/sim/SimManagerActivity;)Lcom/sprd/settings/sim/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/settings/sim/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 235
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$100(Lcom/sprd/settings/sim/SimManagerActivity;)[Landroid/sim/Sim;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/sim/Sim;->getPhoneId()I

    move-result v0

    .line 236
    .local v0, "clickViewId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$200(Lcom/sprd/settings/sim/SimManagerActivity;)Landroid/net/ConnectivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabledByPhoneId(IZ)V

    .line 238
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1, v0}, Lcom/sprd/settings/sim/SimManagerActivity;->access$300(Lcom/sprd/settings/sim/SimManagerActivity;I)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    invoke-static {v1}, Lcom/sprd/settings/sim/SimManagerActivity;->access$400(Lcom/sprd/settings/sim/SimManagerActivity;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->this$0:Lcom/sprd/settings/sim/SimManagerActivity;

    iget v2, p0, Lcom/sprd/settings/sim/SimManagerActivity$2;->val$dataPhoneId:I

    invoke-static {v1, v2}, Lcom/sprd/settings/sim/SimManagerActivity;->access$500(Lcom/sprd/settings/sim/SimManagerActivity;I)V

    goto :goto_0
.end method

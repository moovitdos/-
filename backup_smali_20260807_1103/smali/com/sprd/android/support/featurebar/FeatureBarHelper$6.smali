.class Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;
.super Landroid/content/BroadcastReceiver;
.source "FeatureBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/android/support/featurebar/FeatureBarHelper;->registerBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;


# direct methods
.method constructor <init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->access$200(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 461
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->access$300(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 462
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->access$400(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 463
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->access$500(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 464
    return-void
.end method

.class Lcom/sprd/classichome/Home$2;
.super Landroid/content/BroadcastReceiver;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/Home;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    const/16 v1, 0x15

    invoke-static {p1, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/classichome/Home;->access$102(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 90
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    const/16 v1, 0x16

    invoke-static {p1, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/classichome/Home;->access$202(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 91
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    const/16 v1, 0x13

    invoke-static {p1, v1}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/classichome/Home;->access$302(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 92
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {p1}, Lcom/sprd/classichome/util/UtilitiesExt;->getLFComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/classichome/Home;->access$402(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 93
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {p1}, Lcom/sprd/classichome/util/UtilitiesExt;->getRTComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sprd/classichome/Home;->access$502(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 94
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object v0, v0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object v0, v0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v1}, Lcom/sprd/classichome/Home;->access$400(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object v0, v0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v1}, Lcom/sprd/classichome/Home;->access$400(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object v0, v0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v1}, Lcom/sprd/classichome/Home;->access$500(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object v0, v0, Lcom/sprd/classichome/BaseHomeActivity;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v1}, Lcom/sprd/classichome/Home;->access$500(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 100
    :cond_0
    return-void
.end method

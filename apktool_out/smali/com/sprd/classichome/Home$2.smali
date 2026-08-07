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

    .line 61
    iput-object p1, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sprd/classichome/Home;->access$102(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 65
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    const/16 v0, 0x16

    invoke-static {p1, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sprd/classichome/Home;->access$202(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 66
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/sprd/classichome/util/UtilitiesExt;->getDpadComponentName(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sprd/classichome/Home;->access$302(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 67
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {p1}, Lcom/sprd/classichome/util/UtilitiesExt;->getLFComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sprd/classichome/Home;->access$402(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 68
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {p1}, Lcom/sprd/classichome/util/UtilitiesExt;->getRTComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sprd/classichome/Home;->access$502(Lcom/sprd/classichome/Home;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 69
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object p2, p2, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    if-eqz p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object p2, p2, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$400(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(Ljava/lang/String;)V

    .line 71
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object p2, p2, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$400(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object p2, p2, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$500(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sprd/common/util/Utilities;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    iget-object p2, p2, Lcom/sprd/classichome/Home;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, p0, Lcom/sprd/classichome/Home$2;->this$0:Lcom/sprd/classichome/Home;

    invoke-static {v0}, Lcom/sprd/classichome/Home;->access$500(Lcom/sprd/classichome/Home;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sprd/common/util/Utilities;->loadAppSKIcon(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :cond_0
    return-void
.end method

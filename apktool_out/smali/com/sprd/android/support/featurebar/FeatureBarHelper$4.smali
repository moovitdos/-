.class Lcom/sprd/android/support/featurebar/FeatureBarHelper$4;
.super Ljava/lang/Object;
.source "FeatureBarHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/android/support/featurebar/FeatureBarHelper;->wrapDecor(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$4;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iput-object p2, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$4;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->sendDownAndUpKeyEvents(Landroid/app/Activity;I)V

    .line 146
    return-void
.end method

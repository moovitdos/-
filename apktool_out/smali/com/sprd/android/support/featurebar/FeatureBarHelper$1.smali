.class Lcom/sprd/android/support/featurebar/FeatureBarHelper$1;
.super Ljava/lang/Object;
.source "FeatureBarHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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


# direct methods
.method constructor <init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$1;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$1;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->access$000(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 116
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$1;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-static {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->access$100(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    .line 121
    return-void
.end method

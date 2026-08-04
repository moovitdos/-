.class Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;
.super Ljava/lang/Object;
.source "FeatureBarHelper.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


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
    .line 159
    iput-object p1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-boolean v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    if-eqz p1, :cond_2

    .line 172
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v0, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;->this$0:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    iget-object v1, v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

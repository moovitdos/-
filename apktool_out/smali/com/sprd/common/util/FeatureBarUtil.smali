.class public Lcom/sprd/common/util/FeatureBarUtil;
.super Ljava/lang/Object;
.source "FeatureBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/common/util/FeatureBarUtil$1;,
        Lcom/sprd/common/util/FeatureBarUtil$SoftKey;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static getBackground(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "fbh"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->getFeatureBar()Landroid/view/ViewGroup;

    move-result-object v0

    .line 173
    .local v0, "featureBar":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .end local v0    # "featureBar":Landroid/view/ViewGroup;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hideSoftKey(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;)V
    .locals 2
    .param p0, "fbh"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .param p1, "key"    # Lcom/sprd/common/util/FeatureBarUtil$SoftKey;

    .prologue
    .line 38
    sget-object v0, Lcom/sprd/common/util/FeatureBarUtil$1;->$SwitchMap$com$sprd$common$util$FeatureBarUtil$SoftKey:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    goto :goto_0

    .line 43
    :pswitch_1
    invoke-virtual {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideRight()V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBackgroundAlpha(Lcom/sprd/android/support/featurebar/FeatureBarHelper;I)V
    .locals 1
    .param p0, "fbh"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .param p1, "alpha"    # I

    .prologue
    .line 151
    invoke-static {p0}, Lcom/sprd/common/util/FeatureBarUtil;->getBackground(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 152
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    :cond_0
    return-void
.end method

.method public static setBackgroundNull(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 2
    .param p0, "fbh"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 158
    if-nez p0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->getFeatureBar()Landroid/view/ViewGroup;

    move-result-object v0

    .line 163
    .local v0, "featureBar":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static setTextColor(Landroid/content/Context;Lcom/sprd/android/support/featurebar/FeatureBarHelper;Lcom/sprd/common/util/FeatureBarUtil$SoftKey;I)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fbh"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    .param p2, "key"    # Lcom/sprd/common/util/FeatureBarUtil$SoftKey;
    .param p3, "resId"    # I

    .prologue
    .line 82
    return-void
.end method

.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 37
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 38
    .local v0, "featureBarHelper":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 39
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideCenter()V

    .line 40
    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightIcon(I)V

    .line 41
    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setRightText(I)V

    .line 48
    return-void
.end method

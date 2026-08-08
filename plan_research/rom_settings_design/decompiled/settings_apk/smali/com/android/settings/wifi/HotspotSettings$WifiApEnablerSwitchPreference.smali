.class public Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "HotspotSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/HotspotSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiApEnablerSwitchPreference"
.end annotation


# instance fields
.field private fontScale:F

.field final synthetic this$0:Lcom/android/settings/wifi/HotspotSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/HotspotSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;->this$0:Lcom/android/settings/wifi/HotspotSettings;

    .line 362
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 360
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;->fontScale:F

    .line 363
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;->fontScale:F

    .line 364
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x41f00000    # 30.0f

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    move-object v0, p1

    .line 369
    check-cast v0, Landroid/view/ViewGroup;

    .line 370
    .local v0, "preferenceLayout":Landroid/view/ViewGroup;
    invoke-virtual {p1, v4, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 371
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 372
    .local v2, "title":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 373
    .local v1, "summary":Landroid/widget/TextView;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 374
    invoke-virtual {v2, v6, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 375
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 376
    invoke-virtual {v1, v6, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 378
    const/high16 v3, 0x41a00000    # 20.0f

    iget v4, p0, Lcom/android/settings/wifi/HotspotSettings$WifiApEnablerSwitchPreference;->fontScale:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 379
    return-void
.end method

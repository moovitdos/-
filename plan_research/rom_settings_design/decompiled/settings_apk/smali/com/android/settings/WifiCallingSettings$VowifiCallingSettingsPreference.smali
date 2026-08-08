.class public Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;
.super Landroid/preference/SwitchPreference;
.source "WifiCallingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VowifiCallingSettingsPreference"
.end annotation


# instance fields
.field private fontScale:F

.field final synthetic this$0:Lcom/android/settings/WifiCallingSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/WifiCallingSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;->this$0:Lcom/android/settings/WifiCallingSettings;

    .line 315
    invoke-direct {p0, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 313
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;->fontScale:F

    .line 316
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/android/settings/WifiCallingSettings$VowifiCallingSettingsPreference;->fontScale:F

    .line 317
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 321
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    move-object v1, p1

    .line 322
    check-cast v1, Landroid/view/ViewGroup;

    .line 323
    .local v1, "preferenceLayout":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 326
    .local v2, "summary":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 327
    .local v0, "fontScale":F
    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 328
    return-void
.end method

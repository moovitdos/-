.class public Lcom/android/settings/DevelopmentSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "DevelopmentSwitchPreference.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object p1, p0, Lcom/android/settings/DevelopmentSwitchPreference;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 20
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    move-object v1, p1

    .line 22
    check-cast v1, Landroid/view/ViewGroup;

    .line 23
    .local v1, "preferenceLayout":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 25
    .local v2, "summary":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/DevelopmentSwitchPreference;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 26
    .local v0, "fontScale":F
    const/high16 v3, 0x41a00000    # 20.0f

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 27
    return-void
.end method

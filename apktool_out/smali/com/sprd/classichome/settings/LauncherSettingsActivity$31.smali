.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$31;
.super Landroid/widget/BaseAdapter;
.source "LauncherSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->showColorPickerDialog(Ljava/lang/String;ILcom/sprd/classichome/settings/LauncherSettingsActivity$ColorSelectedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$31;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1321
    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$1000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1326
    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$1000()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1331
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1336
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x1090012

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :goto_0
    check-cast p2, Landroid/widget/CheckedTextView;

    .line 1339
    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$1000()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    const/high16 v1, 0x41a00000    # 20.0f

    .line 1341
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 1340
    const/4 v2, 0x1

    invoke-static {v2, v1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 1342
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1343
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1344
    invoke-static {}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$1100()[I

    move-result-object v3

    aget p1, v3, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1345
    invoke-virtual {v1, p3, p3}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1346
    int-to-float p1, p3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr p1, v3

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1347
    const p1, -0x8f8d8d

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1350
    invoke-virtual {v1, v0, v0, p3, p3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1351
    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, v1, p1}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1352
    div-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 1353
    return-object p2
.end method

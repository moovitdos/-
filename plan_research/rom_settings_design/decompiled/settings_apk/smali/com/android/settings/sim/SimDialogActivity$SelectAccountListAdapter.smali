.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OPACITY:F

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mResId:I

.field private mSubInfoList:[Landroid/sim/Sim;

.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimDialogActivity;[Landroid/sim/Sim;Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 1
    .param p2, "subInfoList"    # [Landroid/sim/Sim;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "resource"    # I
    .param p5, "arr"    # [Ljava/lang/String;
    .param p6, "dialogId"    # I

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    .line 591
    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 586
    const v0, 0x3f0a3d71    # 0.54f

    iput v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->OPACITY:F

    .line 592
    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 593
    iput p4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    .line 594
    iput p6, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    .line 595
    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:[Landroid/sim/Sim;

    .line 596
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .prologue
    .line 582
    iget v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)[Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:[Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createIconBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .prologue
    .line 755
    iget-object v11, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02007f

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 757
    .local v2, "iconBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 758
    .local v7, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 759
    .local v1, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 762
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v4, v7, v1, v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 764
    .local v8, "workingBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 765
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 769
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v2, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 770
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 773
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 774
    const-string v11, "sans-serif"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 775
    const/4 v11, -0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 777
    const/high16 v11, 0x41800000    # 16.0f

    iget v12, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 779
    const-string v11, "%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v14, p2, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, "index":Ljava/lang/String;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 781
    .local v6, "textBound":Landroid/graphics/Rect;
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v5, v3, v11, v12, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 782
    int-to-float v11, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    int-to-float v12, v12

    sub-float v9, v11, v12

    .line 783
    .local v9, "xOffset":F
    int-to-float v11, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    int-to-float v12, v12

    sub-float v10, v11, v12

    .line 784
    .local v10, "yOffset":F
    invoke-virtual {v0, v3, v9, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 786
    return-object v8
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 600
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 605
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 607
    iget v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 608
    .local v4, "rowView":Landroid/view/View;
    new-instance v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;Lcom/android/settings/sim/SimDialogActivity$1;)V

    .line 609
    .local v0, "holder":Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    const v7, 0x7f0b003b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 610
    const v7, 0x7f0b0049

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 611
    const v7, 0x7f0b003a

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 612
    const v7, 0x7f0b0168

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    .line 614
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 620
    :goto_0
    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:[Landroid/sim/Sim;

    aget-object v5, v7, p1

    .line 622
    .local v5, "sir":Landroid/sim/Sim;
    const-string v6, ""

    .line 623
    .local v6, "summary":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 624
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020080

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v8, 0x3f0a3d71    # 0.54f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    .line 631
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 632
    iget v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    packed-switch v7, :pswitch_data_0

    .line 649
    :pswitch_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid dialog type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in SIM dialog."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 616
    .end local v0    # "holder":Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    .end local v4    # "rowView":Landroid/view/View;
    .end local v5    # "sir":Landroid/sim/Sim;
    .end local v6    # "summary":Ljava/lang/String;
    :cond_0
    move-object v4, p2

    .line 617
    .restart local v4    # "rowView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .line 636
    .restart local v5    # "sir":Landroid/sim/Sim;
    .restart local v6    # "summary":Ljava/lang/String;
    :pswitch_1
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    if-nez p1, :cond_2

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 685
    :goto_2
    :pswitch_2
    const-string v7, "ro.operator"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "operatorName":Ljava/lang/String;
    const-string v7, "reliance"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 687
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 695
    :goto_3
    iget v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    if-nez v7, :cond_1

    .line 696
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->isEnabled(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 700
    :cond_1
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 702
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 708
    :goto_4
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    .line 709
    .local v2, "isSubIdChecked":Z
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    new-instance v8, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;

    invoke-direct {v8, p0, v2, p1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$1;-><init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;ZI)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    return-object v4

    .line 636
    .end local v2    # "isSubIdChecked":Z
    .end local v3    # "operatorName":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 641
    :pswitch_3
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    if-nez p1, :cond_3

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_5

    .line 655
    :cond_4
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    invoke-virtual {v5}, Landroid/sim/Sim;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 660
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/sim/Sim;->getPhoneId()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->createIconBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 662
    iget v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    packed-switch v7, :pswitch_data_1

    .line 680
    :pswitch_4
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid dialog type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in SIM dialog."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 664
    :pswitch_5
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v5}, Landroid/sim/Sim;->getPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_5

    const/4 v7, 0x1

    :goto_6
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 668
    :pswitch_6
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5}, Landroid/sim/Sim;->getPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_6

    const/4 v7, 0x1

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 672
    :pswitch_7
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/telephony/TelephonyManager;->getDefaultSim(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5}, Landroid/sim/Sim;->getPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_7

    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 676
    :pswitch_8
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v7}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Lcom/android/settings/sim/SimDialogActivity;)[Landroid/telephony/TelephonyManager;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPrimaryCard()I

    move-result v7

    invoke-virtual {v5}, Landroid/sim/Sim;->getPhoneId()I

    move-result v9

    if-ne v7, v9, :cond_8

    const/4 v7, 0x1

    :goto_9
    invoke-virtual {v8, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .line 690
    .restart local v3    # "operatorName":Ljava/lang/String;
    :cond_9
    iget-object v8, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->defaultSubscription:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v7}, Lcom/android/settings/sim/SimDialogActivity;->access$100(Lcom/android/settings/sim/SimDialogActivity;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/16 v7, 0x8

    :goto_a
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_a
    const/4 v7, 0x0

    goto :goto_a

    .line 704
    :cond_b
    iget-object v7, v0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 662
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 733
    iget v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    if-nez v5, :cond_2

    .line 734
    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:[Landroid/sim/Sim;

    aget-object v2, v5, p1

    .line 735
    .local v2, "sir":Landroid/sim/Sim;
    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-static {v5}, Lcom/android/settings/sim/SimDialogActivity;->access$200(Lcom/android/settings/sim/SimDialogActivity;)[Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 737
    .local v0, "isSimReady":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v2}, Landroid/sim/Sim;->getPhoneId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/sim/SimDialogActivity;->access$1200(Lcom/android/settings/sim/SimDialogActivity;I)Z

    move-result v1

    .line 738
    .local v1, "isSimStandby":Z
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    .line 742
    .end local v0    # "isSimReady":Z
    .end local v1    # "isSimStandby":Z
    .end local v2    # "sir":Landroid/sim/Sim;
    :cond_0
    :goto_1
    return v4

    .restart local v2    # "sir":Landroid/sim/Sim;
    :cond_1
    move v0, v4

    .line 735
    goto :goto_0

    .end local v2    # "sir":Landroid/sim/Sim;
    :cond_2
    move v4, v3

    .line 742
    goto :goto_1
.end method

.class public Lcom/sprd/android/support/featurebar/FeatureBarHelper;
.super Ljava/lang/Object;
.source "FeatureBarHelper.java"


# instance fields
.field mBar:Landroid/view/ViewGroup;

.field mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field mCenterText:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mForceIcon:Z

.field mKeyCenter:Landroid/widget/TextView;

.field mKeyLeft:Landroid/widget/TextView;

.field mKeyRight:Landroid/widget/TextView;

.field mLeftDrawable:Landroid/graphics/drawable/Drawable;

.field mLeftText:Ljava/lang/String;

.field mPotentialErrorFlag:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mRightDrawable:Landroid/graphics/drawable/Drawable;

.field mRightText:Ljava/lang/String;

.field mUseIcon:Z

.field mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    .line 39
    iput-boolean v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    .line 40
    iput v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mPotentialErrorFlag:I

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string v0, "FeatureBarHelper"

    const-string v1, "Pass activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mWindow:Landroid/view/Window;

    .line 63
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mWindow:Landroid/view/Window;

    if-nez v0, :cond_1

    .line 64
    const-string v0, "FeatureBarHelper"

    const-string v1, "Window of activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->getSystemProperty()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->wrapDecor(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->registerBroadcast()V

    return-void
.end method

.method static synthetic access$100(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->unregisterBroadcast()V

    return-void
.end method

.method static synthetic access$200(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->getSystemProperty()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->refreshLeft()V

    return-void
.end method

.method static synthetic access$400(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->refreshCenter()V

    return-void
.end method

.method static synthetic access$500(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->refreshRight()V

    return-void
.end method

.method private getSystemProperty()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "persist.sys.duoqin.featurebar"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    .line 448
    return-void
.end method

.method private refreshCenter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 248
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private refreshRight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 451
    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.duoqin.featurebar.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    new-instance v1, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;

    invoke-direct {v1, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper$6;-><init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    iput-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 466
    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static sendDownAndUpKeyEvents(Landroid/app/Activity;I)V
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyCode"    # I

    .prologue
    .line 409
    if-eqz p0, :cond_0

    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v15

    .line 411
    .local v15, "window":Landroid/view/Window;
    if-eqz v15, :cond_0

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 414
    .local v0, "downTime":J
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide v2, v0

    move/from16 v5, p1

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v13

    .line 417
    .local v13, "down":Landroid/view/KeyEvent;
    invoke-virtual {v15, v13}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 420
    .local v2, "upTime":J
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move/from16 v5, p1

    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v14

    .line 423
    .local v14, "up":Landroid/view/KeyEvent;
    invoke-virtual {v15, v14}, Landroid/view/Window;->injectInputEvent(Landroid/view/InputEvent;)V

    .line 426
    .end local v0    # "downTime":J
    .end local v2    # "upTime":J
    .end local v13    # "down":Landroid/view/KeyEvent;
    .end local v14    # "up":Landroid/view/KeyEvent;
    .end local v15    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method private unregisterBroadcast()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public hideCenter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterText:Ljava/lang/String;

    .line 228
    iput-object v2, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-void
.end method

.method public hideLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftText:Ljava/lang/String;

    .line 221
    iput-object v2, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 224
    return-void
.end method

.method public setCenterIcon(I)V
    .locals 3
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 332
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCenterText(I)V
    .locals 3
    .param p1, "textRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 311
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterText:Ljava/lang/String;

    .line 312
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLeftIcon(I)V
    .locals 3
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLeftText(I)V
    .locals 3
    .param p1, "textRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftText:Ljava/lang/String;

    .line 272
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setRightIcon(I)V
    .locals 3
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 372
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setRightText(I)V
    .locals 3
    .param p1, "textRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightText:Ljava/lang/String;

    .line 352
    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mUseIcon:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mForceIcon:Z

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public wrapDecor(Landroid/app/Activity;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 75
    .local v7, "decorView":Landroid/view/View;
    if-nez v7, :cond_0

    .line 76
    const-string v14, "FeatureBarHelper"

    const-string v15, "DecorView is null"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 80
    :cond_0
    const v14, 0x1020002

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 81
    .local v6, "contentView":Landroid/view/ViewGroup;
    if-nez v6, :cond_1

    .line 82
    const-string v14, "FeatureBarHelper"

    const-string v15, "Decor view is null, have you called wrapDecor after Activity#super.onCreate?"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 87
    .local v4, "childCount":I
    if-nez v4, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mPotentialErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mPotentialErrorFlag:I

    .line 91
    :cond_2
    new-array v5, v4, [Landroid/view/View;

    .line 92
    .local v5, "children":[Landroid/view/View;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_3

    .line 93
    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    aput-object v14, v5, v8

    .line 92
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 99
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 100
    .local v10, "inflater":Landroid/view/LayoutInflater;
    sget v14, Lcom/sprd/android/support/featurebar/R$layout;->decor_layout:I

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 102
    .local v13, "wrapper":Landroid/view/View;
    sget v14, Lcom/sprd/android/support/featurebar/R$id;->content:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 103
    .local v12, "rawContentView":Landroid/view/ViewGroup;
    if-lez v4, :cond_4

    .line 104
    move-object v2, v5

    .local v2, "arr$":[Landroid/view/View;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v11, :cond_4

    aget-object v3, v2, v9

    .line 105
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 109
    .end local v2    # "arr$":[Landroid/view/View;
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 111
    sget v14, Lcom/sprd/android/support/featurebar/R$id;->feature_bar:I

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mBar:Landroid/view/ViewGroup;

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mBar:Landroid/view/ViewGroup;

    new-instance v15, Lcom/sprd/android/support/featurebar/FeatureBarHelper$1;

    invoke-direct/range {v15 .. v16}, Lcom/sprd/android/support/featurebar/FeatureBarHelper$1;-><init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mBar:Landroid/view/ViewGroup;

    sget v15, Lcom/sprd/android/support/featurebar/R$id;->feature_bar_left:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mBar:Landroid/view/ViewGroup;

    sget v15, Lcom/sprd/android/support/featurebar/R$id;->feature_bar_center:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    .line 125
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mBar:Landroid/view/ViewGroup;

    sget v15, Lcom/sprd/android/support/featurebar/R$id;->feature_bar_right:I

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setClickable(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    new-instance v15, Lcom/sprd/android/support/featurebar/FeatureBarHelper$2;

    invoke-direct/range {v15 .. v17}, Lcom/sprd/android/support/featurebar/FeatureBarHelper$2;-><init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Landroid/app/Activity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setClickable(Z)V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyCenter:Landroid/widget/TextView;

    new-instance v15, Lcom/sprd/android/support/featurebar/FeatureBarHelper$3;

    invoke-direct/range {v15 .. v17}, Lcom/sprd/android/support/featurebar/FeatureBarHelper$3;-><init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Landroid/app/Activity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/View;->setClickable(Z)V

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyRight:Landroid/widget/TextView;

    new-instance v15, Lcom/sprd/android/support/featurebar/FeatureBarHelper$4;

    invoke-direct/range {v15 .. v17}, Lcom/sprd/android/support/featurebar/FeatureBarHelper$4;-><init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;Landroid/app/Activity;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sprd/android/support/featurebar/R$drawable;->featurebar_option:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sprd/android/support/featurebar/R$drawable;->featurebar_select:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sprd/android/support/featurebar/R$drawable;->featurebar_back:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sprd/android/support/featurebar/R$string;->default_feature_bar_options:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mLeftText:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sprd/android/support/featurebar/R$string;->default_feature_bar_center:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mCenterText:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/sprd/android/support/featurebar/R$string;->default_feature_bar_back:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mRightText:Ljava/lang/String;

    .line 155
    invoke-direct/range {p0 .. p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->refreshLeft()V

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->refreshCenter()V

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->refreshRight()V

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    new-instance v15, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;

    invoke-direct/range {v15 .. v16}, Lcom/sprd/android/support/featurebar/FeatureBarHelper$5;-><init>(Lcom/sprd/android/support/featurebar/FeatureBarHelper;)V

    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 180
    :cond_5
    const v14, 0x1020321

    invoke-virtual {v7, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarView;

    .line 182
    .local v1, "actionBarView":Lcom/android/internal/widget/ActionBarView;
    if-eqz v1, :cond_6

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mKeyLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Lcom/android/internal/widget/ActionBarView;->setOverrideOverflowButton(Landroid/view/View;)V

    goto/16 :goto_0

    .line 185
    :cond_6
    const-string v14, "FeatureBarHelper"

    const-string v15, "actionBarView is null"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mWindow:Landroid/view/Window;

    if-eqz v14, :cond_7

    .line 187
    const-string v14, "FeatureBarHelper"

    const-string v15, "Attempt to invoke setShouldOverrideResources access PhoneWindow"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->mWindow:Landroid/view/Window;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/view/Window;->setShouldOverrideResources(Z)V

    goto/16 :goto_0

    .line 190
    :cond_7
    const-string v14, "FeatureBarHelper"

    const-string v15, "mWindow is empty, pls check it"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

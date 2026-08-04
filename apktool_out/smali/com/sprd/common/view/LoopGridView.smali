.class public Lcom/sprd/common/view/LoopGridView;
.super Landroid/widget/GridView;
.source "LoopGridView.java"


# instance fields
.field private isLoop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    .line 30
    return-void
.end method

.method private focusToNextItem()Z
    .locals 4

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->isAnyLineLast()Z

    move-result v0

    .line 61
    .local v0, "isLast":Z
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 62
    .local v1, "nextPos":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 64
    const/4 v2, 0x1

    .line 66
    :cond_0
    iget-boolean v3, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    if-ne v1, v3, :cond_1

    .line 67
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 68
    const/4 v2, 0x1

    .line 70
    :cond_1
    if-eqz v2, :cond_2

    .line 71
    const/16 v3, 0x42

    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 73
    :cond_2
    return v2
.end method

.method private focusToPreItem()Z
    .locals 4

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->isAnyLineFirst()Z

    move-result v0

    .line 79
    .local v0, "isFirst":Z
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 80
    .local v1, "nextPos":I
    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 82
    const/4 v2, 0x1

    .line 84
    :cond_0
    iget-boolean v3, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 85
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->setSelection(I)V

    .line 86
    const/4 v2, 0x1

    .line 88
    :cond_1
    if-eqz v2, :cond_2

    .line 89
    const/16 v3, 0x11

    invoke-static {v3}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 91
    :cond_2
    return v2
.end method

.method private isAnyLineFirst()Z
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 129
    .local v1, "curPos":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 130
    .local v0, "columnNum":I
    if-eqz v0, :cond_0

    rem-int v2, v1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAnyLineLast()Z
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 119
    .local v1, "curPos":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    .line 120
    .local v0, "columnNum":I
    if-eqz v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    rem-int/2addr v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isFirstLine()Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastLine()Z
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 146
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 147
    .local v2, "select":I
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v3

    rem-int v1, v0, v3

    .line 148
    .local v1, "remainder":I
    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    .line 151
    :cond_0
    sub-int v3, v0, v2

    if-gt v3, v1, :cond_1

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNeedFocusToEnd()Z
    .locals 2

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->isFirstLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 108
    const/16 v1, 0x21

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_0
    return v0
.end method

.method private isNeedFocusToStart()Z
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/sprd/common/view/LoopGridView;->isLoop:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->isLastLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 98
    const/16 v1, 0x82

    invoke-static {v1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_0
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 42
    :pswitch_0
    invoke-static {p0}, Lcom/sprd/PlatformHelper;->isLayoutRtl(Landroid/widget/GridView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->focusToNextItem()Z

    move-result v0

    .line 43
    :goto_2
    goto :goto_0

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->focusToPreItem()Z

    move-result v0

    goto :goto_2

    .line 45
    :pswitch_1
    invoke-static {p0}, Lcom/sprd/PlatformHelper;->isLayoutRtl(Landroid/widget/GridView;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->focusToPreItem()Z

    move-result v0

    .line 46
    :goto_3
    goto :goto_0

    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->focusToNextItem()Z

    move-result v0

    goto :goto_3

    .line 48
    :pswitch_2
    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->isNeedFocusToEnd()Z

    move-result v0

    .line 49
    goto :goto_0

    .line 51
    :pswitch_3
    invoke-direct {p0}, Lcom/sprd/common/view/LoopGridView;->isNeedFocusToStart()Z

    move-result v0

    goto :goto_0

    .line 55
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 40
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class public Lcom/android/settings/wifi/SecuritySpinner;
.super Landroid/widget/Spinner;
.source "SecuritySpinner.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object p1, p0, Lcom/android/settings/wifi/SecuritySpinner;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/settings/wifi/SecuritySpinner;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 26
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 27
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/wifi/SecuritySpinner;->hideSoftKeyboard()V

    .line 21
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result v0

    return v0
.end method

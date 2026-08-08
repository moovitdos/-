.class Lcom/android/settings/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 91
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 94
    :cond_0
    return-void
.end method

.method public isDialogOpen()Z
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 68
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 55
    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "dialogMessageView":Landroid/widget/TextView;
    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 58
    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 60
    .local v1, "editText":Landroid/widget/EditText;
    if-eqz v1, :cond_0

    .line 61
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    .line 77
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    .line 49
    return-void
.end method

.method public showPinDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 81
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 85
    :cond_1
    return-object v0
.end method

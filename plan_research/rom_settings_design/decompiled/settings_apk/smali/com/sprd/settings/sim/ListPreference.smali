.class public Lcom/sprd/settings/sim/ListPreference;
.super Landroid/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/sim/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private isShowingDialog:Z

.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mClickedDialogEntryIndex:I

.field private mDialog:Landroid/app/Dialog;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sprd/settings/sim/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    sget-object v1, Lcom/android/internal/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sprd/settings/sim/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sprd/settings/sim/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 210
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sprd/settings/sim/ListPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sprd/settings/sim/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprd/settings/sim/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 229
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mDialog:Landroid/app/Dialog;

    .line 51
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprd/settings/sim/ListPreference;->isShowingDialog:Z

    .line 248
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sprd/settings/sim/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/sprd/settings/sim/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0, v0}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 258
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 233
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 234
    invoke-direct {p0}, Lcom/sprd/settings/sim/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/sprd/settings/sim/ListPreference;->mClickedDialogEntryIndex:I

    .line 241
    invoke-virtual {p1, v1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 281
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sprd/settings/sim/ListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_1
    check-cast p1, Lcom/sprd/settings/sim/ListPreference$SavedState;

    .line 288
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 289
    iget-object v0, p1, Lcom/sprd/settings/sim/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 269
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 274
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/sprd/settings/sim/ListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/sprd/settings/sim/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 275
    .local v0, "myState":Lcom/sprd/settings/sim/ListPreference$SavedState;
    invoke-virtual {p0}, Lcom/sprd/settings/sim/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sprd/settings/sim/ListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 276
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sprd/settings/sim/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sprd/settings/sim/ListPreference;->setValue(Ljava/lang/String;)V

    .line 264
    return-void

    .line 263
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sprd/settings/sim/ListPreference;->mValue:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistString(Ljava/lang/String;)Z

    .line 169
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 57
    iget-boolean v2, p0, Lcom/sprd/settings/sim/ListPreference;->isShowingDialog:Z

    if-eqz v2, :cond_0

    .line 72
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v2, :cond_1

    .line 62
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/sprd/settings/sim/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 65
    iget-object v2, p0, Lcom/sprd/settings/sim/ListPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/sim/ListPreference;->mDialog:Landroid/app/Dialog;

    .line 66
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_2

    .line 67
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 69
    :cond_2
    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sprd/settings/sim/ListPreference;->isShowingDialog:Z

    goto :goto_0
.end method

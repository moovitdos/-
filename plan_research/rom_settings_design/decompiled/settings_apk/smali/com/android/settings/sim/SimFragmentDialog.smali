.class public Lcom/android/settings/sim/SimFragmentDialog;
.super Landroid/app/DialogFragment;
.source "SimFragmentDialog.java"


# static fields
.field private static mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;


# instance fields
.field private final DISPLAY_NUMBER:Ljava/lang/String;

.field private final SIM_NAME:Ljava/lang/String;

.field private final SLOT_ID:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field mDialogLayout:Landroid/view/View;

.field private mRadioBusyObserver:Landroid/database/ContentObserver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimEditLayout:Landroid/widget/LinearLayout;

.field private mSimManager:Landroid/sim/SimManager;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/sim/Sim;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 62
    const-string v0, "sim_name"

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->SIM_NAME:Ljava/lang/String;

    .line 63
    const-string v0, "tint_pos"

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->TINT_POS:Ljava/lang/String;

    .line 64
    const-string v0, "display_number"

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->DISPLAY_NUMBER:Ljava/lang/String;

    .line 66
    const-string v0, "SimPreferenceDialog"

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->TAG:Ljava/lang/String;

    .line 68
    const-string v0, "slot_id"

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->SLOT_ID:Ljava/lang/String;

    .line 182
    new-instance v0, Lcom/android/settings/sim/SimFragmentDialog$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/sim/SimFragmentDialog$1;-><init>(Lcom/android/settings/sim/SimFragmentDialog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mRadioBusyObserver:Landroid/database/ContentObserver;

    .line 196
    new-instance v0, Lcom/android/settings/sim/SimFragmentDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimFragmentDialog$2;-><init>(Lcom/android/settings/sim/SimFragmentDialog;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimFragmentDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimFragmentDialog;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/sim/SimFragmentDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/sim/SimFragmentDialog;)Lcom/android/settings/sim/SimFragmentDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimFragmentDialog;

    .prologue
    .line 52
    sput-object p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/Sim;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimFragmentDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/SimManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimFragmentDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimManager:Landroid/sim/SimManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimFragmentDialog;)[Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/sim/SimFragmentDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private createEditDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 280
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 281
    .local v7, "res":Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v10, 0x7f0b00ed

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 282
    .local v4, "nameText":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v9}, Landroid/sim/Sim;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v10, 0x4

    const/16 v11, 0x43

    invoke-direct {v9, v10, v11}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v4, v9}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 284
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 300
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 326
    .local v3, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v10, 0x7f0b00ef

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 328
    .local v5, "numberView":Landroid/widget/TextView;
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v10, 0x7f0b00f0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 330
    .local v2, "displayNumberView":Landroid/widget/EditText;
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setInputType(I)V

    .line 331
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v10}, Landroid/sim/Sim;->getPhoneId()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, "rawNumber":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 333
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :cond_0
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget-object v10, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v10}, Landroid/sim/Sim;->getPhoneId()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v8

    .line 338
    .local v8, "simCarrierName":Ljava/lang/String;
    const-string v9, "spn"

    invoke-static {v8, v9}, Lcom/sprd/internal/telephony/TeleUtils;->updateOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 339
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v10, 0x7f0b00ee

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 340
    .local v0, "carrierView":Landroid/widget/TextView;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .end local v8    # "simCarrierName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0908d9

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    invoke-virtual {v13}, Landroid/sim/Sim;->getPhoneId()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 346
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f09098e

    new-instance v11, Lcom/android/settings/sim/SimFragmentDialog$3;

    invoke-direct {v11, p0}, Lcom/android/settings/sim/SimFragmentDialog$3;-><init>(Lcom/android/settings/sim/SimFragmentDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0900f6

    new-instance v11, Lcom/android/settings/sim/SimFragmentDialog$4;

    invoke-direct {v11, p0}, Lcom/android/settings/sim/SimFragmentDialog$4;-><init>(Lcom/android/settings/sim/SimFragmentDialog;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 399
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1

    .line 340
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .restart local v8    # "simCarrierName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    const v10, 0x104000e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 191
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 192
    iget-object v1, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 193
    return-void
.end method

.method public static show(Lcom/android/settings/sim/SimSettings;I)V
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/sim/SimSettings;
    .param p1, "slotId"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    sget-object v0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    :cond_2
    new-instance v0, Lcom/android/settings/sim/SimFragmentDialog;

    invoke-direct {v0}, Lcom/android/settings/sim/SimFragmentDialog;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    .line 88
    sget-object v0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    iput p1, v0, Lcom/android/settings/sim/SimFragmentDialog;->mSlotId:I

    .line 89
    sget-object v0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 90
    sget-object v0, Lcom/android/settings/sim/SimFragmentDialog;->mSimFragmentDialog:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SimFragmentDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public findFocus(Landroid/view/ViewGroup;Landroid/os/Bundle;)I
    .locals 6
    .param p1, "child"    # Landroid/view/ViewGroup;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "focusId":I
    const/4 v1, 0x0

    .line 245
    .local v1, "focuslocation":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 246
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v4, p2}, Lcom/android/settings/sim/SimFragmentDialog;->findFocus(Landroid/view/ViewGroup;Landroid/os/Bundle;)I

    move-result v0

    .line 248
    if-lez v0, :cond_3

    move v4, v0

    .line 275
    :goto_1
    return v4

    .line 252
    :cond_0
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 253
    const-string v4, "focus_id"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 255
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_2

    .line 256
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v0

    .line 257
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 258
    const-string v4, "focus_id"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v4, "focus_location"

    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v4, v0

    .line 260
    goto :goto_1

    .line 263
    :cond_1
    const-string v4, "focus_id"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 264
    const-string v4, "focus_location"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 265
    if-ltz v1, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-gt v1, v4, :cond_2

    .line 266
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 267
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 268
    const/4 v4, 0x0

    goto :goto_1

    .line 252
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 245
    .end local v3    # "j":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    move v4, v0

    .line 275
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/sim/SimManager;->get(Landroid/content/Context;)Landroid/sim/SimManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimManager:Landroid/sim/SimManager;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string v3, "slot_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSlotId:I

    .line 101
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 102
    .local v2, "mNumSlots":I
    new-array v3, v2, [Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 104
    iget-object v4, p0, Lcom/android/settings/sim/SimFragmentDialog;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-static {v5, v0}, Landroid/telephony/TelephonyManager;->getServiceName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    aput-object v3, v4, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimManager:Landroid/sim/SimManager;

    iget v4, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSlotId:I

    invoke-virtual {v3, v4}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    .line 126
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 127
    iget-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 129
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040050

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    .line 130
    iget-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0b00eb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimEditLayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 132
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 159
    .local v0, "nameText":Landroid/widget/EditText;
    const-string v2, "sim_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0b00f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 163
    .local v1, "numberText":Landroid/widget/EditText;
    const-string v2, "display_number"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/sim/SimFragmentDialog;->findFocus(Landroid/view/ViewGroup;Landroid/os/Bundle;)I

    .line 171
    .end local v0    # "nameText":Landroid/widget/EditText;
    .end local v1    # "numberText":Landroid/widget/EditText;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSubInfoRecord:Landroid/sim/Sim;

    if-eqz v2, :cond_1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimFragmentDialog;->createEditDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialog:Landroid/app/Dialog;

    .line 173
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialog:Landroid/app/Dialog;

    .line 177
    :goto_0
    return-object v2

    .line 175
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialog:Landroid/app/Dialog;

    .line 177
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sim/SimFragmentDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimFragmentDialog;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 138
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/android/settings/sim/SimFragmentDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "radio_operation"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/sim/SimFragmentDialog;->mRadioBusyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 226
    const-string v2, "slot_id"

    iget v3, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSlotId:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0b00ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 229
    .local v0, "nameText":Landroid/widget/EditText;
    const-string v2, "sim_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0b00f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 232
    .local v1, "numberText":Landroid/widget/EditText;
    const-string v2, "display_number"

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/settings/sim/SimFragmentDialog;->mSimEditLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/sim/SimFragmentDialog;->findFocus(Landroid/view/ViewGroup;Landroid/os/Bundle;)I

    .line 238
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    return-void
.end method

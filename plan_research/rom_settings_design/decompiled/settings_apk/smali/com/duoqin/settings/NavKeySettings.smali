.class public Lcom/duoqin/settings/NavKeySettings;
.super Landroid/app/Activity;
.source "NavKeySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAppDown:Landroid/view/View;

.field private mAppDownTv:Landroid/widget/TextView;

.field private mAppLeft:Landroid/view/View;

.field private mAppLeftTv:Landroid/widget/TextView;

.field private mAppRight:Landroid/view/View;

.field private mAppRightTv:Landroid/widget/TextView;

.field private mAppSKLeft:Landroid/view/View;

.field private mAppSKLeftTv:Landroid/widget/TextView;

.field private mAppSKRight:Landroid/view/View;

.field private mAppSKRightTv:Landroid/widget/TextView;

.field private mAppUp:Landroid/view/View;

.field private mAppUpTv:Landroid/widget/TextView;

.field private mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/duoqin/settings/NavKeySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/duoqin/settings/NavKeySettings;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/duoqin/settings/NavKeySettings;->resetData()V

    return-void
.end method

.method private resetData()V
    .locals 4

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_settings_app_up"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090921

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_settings_app_left"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09091f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_settings_app_right"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090920

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_settings_app_sk_left"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090923

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navkey_settings_app_sk_right"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090924

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.navkeysettings.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    invoke-direct {p0}, Lcom/duoqin/settings/NavKeySettings;->updateViews()V

    .line 243
    return-void
.end method

.method private resetSettings()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09092f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/duoqin/settings/NavKeySettings$1;

    invoke-direct {v3, p0}, Lcom/duoqin/settings/NavKeySettings$1;-><init>(Lcom/duoqin/settings/NavKeySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 226
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method

.method private updateViews()V
    .locals 7

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navkey_settings_app_up"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "appComponentUp":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090921

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    :cond_0
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUp:Landroid/view/View;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUpTv:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navkey_settings_app_left"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "appComponentLeft":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09091f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_1
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeft:Landroid/view/View;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeftTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navkey_settings_app_right"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "appComponentRight":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090920

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_2
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRight:Landroid/view/View;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRightTv:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navkey_settings_app_sk_left"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "appComponentSKLeft":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090923

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    :cond_3
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeft:Landroid/view/View;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeftTv:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "navkey_settings_app_sk_right"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "appComponentSKRight":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 126
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090924

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    :cond_4
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRight:Landroid/view/View;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v5, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRightTv:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    if-nez p3, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v1, "ComponentName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 160
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 162
    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    .line 163
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navkey_settings_app_up"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUpTv:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUp:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    :cond_2
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.duoqin.navkeysettings.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :cond_3
    const/4 v1, 0x2

    if-ne v1, p1, :cond_4

    .line 168
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navkey_settings_app_down"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppDownTv:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppDown:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 172
    :cond_4
    const/4 v1, 0x3

    if-ne v1, p1, :cond_5

    .line 173
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navkey_settings_app_left"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeftTv:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeft:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 177
    :cond_5
    const/4 v1, 0x4

    if-ne v1, p1, :cond_6

    .line 178
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navkey_settings_app_right"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRightTv:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRight:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :cond_6
    const/4 v1, 0x5

    if-ne v1, p1, :cond_7

    .line 183
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navkey_settings_app_sk_left"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 185
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeftTv:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeft:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 187
    :cond_7
    const/4 v1, 0x6

    if-ne v1, p1, :cond_2

    .line 188
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "navkey_settings_app_sk_right"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRightTv:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/duoqin/settings/DuoqinUtils;->loadAppLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v1, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRight:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.action.PickApp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "ComponentName"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const v1, 0x7f0b00f1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const v1, 0x7f0b00f4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 144
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 145
    :cond_2
    const v1, 0x7f0b00f5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 146
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 147
    :cond_3
    const v1, 0x7f0b00f7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 148
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 149
    :cond_4
    const v1, 0x7f0b00f9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 150
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f040051

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 48
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    .line 49
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftIcon(I)V

    .line 50
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mFeatureBarHelper:Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    const v1, 0x7f09092e

    invoke-virtual {v0, v1}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->setLeftText(I)V

    .line 52
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUp:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0b00f4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeft:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0b00f5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRight:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeft:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRight:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f0b00f3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppUpTv:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppLeftTv:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0b00f8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppRightTv:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKLeftTv:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAppSKRightTv:Landroid/widget/TextView;

    .line 72
    invoke-direct {p0}, Lcom/duoqin/settings/NavKeySettings;->updateViews()V

    .line 73
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 198
    const/16 v0, 0x52

    if-ne v0, p1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/duoqin/settings/NavKeySettings;->resetSettings()V

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 208
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 211
    :cond_0
    return-void
.end method

.class public Lcom/android/settings/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

.field private final mIsSystemIme:Z

.field private final mIsValidSystemNonAuxAsciiCapableIme:Z

.field private final mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;ZLcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V
    .locals 6
    .param p1, "fragment"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p2, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p3, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p4, "isImeEnabler"    # Z
    .param p5, "onSaveListener"    # Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 90
    iput-object p5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    .line 91
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 92
    if-nez p4, :cond_0

    .line 94
    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 96
    :cond_0
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 97
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 98
    iput-object p3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 99
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 100
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    :cond_1
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "settingsActivity":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    invoke-virtual {p0, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 113
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    .line 114
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 115
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    .line 117
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    .line 118
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    invoke-virtual {p0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    return-void

    .line 109
    .end local v0    # "context":Landroid/content/Context;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/InputMethodPreference;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/InputMethodPreference;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/InputMethodPreference;

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 165
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 166
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 167
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 171
    .local v3, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypeLabel":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private isImeEnabler()Z
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 7
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "chkPref"    # Lcom/android/settings/inputmethod/InputMethodPreference;

    .prologue
    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    :goto_0
    return-void

    .line 196
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$2;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/inputmethod/InputMethodPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$1;-><init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 222
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 9
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 230
    instance-of v8, p1, Lcom/android/settings/inputmethod/InputMethodPreference;

    if-nez v8, :cond_1

    .line 231
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v5

    .line 248
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 233
    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 234
    .local v0, "imp":Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-boolean v8, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    if-eqz v8, :cond_2

    move v1, v5

    .line 235
    .local v1, "priority0":Z
    :goto_1
    iget-boolean v8, v0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    if-eqz v8, :cond_3

    move v2, v5

    .line 236
    .local v2, "priority1":Z
    :goto_2
    if-ne v1, v2, :cond_5

    .line 237
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 238
    .local v3, "t0":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 239
    .local v4, "t1":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 242
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    .line 243
    goto :goto_0

    .end local v1    # "priority0":Z
    .end local v2    # "priority1":Z
    .end local v3    # "t0":Ljava/lang/CharSequence;
    .end local v4    # "t1":Ljava/lang/CharSequence;
    :cond_2
    move v1, v6

    .line 234
    goto :goto_1

    .restart local v1    # "priority0":Z
    :cond_3
    move v2, v6

    .line 235
    goto :goto_2

    .line 245
    .restart local v2    # "priority1":Z
    .restart local v3    # "t0":Ljava/lang/CharSequence;
    .restart local v4    # "t1":Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 248
    .end local v3    # "t0":Ljava/lang/CharSequence;
    .end local v4    # "t1":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v1, :cond_0

    move v5, v7

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method protected onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/preference/PreferenceManager;

    .prologue
    .line 260
    invoke-super {p0, p1}, Landroid/preference/Preference;->onAttachedToHierarchy(Landroid/preference/PreferenceManager;)V

    .line 261
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/preference/Preference;->persistBoolean(Z)Z

    .line 262
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v0, :cond_2

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mOnSaveListener:Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;

    invoke-interface {v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;->onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0, p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v9, 0x1

    .line 317
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v9

    .line 322
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 324
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 325
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-object v4, Lcom/android/settings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    const-string v5, "IME\'s Settings Activity Not Found"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    const v4, 0x7f0904d9

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected releaseIfNeed()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 272
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method public updatePreferenceViews()V
    .locals 4

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v0

    .line 142
    .local v0, "isAlwaysChecked":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->isImeEnabler()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setEnabled(Z)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->isEnabledImi(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

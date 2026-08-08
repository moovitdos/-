.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$localeSet:Ljava/util/TreeSet;


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-gt v0, v5, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    const-string v2, "locale"

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->val$localeSet:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    const-class v0, Lcom/android/settings/UserDictionarySettings;

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 242
    return v5

    .line 238
    :cond_1
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    goto :goto_0
.end method

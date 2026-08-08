.class public Lcom/sprd/settings/timerpower/RepeatPreference;
.super Landroid/preference/ListPreference;
.source "RepeatPreference.java"


# instance fields
.field private mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

.field private mNewDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v2, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 19
    new-instance v2, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-direct {v2, v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v2, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mNewDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 24
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "weekdays":[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v0, v2, [Ljava/lang/String;

    aget-object v2, v1, v5

    aput-object v2, v0, v3

    aget-object v2, v1, v6

    aput-object v2, v0, v4

    aget-object v2, v1, v7

    aput-object v2, v0, v5

    const/4 v2, 0x5

    aget-object v2, v1, v2

    aput-object v2, v0, v6

    const/4 v2, 0x6

    aget-object v2, v1, v2

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const/4 v3, 0x7

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aget-object v3, v1, v4

    aput-object v3, v0, v2

    .line 34
    .local v0, "values":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/timerpower/RepeatPreference;)Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/RepeatPreference;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mNewDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    return-object v0
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mNewDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->set(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    .line 42
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mNewDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v0, v1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->set(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 53
    .local v0, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 55
    .local v1, "entryValues":[Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v2}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/sprd/settings/timerpower/RepeatPreference$1;

    invoke-direct {v3, p0}, Lcom/sprd/settings/timerpower/RepeatPreference$1;-><init>(Lcom/sprd/settings/timerpower/RepeatPreference;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    return-void
.end method

.method public setDaysOfWeek(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V
    .locals 2
    .param p1, "dow"    # Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->set(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    .line 67
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference;->mNewDaysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->set(Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    .line 68
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

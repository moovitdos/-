.class public Lcom/sprd/settings/timerpower/AlarmClock;
.super Landroid/app/Activity;
.source "AlarmClock.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;
    }
.end annotation


# instance fields
.field private mAlarmsList:Landroid/widget/ListView;

.field private mCursor:Landroid/database/Cursor;

.field private mFactory:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/timerpower/AlarmClock;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmClock;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sprd/settings/timerpower/AlarmClock;ZLandroid/widget/ImageView;Lcom/sprd/settings/timerpower/Alarm;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/timerpower/AlarmClock;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sprd/settings/timerpower/AlarmClock;->updateIndicatorAndAlarm(ZLandroid/widget/ImageView;Lcom/sprd/settings/timerpower/Alarm;)V

    return-void
.end method

.method private setSoftKey()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/sprd/android/support/featurebar/FeatureBarHelper;

    invoke-direct {v0, p0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;-><init>(Landroid/app/Activity;)V

    .line 139
    .local v0, "helperBar":Lcom/sprd/android/support/featurebar/FeatureBarHelper;
    invoke-virtual {v0}, Lcom/sprd/android/support/featurebar/FeatureBarHelper;->hideLeft()V

    .line 145
    return-void
.end method

.method private updateIndicatorAndAlarm(ZLandroid/widget/ImageView;Lcom/sprd/settings/timerpower/Alarm;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "bar"    # Landroid/widget/ImageView;
    .param p3, "alarm"    # Lcom/sprd/settings/timerpower/Alarm;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timerpower AlarmClock ========== >>>>> updateIndicatorAndAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 48
    iget v0, p3, Lcom/sprd/settings/timerpower/Alarm;->id:I

    invoke-static {p0, v0, p1}, Lcom/sprd/settings/timerpower/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget v0, p3, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    iget v1, p3, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    iget-object v2, p3, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-static {p0, v0, v1, v2}, Lcom/sprd/settings/timerpower/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/sprd/settings/timerpower/Alarm$DaysOfWeek;)V

    .line 53
    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 2

    .prologue
    .line 126
    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 128
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/AlarmClock;->setSoftKey()V

    .line 129
    const v1, 0x7f0b000d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 130
    new-instance v0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1}, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/sprd/settings/timerpower/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 131
    .local v0, "adapter":Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;
    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 134
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 107
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    .line 108
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 109
    const-string v1, "timerpower AlarmClock ============= mCursor"

    invoke-static {v1}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/sprd/settings/timerpower/AlarmClock;->updateLayout()V

    .line 112
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    invoke-static {}, Lcom/sprd/settings/timerpower/ToastMaster;->cancelToast()V

    .line 152
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 157
    const-string v0, "timerpower AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v1, Lcom/sprd/settings/timerpower/Alarm;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 161
    const v0, 0x7f0b000f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 162
    const v2, 0x7f0b0010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 163
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 165
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sprd/settings/timerpower/AlarmClock;->updateIndicatorAndAlarm(ZLandroid/widget/ImageView;Lcom/sprd/settings/timerpower/Alarm;)V

    .line 172
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sprd/settings/timerpower/SetAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v1, "alarm_id"

    long-to-int v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 177
    const-string v3, "onItemLongClick"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->i(Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    check-cast v3, Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 181
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    const v3, 0x7f0b000f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 184
    .local v2, "indicator":Landroid/view/View;
    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 186
    .local v1, "clockOnOff":Landroid/widget/CheckBox;
    iget-boolean v3, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 187
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->toggle()V

    .line 188
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v0}, Lcom/sprd/settings/timerpower/AlarmClock;->updateIndicatorAndAlarm(ZLandroid/widget/ImageView;Lcom/sprd/settings/timerpower/Alarm;)V

    .line 190
    const/4 v3, 0x1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

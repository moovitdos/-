.class public final Lcom/sprd/settings/timerpower/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;,
        Lcom/sprd/settings/timerpower/Alarm$Columns;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprd/settings/timerpower/Alarm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alert:Landroid/net/Uri;

.field public daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

.field public enabled:Z

.field public hour:I

.field public id:I

.field public label:Ljava/lang/String;

.field public minutes:I

.field public silent:Z

.field public time:J

.field public vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm$1;

    invoke-direct {v0}, Lcom/sprd/settings/timerpower/Alarm$1;-><init>()V

    sput-object v0, Lcom/sprd/settings/timerpower/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v1, -0x1

    iput v1, p0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    .line 226
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 227
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 228
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    .line 229
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    .line 231
    new-instance v1, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v1, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    .line 157
    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    .line 158
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    .line 159
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    .line 160
    new-instance v3, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    const/4 v6, 0x3

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v3, v6}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 161
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 162
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/sprd/settings/timerpower/Alarm;->vibrate:Z

    .line 163
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    .line 164
    const/16 v3, 0x8

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "alertString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v6, p0, Lcom/sprd/settings/timerpower/Alarm;->vibrate:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 174
    const-string v3, "silent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    const-string v3, "Alarm is marked as silent"

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 178
    iput-boolean v4, p0, Lcom/sprd/settings/timerpower/Alarm;->silent:Z

    .line 208
    :cond_0
    :goto_2
    return-void

    .end local v0    # "alertString":Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 157
    goto/16 :goto_0

    :cond_2
    move v3, v5

    .line 162
    goto/16 :goto_1

    .line 180
    .restart local v0    # "alertString":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 181
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timerpower Alarm =====  else alertString :::: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 186
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_data"

    aput-object v3, v2, v5

    .line 187
    .local v2, "data":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "timerpower Alarm =====  else data :::: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 188
    const/4 v1, 0x0

    .line 195
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_4

    .line 203
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "data":[Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    if-nez v3, :cond_0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    .line 215
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sprd/settings/timerpower/Alarm;->vibrate:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/sprd/settings/timerpower/Alarm;->silent:Z

    .line 221
    return-void

    :cond_0
    move v0, v2

    .line 212
    goto :goto_0

    :cond_1
    move v0, v2

    .line 217
    goto :goto_1

    :cond_2
    move v1, v2

    .line 220
    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-boolean v0, p0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm;->hour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/sprd/settings/timerpower/Alarm;->minutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/sprd/settings/timerpower/Alarm;->daysOfWeek:Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-wide v3, p0, Lcom/sprd/settings/timerpower/Alarm;->time:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-boolean v0, p0, Lcom/sprd/settings/timerpower/Alarm;->vibrate:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sprd/settings/timerpower/Alarm;->alert:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 47
    iget-boolean v0, p0, Lcom/sprd/settings/timerpower/Alarm;->silent:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void

    :cond_0
    move v0, v2

    .line 39
    goto :goto_0

    :cond_1
    move v0, v2

    .line 44
    goto :goto_1

    :cond_2
    move v1, v2

    .line 47
    goto :goto_2
.end method

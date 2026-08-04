.class Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;
.super Ljava/lang/Object;
.source "HebrewDatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;


# direct methods
.method constructor <init>(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 12
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 153
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$000(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V

    .line 154
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    iget-object v8, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v8}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$100(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 156
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildHebrewDateImpl(Ljava/util/Calendar;)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v6

    .line 157
    .local v6, "tempHebrewDate":Lcom/duoqin/calendar/hebrew/HDate;
    if-nez v6, :cond_0

    .line 199
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-interface {v6}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v2

    .line 159
    .local v2, "hebrewYear":I
    invoke-interface {v6}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v1

    .line 160
    .local v1, "hebrewMonth":I
    invoke-interface {v6}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v0

    .line 161
    .local v0, "hebrewDay":I
    sget-object v7, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->INSTANCE:Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;

    invoke-virtual {v7, v2, v1}, Lcom/duoqin/calendar/hebrew/impl/HebrewCalendar;->monthLength(II)I

    move-result v3

    .line 162
    .local v3, "monthLength":I
    invoke-static {}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onValueChange: hebrewYear "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hebrewMonth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hebrewDay = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", monthLength = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onValueChange: oldVal "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newVal = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$400(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v7

    if-ne p1, v7, :cond_4

    .line 167
    if-ne p2, v3, :cond_2

    const/4 v7, 0x1

    if-ne p3, v7, :cond_2

    .line 168
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 194
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    iget-object v8, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v8}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v9}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v10}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v7, v8, v9, v10}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$700(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;III)V

    .line 196
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$800(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V

    .line 197
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$900(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V

    .line 198
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$1000(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)V

    goto/16 :goto_0

    .line 169
    :cond_2
    const/4 v7, 0x1

    if-ne p2, v7, :cond_3

    if-ne p3, v3, :cond_3

    .line 170
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 172
    :cond_3
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    sub-int v9, p3, p2

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 174
    :cond_4
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$500(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v7

    if-ne p1, v7, :cond_5

    .line 175
    invoke-static {v2, p3, v0}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildGregorianDateImpl(III)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v4

    .line 176
    .local v4, "newMonthGreDate":Lcom/duoqin/calendar/hebrew/HDate;
    if-eqz v4, :cond_1

    .line 177
    invoke-static {}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onValueChange: newMonthGreDate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v4}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 179
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v4}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 180
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {v4}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 182
    .end local v4    # "newMonthGreDate":Lcom/duoqin/calendar/hebrew/HDate;
    :cond_5
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$600(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Landroid/widget/NumberPicker;

    move-result-object v7

    if-ne p1, v7, :cond_6

    .line 183
    invoke-static {p3, v1, v0}, Lcom/duoqin/calendar/hebrew/HebrewCalendarConvertUtil;->buildGregorianDateImpl(III)Lcom/duoqin/calendar/hebrew/HDate;

    move-result-object v5

    .line 184
    .local v5, "newYearGreDate":Lcom/duoqin/calendar/hebrew/HDate;
    if-eqz v5, :cond_1

    .line 185
    invoke-static {}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onValueChange: newYearGreDate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5}, Lcom/duoqin/calendar/hebrew/HDate;->getYear()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 187
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v5}, Lcom/duoqin/calendar/hebrew/HDate;->getMonth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 188
    iget-object v7, p0, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker$1;->this$0:Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;

    invoke-static {v7}, Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;->access$200(Lcom/duoqin/calendar/hebrew/datepicker/HebrewDatePicker;)Ljava/util/Calendar;

    move-result-object v7

    const/4 v8, 0x5

    invoke-interface {v5}, Lcom/duoqin/calendar/hebrew/HDate;->getDay()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_1

    .line 191
    .end local v5    # "newYearGreDate":Lcom/duoqin/calendar/hebrew/HDate;
    :cond_6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7
.end method

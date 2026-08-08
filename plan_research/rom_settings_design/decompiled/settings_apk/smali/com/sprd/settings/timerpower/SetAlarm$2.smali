.class Lcom/sprd/settings/timerpower/SetAlarm$2;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/timerpower/SetAlarm;->setTimePickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/timerpower/SetAlarm;

.field final synthetic val$timePicker:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Lcom/sprd/settings/timerpower/SetAlarm;Landroid/widget/TimePicker;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sprd/settings/timerpower/SetAlarm$2;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    iput-object p2, p0, Lcom/sprd/settings/timerpower/SetAlarm$2;->val$timePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 281
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 283
    iget-object v0, p0, Lcom/sprd/settings/timerpower/SetAlarm$2;->this$0:Lcom/sprd/settings/timerpower/SetAlarm;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/SetAlarm$2;->val$timePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Lcom/sprd/settings/timerpower/SetAlarm$2;->val$timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sprd/settings/timerpower/SetAlarm$2;->val$timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sprd/settings/timerpower/SetAlarm;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 288
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 285
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

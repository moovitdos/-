.class Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;
.super Landroid/widget/CursorAdapter;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/timerpower/AlarmClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTimeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/timerpower/AlarmClock;


# direct methods
.method public constructor <init>(Lcom/sprd/settings/timerpower/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/sprd/settings/timerpower/AlarmClock;

    .line 57
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 58
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 66
    new-instance v0, Lcom/sprd/settings/timerpower/Alarm;

    iget-object v4, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/sprd/settings/timerpower/AlarmClock;

    invoke-direct {v0, v4, p3}, Lcom/sprd/settings/timerpower/Alarm;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 68
    .local v0, "alarm":Lcom/sprd/settings/timerpower/Alarm;
    const v4, 0x7f0b000f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "indicator":Landroid/view/View;
    const v4, 0x7f0b0010

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 73
    .local v1, "clockOnOff":Landroid/widget/CheckBox;
    iget-boolean v4, v0, Lcom/sprd/settings/timerpower/Alarm;->enabled:Z

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 76
    new-instance v4, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;-><init>(Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;Landroid/widget/CheckBox;Lcom/sprd/settings/timerpower/Alarm;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timerpower AlarmClock -------------------- >>>>>>>>>>>>>>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sprd/settings/timerpower/Log;->v(Ljava/lang/String;)V

    .line 84
    const v4, 0x7f0b000e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    .local v3, "powerOnOff":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/sprd/settings/timerpower/Alarm;->label:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const v4, 0x7f090820

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    const v4, 0x7f090821

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/sprd/settings/timerpower/AlarmClock;

    invoke-static {v1}, Lcom/sprd/settings/timerpower/AlarmClock;->access$000(Lcom/sprd/settings/timerpower/AlarmClock;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "ret":Landroid/view/View;
    return-object v0
.end method

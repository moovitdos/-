.class Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;

.field final synthetic val$alarm:Lcom/sprd/settings/timerpower/Alarm;

.field final synthetic val$clockOnOff:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;Landroid/widget/CheckBox;Lcom/sprd/settings/timerpower/Alarm;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;

    iput-object p2, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->val$clockOnOff:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/sprd/settings/timerpower/Alarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->val$clockOnOff:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    .line 79
    iget-object v0, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;

    iget-object v0, v0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/sprd/settings/timerpower/AlarmClock;

    iget-object v1, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->val$clockOnOff:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sprd/settings/timerpower/AlarmClock$AlarmTimeAdapter$1;->val$alarm:Lcom/sprd/settings/timerpower/Alarm;

    invoke-static {v0, v1, v2, v3}, Lcom/sprd/settings/timerpower/AlarmClock;->access$100(Lcom/sprd/settings/timerpower/AlarmClock;ZLandroid/widget/ImageView;Lcom/sprd/settings/timerpower/Alarm;)V

    .line 81
    return-void
.end method

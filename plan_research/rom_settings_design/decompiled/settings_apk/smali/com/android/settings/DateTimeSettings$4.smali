.class Lcom/android/settings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->setDateListener(Landroid/app/DatePickerDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;

.field final synthetic val$datePicker:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;Landroid/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 675
    const-string v0, "DateTimeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "date keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " year = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " month = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " date = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/16 v0, 0x17

    if-ne p2, v0, :cond_2

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$4;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/DateTimeSettings;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 678
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 682
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 679
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 680
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

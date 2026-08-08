.class Lcom/sprd/settings/timerpower/RepeatPreference$1;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/timerpower/RepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/settings/timerpower/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/sprd/settings/timerpower/RepeatPreference;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sprd/settings/timerpower/RepeatPreference$1;->this$0:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprd/settings/timerpower/RepeatPreference$1;->this$0:Lcom/sprd/settings/timerpower/RepeatPreference;

    invoke-static {v0}, Lcom/sprd/settings/timerpower/RepeatPreference;->access$000(Lcom/sprd/settings/timerpower/RepeatPreference;)Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/sprd/settings/timerpower/Alarm$DaysOfWeek;->set(IZ)V

    .line 61
    return-void
.end method

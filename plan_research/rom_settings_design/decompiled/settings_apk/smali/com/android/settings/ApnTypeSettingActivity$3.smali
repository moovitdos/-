.class Lcom/android/settings/ApnTypeSettingActivity$3;
.super Ljava/lang/Object;
.source "ApnTypeSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnTypeSettingActivity;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnTypeSettingActivity;

.field final synthetic val$apnType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings/ApnTypeSettingActivity$3;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    iput-object p2, p0, Lcom/android/settings/ApnTypeSettingActivity$3;->val$apnType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/ApnTypeSettingActivity$3;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    iget-object v1, p0, Lcom/android/settings/ApnTypeSettingActivity$3;->val$apnType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/ApnTypeSettingActivity;->access$400(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V

    .line 171
    return-void
.end method

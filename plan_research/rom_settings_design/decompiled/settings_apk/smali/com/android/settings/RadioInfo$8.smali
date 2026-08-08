.class Lcom/android/settings/RadioInfo$8;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 980
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 986
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.FdnList"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string v1, "phone_id"

    iget-object v2, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2}, Lcom/android/settings/RadioInfo;->access$3200(Lcom/android/settings/RadioInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    iget-object v1, p0, Lcom/android/settings/RadioInfo$8;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 991
    const/4 v1, 0x1

    return v1
.end method

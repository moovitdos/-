.class Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;
.super Ljava/lang/Object;
.source "LauncherSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/settings/LauncherSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 182
    iget-object p1, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$000(Lcom/sprd/classichome/settings/LauncherSettingsActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;

    .line 183
    iget-object p2, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->key:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 184
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    invoke-static {p2, p3}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$102(Lcom/sprd/classichome/settings/LauncherSettingsActivity;I)I

    .line 185
    iget-object p2, p0, Lcom/sprd/classichome/settings/LauncherSettingsActivity$1;->this$0:Lcom/sprd/classichome/settings/LauncherSettingsActivity;

    iget-object p1, p1, Lcom/sprd/classichome/settings/LauncherSettingsActivity$SettingItem;->key:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/sprd/classichome/settings/LauncherSettingsActivity;->access$200(Lcom/sprd/classichome/settings/LauncherSettingsActivity;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

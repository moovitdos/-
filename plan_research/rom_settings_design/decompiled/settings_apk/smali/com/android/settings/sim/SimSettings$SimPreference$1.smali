.class Lcom/android/settings/sim/SimSettings$SimPreference$1;
.super Ljava/lang/Object;
.source "SimSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimSettings$SimPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/sim/SimSettings$SimPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings$SimPreference;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 794
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$1700(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/sim/SimSettings;->access$600(Lcom/android/settings/sim/SimSettings;I)Z

    move-result v0

    .line 795
    .local v0, "standby":Z
    if-eq v0, p2, :cond_0

    .line 796
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    iget-object v1, v1, Lcom/android/settings/sim/SimSettings$SimPreference;->this$0:Lcom/android/settings/sim/SimSettings;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings$SimPreference$1;->this$1:Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$1700(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/android/settings/sim/SimSettings;->access$1000(Lcom/android/settings/sim/SimSettings;IZ)V

    .line 798
    :cond_0
    return-void
.end method

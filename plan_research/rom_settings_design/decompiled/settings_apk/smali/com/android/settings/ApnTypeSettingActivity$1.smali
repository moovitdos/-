.class Lcom/android/settings/ApnTypeSettingActivity$1;
.super Ljava/lang/Object;
.source "ApnTypeSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnTypeSettingActivity;->initApnlist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnTypeSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnTypeSettingActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/ApnTypeSettingActivity$1;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/ApnTypeSettingActivity$1;->this$0:Lcom/android/settings/ApnTypeSettingActivity;

    invoke-static {v0}, Lcom/android/settings/ApnTypeSettingActivity;->access$000(Lcom/android/settings/ApnTypeSettingActivity;)Lcom/android/settings/ApnEditorAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/ApnEditorAdapter;->setApnChecked(Landroid/view/View;I)V

    .line 63
    return-void
.end method

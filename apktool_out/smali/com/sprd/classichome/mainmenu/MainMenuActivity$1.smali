.class Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;
.super Ljava/lang/Object;
.source "MainMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/classichome/mainmenu/MainMenuActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprd/classichome/mainmenu/MainMenuActivity;


# direct methods
.method constructor <init>(Lcom/sprd/classichome/mainmenu/MainMenuActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;->this$0:Lcom/sprd/classichome/mainmenu/MainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sprd/classichome/mainmenu/MainMenuActivity$1;->this$0:Lcom/sprd/classichome/mainmenu/MainMenuActivity;

    invoke-static {v0}, Lcom/sprd/classichome/mainmenu/MainMenuActivity;->access$000(Lcom/sprd/classichome/mainmenu/MainMenuActivity;)Landroid/widget/GridView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 71
    return-void
.end method

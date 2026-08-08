.class public final Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/sim/SimListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public colorImage:Landroid/widget/RelativeLayout;

.field public name:Landroid/widget/TextView;

.field public number:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprd/settings/sim/SimListAdapter;

.field public viewBtn:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/sprd/settings/sim/SimListAdapter;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sprd/settings/sim/SimListAdapter$ViewHolder;->this$0:Lcom/sprd/settings/sim/SimListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

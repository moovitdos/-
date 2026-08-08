.class public final Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DataListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/settings/sim/DataListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public colorImage:Landroid/widget/RelativeLayout;

.field public name:Landroid/widget/TextView;

.field public number:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sprd/settings/sim/DataListAdapter;

.field public viewBtn:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/sprd/settings/sim/DataListAdapter;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sprd/settings/sim/DataListAdapter$ViewHolder;->this$0:Lcom/sprd/settings/sim/DataListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

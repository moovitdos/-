.class Lcom/duoqin/settings/AppPickerActivity$Holder;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoqin/settings/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/duoqin/settings/AppPickerActivity;

.field titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/duoqin/settings/AppPickerActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/duoqin/settings/AppPickerActivity$Holder;->this$0:Lcom/duoqin/settings/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoqin/settings/AppPickerActivity;Lcom/duoqin/settings/AppPickerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/duoqin/settings/AppPickerActivity;
    .param p2, "x1"    # Lcom/duoqin/settings/AppPickerActivity$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/duoqin/settings/AppPickerActivity$Holder;-><init>(Lcom/duoqin/settings/AppPickerActivity;)V

    return-void
.end method

.class Lcom/duoqin/settings/NavKeySettings$1;
.super Ljava/lang/Object;
.source "NavKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoqin/settings/NavKeySettings;->resetSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoqin/settings/NavKeySettings;


# direct methods
.method constructor <init>(Lcom/duoqin/settings/NavKeySettings;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/duoqin/settings/NavKeySettings$1;->this$0:Lcom/duoqin/settings/NavKeySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/duoqin/settings/NavKeySettings$1;->this$0:Lcom/duoqin/settings/NavKeySettings;

    invoke-static {v0}, Lcom/duoqin/settings/NavKeySettings;->access$000(Lcom/duoqin/settings/NavKeySettings;)V

    .line 221
    return-void
.end method

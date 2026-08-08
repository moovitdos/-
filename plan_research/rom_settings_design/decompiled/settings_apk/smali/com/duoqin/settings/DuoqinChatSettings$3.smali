.class Lcom/duoqin/settings/DuoqinChatSettings$3;
.super Ljava/lang/Object;
.source "DuoqinChatSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoqin/settings/DuoqinChatSettings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoqin/settings/DuoqinChatSettings;


# direct methods
.method constructor <init>(Lcom/duoqin/settings/DuoqinChatSettings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/duoqin/settings/DuoqinChatSettings$3;->this$0:Lcom/duoqin/settings/DuoqinChatSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 76
    iget-object v1, p0, Lcom/duoqin/settings/DuoqinChatSettings$3;->this$0:Lcom/duoqin/settings/DuoqinChatSettings;

    invoke-static {v1}, Lcom/duoqin/settings/DuoqinChatSettings;->access$100(Lcom/duoqin/settings/DuoqinChatSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "duoqin_chat"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoqin.duoqinchat.Binding"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/duoqin/settings/DuoqinChatSettings$3;->this$0:Lcom/duoqin/settings/DuoqinChatSettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

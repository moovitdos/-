.class Lcom/android/settings/wifi/WifiAPITest$3;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 145
    .local v1, "value":Landroid/text/Editable;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiAPITest;->access$002(Lcom/android/settings/wifi/WifiAPITest;I)I

    .line 146
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiAPITest;->access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiAPITest;->access$000(Lcom/android/settings/wifi/WifiAPITest;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPITest$3;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0908cd

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

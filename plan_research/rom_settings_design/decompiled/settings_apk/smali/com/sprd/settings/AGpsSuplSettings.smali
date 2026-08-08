.class public Lcom/sprd/settings/AGpsSuplSettings;
.super Landroid/app/Activity;
.source "AGpsSuplSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private loc_manager:Landroid/location/LocationManager;

.field private supl_clear:Landroid/widget/Button;

.field private supl_port:Landroid/widget/EditText;

.field private supl_save:Landroid/widget/Button;

.field private supl_server:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const-string v0, "GpsSettingsActivity"

    iput-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 76
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 69
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget-object v3, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_server:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "supl_addr":Ljava/lang/String;
    iget-object v3, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_port:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "strPort":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 52
    :cond_0
    const-string v3, "please input valid supl server address and port number"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v3, p0, Lcom/sprd/settings/AGpsSuplSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "supl_addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supl_addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "retIntent":Landroid/content/Intent;
    const-string v3, "supl_svr"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v3, "supl_port"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 63
    .end local v0    # "retIntent":Landroid/content/Intent;
    .end local v1    # "strPort":Ljava/lang/String;
    .end local v2    # "supl_addr":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_server:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v3, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_port:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 32
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_server:Landroid/widget/EditText;

    .line 33
    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_port:Landroid/widget/EditText;

    .line 34
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_save:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_clear:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_save:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->supl_clear:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/sprd/settings/AGpsSuplSettings;->loc_manager:Landroid/location/LocationManager;

    .line 40
    return-void
.end method

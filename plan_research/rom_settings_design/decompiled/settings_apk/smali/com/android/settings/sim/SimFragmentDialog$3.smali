.class Lcom/android/settings/sim/SimFragmentDialog$3;
.super Ljava/lang/Object;
.source "SimFragmentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/sim/SimFragmentDialog;->createEditDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimFragmentDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimFragmentDialog;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 349
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    iget-object v7, v7, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v8, 0x7f0b00ed

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 351
    .local v3, "nameText":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 354
    .local v2, "isEmpty":Z
    if-eqz v2, :cond_0

    .line 355
    const-string v7, "SimPreferenceDialog"

    const-string v8, "user input displayname is null."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v8}, Lcom/android/settings/sim/SimFragmentDialog;->access$200(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/Sim;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sim/Sim;->getPhoneId()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    :cond_0
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$200(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/Sim;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sim/Sim;->getPhoneId()I

    move-result v5

    .line 360
    .local v5, "phoneId":I
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$200(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/Sim;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/sim/Sim;->setName(Ljava/lang/String;)V

    .line 361
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$300(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/SimManager;

    move-result-object v8

    if-eqz v2, :cond_2

    const/4 v7, 0x2

    :goto_0
    invoke-virtual {v8, v5, v0, v7}, Landroid/sim/SimManager;->setName(ILjava/lang/String;I)V

    .line 370
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    iget-object v7, v7, Lcom/android/settings/sim/SimFragmentDialog;->mDialogLayout:Landroid/view/View;

    const v8, 0x7f0b00f0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 371
    .local v4, "numberText":Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "displayNumber":Ljava/lang/String;
    const-string v7, "SimPreferenceDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "displayNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " phoneId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eqz v1, :cond_1

    .line 374
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$400(Lcom/android/settings/sim/SimFragmentDialog;)[Landroid/telephony/TelephonyManager;

    move-result-object v7

    aget-object v7, v7, v5

    const-string v8, "phoneNumber"

    invoke-virtual {v7, v8, v1}, Landroid/telephony/TelephonyManager;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$200(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/Sim;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/sim/Sim;->setNumber(Ljava/lang/String;)V

    .line 376
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$300(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/SimManager;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Landroid/sim/SimManager;->setNumber(ILjava/lang/String;)V

    .line 377
    iget-object v7, p0, Lcom/android/settings/sim/SimFragmentDialog$3;->this$0:Lcom/android/settings/sim/SimFragmentDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$300(Lcom/android/settings/sim/SimFragmentDialog;)Landroid/sim/SimManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/sim/SimManager;->getSimById(I)Landroid/sim/Sim;

    move-result-object v6

    .line 378
    .local v6, "subInfo":Landroid/sim/Sim;
    if-eqz v6, :cond_1

    .line 379
    invoke-virtual {v6, v1}, Landroid/sim/Sim;->setNumber(Ljava/lang/String;)V

    .line 384
    .end local v6    # "subInfo":Landroid/sim/Sim;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 385
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/sim/SimFragmentDialog;->access$102(Lcom/android/settings/sim/SimFragmentDialog;)Lcom/android/settings/sim/SimFragmentDialog;

    .line 386
    return-void

    .line 361
    .end local v1    # "displayNumber":Ljava/lang/String;
    .end local v4    # "numberText":Landroid/widget/EditText;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

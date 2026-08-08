.class Lcom/sprd/settings/sim/SimInfoSetActivity$2;
.super Ljava/lang/Object;
.source "SimInfoSetActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprd/settings/sim/SimInfoSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private editStart:I

.field private mEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;


# direct methods
.method constructor <init>(Lcom/sprd/settings/sim/SimInfoSetActivity;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->this$0:Lcom/sprd/settings/sim/SimInfoSetActivity;

    invoke-static {v0}, Lcom/sprd/settings/sim/SimInfoSetActivity;->access$100(Lcom/sprd/settings/sim/SimInfoSetActivity;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method private calculateLength(Ljava/lang/CharSequence;)I
    .locals 6
    .param p1, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    const-wide/16 v1, 0x0

    .line 166
    .local v1, "len":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 167
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 168
    .local v3, "tmp":I
    if-lez v3, :cond_0

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_0

    .line 169
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v4

    .line 166
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v4

    goto :goto_1

    .line 174
    .end local v3    # "tmp":I
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->editStart:I

    .line 154
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->calculateLength(Ljava/lang/CharSequence;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 156
    iget v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->editStart:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->editStart:I

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 157
    iget v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->editStart:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->editStart:I

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->mEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->editStart:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 161
    iget-object v0, p0, Lcom/sprd/settings/sim/SimInfoSetActivity$2;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 150
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 147
    return-void
.end method

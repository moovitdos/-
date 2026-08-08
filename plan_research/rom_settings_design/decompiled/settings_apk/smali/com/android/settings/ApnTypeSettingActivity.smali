.class public Lcom/android/settings/ApnTypeSettingActivity;
.super Landroid/app/Activity;
.source "ApnTypeSettingActivity.java"


# instance fields
.field private confirmDialog:Landroid/app/AlertDialog;

.field private mAdapter:Lcom/android/settings/ApnEditorAdapter;

.field mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ApnTypeSettingActivity;->confirmDialog:Landroid/app/AlertDialog;

    .line 100
    new-instance v0, Lcom/android/settings/ApnTypeSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnTypeSettingActivity$2;-><init>(Lcom/android/settings/ApnTypeSettingActivity;)V

    iput-object v0, p0, Lcom/android/settings/ApnTypeSettingActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApnTypeSettingActivity;)Lcom/android/settings/ApnEditorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnTypeSettingActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ApnTypeSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnTypeSettingActivity;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/ApnTypeSettingActivity;->getApnString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnTypeSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/ApnTypeSettingActivity;->checkEdit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnTypeSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/ApnTypeSettingActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnTypeSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/ApnTypeSettingActivity;->createNewApnType(Ljava/lang/String;)V

    return-void
.end method

.method private checkEdit(Ljava/lang/String;)Z
    .locals 13
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f090952

    const/4 v10, 0x0

    .line 217
    iget-object v11, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    invoke-virtual {v11}, Lcom/android/settings/ApnEditorAdapter;->getOrigArray()Ljava/util/ArrayList;

    move-result-object v1

    .line 218
    .local v1, "apnOrigList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    invoke-virtual {v11}, Lcom/android/settings/ApnEditorAdapter;->getFullArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 219
    .local v0, "apnFullList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "editString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 224
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "editArray":[Ljava/lang/String;
    array-length v11, v4

    if-nez v11, :cond_0

    .line 226
    invoke-direct {p0, v12}, Lcom/android/settings/ApnTypeSettingActivity;->showToast(I)V

    .line 251
    .end local v4    # "editArray":[Ljava/lang/String;
    :goto_0
    return v10

    .line 229
    .restart local v4    # "editArray":[Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v3, v2, v7

    .line 230
    .local v3, "edit":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 231
    invoke-direct {p0, v12}, Lcom/android/settings/ApnTypeSettingActivity;->showToast(I)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 234
    const v11, 0x7f09094f

    invoke-direct {p0, v11}, Lcom/android/settings/ApnTypeSettingActivity;->showToast(I)V

    goto :goto_0

    .line 229
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 238
    .end local v3    # "edit":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v11, v4

    if-ge v6, v11, :cond_6

    .line 239
    add-int/lit8 v8, v6, 0x1

    .local v8, "j":I
    :goto_3
    array-length v11, v4

    if-ge v8, v11, :cond_5

    .line 240
    aget-object v11, v4, v6

    aget-object v12, v4, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 241
    const v11, 0x7f090953

    invoke-direct {p0, v11}, Lcom/android/settings/ApnTypeSettingActivity;->showToast(I)V

    goto :goto_0

    .line 239
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 238
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 247
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "editArray":[Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "i$":I
    .end local v8    # "j":I
    .end local v9    # "len$":I
    :cond_6
    const-string v11, ""

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 248
    const v11, 0x7f090954

    invoke-direct {p0, v11}, Lcom/android/settings/ApnTypeSettingActivity;->showToast(I)V

    goto :goto_0

    .line 251
    :cond_7
    const/4 v10, 0x1

    goto :goto_0
.end method

.method private createNewApnType(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/ApnEditor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v2, "apn_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 161
    return-void
.end method

.method private getApnString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0081

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "apnArray":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    invoke-virtual {v6}, Lcom/android/settings/ApnEditorAdapter;->getEntries()Ljava/util/HashMap;

    move-result-object v1

    .line 192
    .local v1, "apnMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 193
    aget-object v6, v0, v5

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 194
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v6, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 198
    iget-object v6, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "editInputString":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .end local v4    # "editInputString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "builderLast":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 207
    .end local v3    # "builderLast":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private initEdit()V
    .locals 15

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 69
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 70
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v12, "apn_type"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "apnType":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "apnArray":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v9, "judgeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v6, "editBuilder":Ljava/lang/StringBuilder;
    move-object v3, v0

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v10, :cond_3

    aget-object v1, v3, v7

    .line 75
    .local v1, "apnString":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    invoke-virtual {v12, v1}, Lcom/android/settings/ApnEditorAdapter;->getPositionByText(Ljava/lang/String;)I

    move-result v11

    .line 76
    .local v11, "position":I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 77
    if-eqz v9, :cond_0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_0
    iget-object v12, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    iget-object v12, v12, Lcom/android/settings/ApnEditorAdapter;->isSelected:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 82
    :cond_2
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090366

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 88
    .end local v1    # "apnString":Ljava/lang/String;
    .end local v11    # "position":I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 89
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "comma":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    :cond_4
    iget-object v12, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v12, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 97
    .end local v5    # "comma":Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    const v13, 0x7f09094e

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setHint(I)V

    .line 98
    return-void
.end method

.method private setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v6, 0x0

    .line 259
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 260
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v4, 0x0

    .line 265
    .local v4, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 266
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 268
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 269
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 272
    .end local v2    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 274
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 275
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090385

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 166
    const v1, 0x7f090950

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 167
    const v1, 0x7f090478

    new-instance v2, Lcom/android/settings/ApnTypeSettingActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/ApnTypeSettingActivity$3;-><init>(Lcom/android/settings/ApnTypeSettingActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 173
    const v1, 0x7f0900f6

    new-instance v2, Lcom/android/settings/ApnTypeSettingActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/ApnTypeSettingActivity$4;-><init>(Lcom/android/settings/ApnTypeSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    iget-object v1, p0, Lcom/android/settings/ApnTypeSettingActivity;->confirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/ApnTypeSettingActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ApnTypeSettingActivity;->confirmDialog:Landroid/app/AlertDialog;

    .line 184
    iget-object v1, p0, Lcom/android/settings/ApnTypeSettingActivity;->confirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 185
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 211
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    return-void
.end method


# virtual methods
.method public initApnlist()V
    .locals 4

    .prologue
    .line 44
    const v3, 0x7f040006

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 45
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 46
    .local v0, "apnListView":Landroid/widget/ListView;
    new-instance v3, Lcom/android/settings/ApnEditorAdapter;

    invoke-direct {v3, p0}, Lcom/android/settings/ApnEditorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    .line 47
    const v3, 0x7f0b0012

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/ApnTypeSettingActivity;->mEditText:Landroid/widget/EditText;

    .line 48
    const v3, 0x7f0b0013

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 49
    .local v2, "okButton":Landroid/widget/Button;
    const v3, 0x7f0b0014

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 50
    .local v1, "cancelButton":Landroid/widget/Button;
    iget-object v3, p0, Lcom/android/settings/ApnTypeSettingActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v3, p0, Lcom/android/settings/ApnTypeSettingActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v3, p0, Lcom/android/settings/ApnTypeSettingActivity;->mAdapter:Lcom/android/settings/ApnEditorAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 54
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 55
    invoke-direct {p0, v0}, Lcom/android/settings/ApnTypeSettingActivity;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 57
    new-instance v3, Lcom/android/settings/ApnTypeSettingActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ApnTypeSettingActivity$1;-><init>(Lcom/android/settings/ApnTypeSettingActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/ApnTypeSettingActivity;->initApnlist()V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f09094d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/ApnTypeSettingActivity;->initEdit()V

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    .line 128
    const-string v3, "ApnTypeSettingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown() keycode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sparse-switch p1, :sswitch_data_0

    .line 150
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 131
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ApnTypeSettingActivity;->getApnString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "apnType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings/ApnTypeSettingActivity;->checkEdit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const-string v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_1

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v6, :cond_2

    :cond_1
    move v1, v2

    .line 137
    .local v1, "defaultapnType":Z
    :cond_2
    if-nez v1, :cond_3

    .line 138
    invoke-direct {p0, v0}, Lcom/android/settings/ApnTypeSettingActivity;->showDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/settings/ApnTypeSettingActivity;->createNewApnType(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "defaultapnType":Z
    :sswitch_1
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

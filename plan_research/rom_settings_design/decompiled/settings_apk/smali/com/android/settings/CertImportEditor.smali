.class public Lcom/android/settings/CertImportEditor;
.super Landroid/app/ListActivity;
.source "CertImportEditor.java"


# instance fields
.field externalStoragePath:Ljava/lang/String;

.field mActionBar:Landroid/app/ActionBar;

.field private mCurrentDir:Ljava/io/File;

.field private mOnlyAdapter:Lcom/android/settings/CertFileListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    const-string v0, "/storage/"

    iput-object v0, p0, Lcom/android/settings/CertImportEditor;->externalStoragePath:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/CertImportEditor;->externalStoragePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CertImportEditor;->mActionBar:Landroid/app/ActionBar;

    .line 90
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    const-string v0, "/storage/"

    iput-object v0, p0, Lcom/android/settings/CertImportEditor;->externalStoragePath:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getInternalStoragePath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/CertImportEditor;->externalStoragePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    .line 100
    new-instance v0, Lcom/android/settings/CertFileListAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/CertFileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/CertImportEditor;->mOnlyAdapter:Lcom/android/settings/CertFileListAdapter;

    .line 101
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mOnlyAdapter:Lcom/android/settings/CertFileListAdapter;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/settings/CertImportEditor;->externalStoragePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/CertFileListAdapter;->sortImpl(Ljava/io/File;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mOnlyAdapter:Lcom/android/settings/CertFileListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/CertImportEditor;->updateTitle()V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_0

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 152
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 154
    iget-object v3, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "currentFileName":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/CertImportEditor;->updateListView()V

    .line 161
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/settings/CertFileListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/settings/CertFileListAdapter;->getItemIndex(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "index":I
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 164
    const/4 v3, 0x1

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/CertFileListAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/settings/CertFileListAdapter$ViewHolder;->filename:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "itemStr":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 130
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/CertImportEditor;->updateListView()V

    .line 135
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.credentials.INSTALL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "Settings_isFromSettings"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v3, "Settings_CertFilePath"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public updateListView()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mOnlyAdapter:Lcom/android/settings/CertFileListAdapter;

    iget-object v1, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/settings/CertFileListAdapter;->sortImpl(Ljava/io/File;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/CertImportEditor;->updateTitle()V

    .line 111
    return-void
.end method

.method public updateTitle()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0900f8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CertImportEditor;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/settings/CertImportEditor;->mCurrentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

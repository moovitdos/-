.class public Lcom/sprd/settings/LocationAgpsLogShow;
.super Landroid/app/Activity;
.source "LocationAgpsLogShow.java"


# instance fields
.field private mBuffer:Ljava/lang/StringBuilder;

.field mFileObserver:Landroid/os/FileObserver;

.field private mHandler:Landroid/os/Handler;

.field mRaf:Ljava/io/RandomAccessFile;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mBuffer:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Lcom/sprd/settings/LocationAgpsLogShow$1;

    invoke-direct {v0, p0}, Lcom/sprd/settings/LocationAgpsLogShow$1;-><init>(Lcom/sprd/settings/LocationAgpsLogShow;)V

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/sprd/settings/LocationAgpsLogShow$2;

    const-string v1, "/data/agps.log"

    invoke-direct {v0, p0, v1}, Lcom/sprd/settings/LocationAgpsLogShow$2;-><init>(Lcom/sprd/settings/LocationAgpsLogShow;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mFileObserver:Landroid/os/FileObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sprd/settings/LocationAgpsLogShow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsLogShow;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sprd/settings/LocationAgpsLogShow;->deleteLogContent()V

    return-void
.end method

.method static synthetic access$100(Lcom/sprd/settings/LocationAgpsLogShow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsLogShow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sprd/settings/LocationAgpsLogShow;)V
    .locals 0
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsLogShow;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sprd/settings/LocationAgpsLogShow;->getAgpsLog()V

    return-void
.end method

.method static synthetic access$300(Lcom/sprd/settings/LocationAgpsLogShow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sprd/settings/LocationAgpsLogShow;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteLogContent()V
    .locals 6

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    const-string v3, "/data/agps.log"

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mBuffer:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 143
    iget-object v3, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mRaf:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    move-object v1, v2

    .line 153
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_1
    throw v3

    .line 149
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_3

    .line 146
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_2

    .line 144
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_1

    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :cond_2
    move-object v1, v2

    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local v1    # "pw":Ljava/io/PrintWriter;
    goto :goto_0
.end method

.method private getAgpsLog()V
    .locals 5

    .prologue
    .line 175
    :try_start_0
    const-string v0, ""

    .line 176
    .local v0, "content":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v2, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mBuffer:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 180
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    iget-object v2, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 179
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v2, "LocationAgpsLogShow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buffer string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 182
    .end local v0    # "content":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "SavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f050034

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 68
    const v1, 0x7f0b0243

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mTextView:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 71
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/data/agps.log"

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mRaf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 76
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 105
    const v0, 0x7f0906cb

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 163
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    .line 164
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mRaf:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mRaf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    const-string v1, "LocationAgpsLogShow"

    const-string v2, "onOptionsItemSelected default "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 124
    :pswitch_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 126
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 117
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 115
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 100
    iget-object v1, p0, Lcom/sprd/settings/LocationAgpsLogShow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method

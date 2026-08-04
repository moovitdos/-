.class Lcom/sprd/classichome/Home$WeatherAsyncTask;
.super Landroid/os/AsyncTask;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprd/classichome/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeatherAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private softReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sprd/classichome/Home;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 1
    .param p1, "home"    # Lcom/sprd/classichome/Home;

    .prologue
    .line 201
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home$WeatherAsyncTask;->softReference:Ljava/lang/ref/WeakReference;

    .line 203
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sprd/classichome/Home$WeatherAsyncTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p1, "objects"    # [Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 209
    .local v8, "result":[Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/sprd/classichome/HomeApplication;->getInstance()Lcom/sprd/classichome/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sprd/classichome/Home;->access$800()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "is_locate = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "1"

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 210
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    const-string v1, "w6_temp"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput-object v1, v8, v0

    .line 212
    const/4 v0, 0x1

    const-string v1, "img"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 214
    :cond_0
    if-eqz v6, :cond_1

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 217
    :catch_0
    move-exception v7

    .line 218
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 236
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 198
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sprd/classichome/Home$WeatherAsyncTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # [Ljava/lang/String;

    .prologue
    .line 225
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 226
    iget-object v1, p0, Lcom/sprd/classichome/Home$WeatherAsyncTask;->softReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/Home;

    .line 227
    .local v0, "home":Lcom/sprd/classichome/Home;
    if-eqz v0, :cond_0

    .line 228
    invoke-static {v0, p1}, Lcom/sprd/classichome/Home;->access$900(Lcom/sprd/classichome/Home;[Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

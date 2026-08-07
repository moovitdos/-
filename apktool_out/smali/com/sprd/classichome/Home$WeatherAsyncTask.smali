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
        "Landroid/os/AsyncTask<",
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
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sprd/classichome/Home;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sprd/classichome/Home;)V
    .locals 1

    .line 199
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sprd/classichome/Home$WeatherAsyncTask;->softReference:Ljava/lang/ref/WeakReference;

    .line 201
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 196
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/Home$WeatherAsyncTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 206
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/String;

    .line 208
    :try_start_0
    invoke-static {}, Lcom/sprd/classichome/HomeApplication;->getInstance()Lcom/sprd/classichome/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/classichome/HomeApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sprd/classichome/Home;->access$700()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "is_locate = ? "

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const-string v1, "w6_temp"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aput-object v1, p1, v2

    .line 211
    const/4 v1, 0x1

    const-string v2, "img"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 213
    :cond_0
    if-eqz v0, :cond_1

    .line 214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :goto_0
    return-object p1
.end method

.method protected onCancelled()V
    .locals 0

    .line 234
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 235
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 196
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sprd/classichome/Home$WeatherAsyncTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute([Ljava/lang/String;)V
    .locals 1

    .line 225
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/sprd/classichome/Home$WeatherAsyncTask;->softReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprd/classichome/Home;

    .line 227
    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/sprd/classichome/Home;->updateWeather([Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

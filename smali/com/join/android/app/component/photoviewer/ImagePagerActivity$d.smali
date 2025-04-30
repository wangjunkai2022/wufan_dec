.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;
.super Landroid/os/AsyncTask;
.source "ImagePagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->J0()Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 4
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    const v3, 0x7f110206

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->I0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    :goto_2
    return-object v0

    :goto_3
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 7
    :cond_1
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method private d(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/join/mgps/Util/q1;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/wufan91/img/IMG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1, p2}, Lcom/join/mgps/Util/o1;->n(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    const-string p2, "\u4fdd\u5b58\u6210\u529f"

    invoke-static {p1, p2}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->I0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {p1, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->I0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {p2, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->I0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x1388

    .line 3
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    return-object v0

    :catch_0
    nop

    goto :goto_0

    :catch_1
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->b:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "title"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 4
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "mime_type"

    const-string v2, "image/jpeg"

    .line 5
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_data"

    .line 6
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->a:Ljava/lang/String;

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$d;->d(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

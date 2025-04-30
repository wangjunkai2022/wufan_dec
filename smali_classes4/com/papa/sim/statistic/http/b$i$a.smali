.class Lcom/papa/sim/statistic/http/b$i$a;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b$i;->c(Landroid/widget/ImageView;Ljava/lang/String;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/papa/sim/statistic/http/b$i;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b$i;Landroid/widget/ImageView;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    iput p3, p0, Lcom/papa/sim/statistic/http/b$i$a;->b:I

    iput-object p4, p0, Lcom/papa/sim/statistic/http/b$i$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/papa/sim/statistic/http/b$i$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    iget-object p2, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    iget v0, p0, Lcom/papa/sim/statistic/http/b$i$a;->b:I

    invoke-static {p1, p2, v0}, Lcom/papa/sim/statistic/http/b$i;->a(Lcom/papa/sim/statistic/http/b$i;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-static {p1}, Lcom/papa/sim/statistic/http/b$m;->d(Ljava/io/InputStream;)Lcom/papa/sim/statistic/http/b$m$a;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/papa/sim/statistic/http/b$m;->f(Landroid/view/View;)Lcom/papa/sim/statistic/http/b$m$a;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lcom/papa/sim/statistic/http/b$m;->a(Lcom/papa/sim/statistic/http/b$m$a;Lcom/papa/sim/statistic/http/b$m$a;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_3
    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    iget-object v2, v2, Lcom/papa/sim/statistic/http/b$i;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {v2}, Lcom/papa/sim/statistic/http/b;->h(Lcom/papa/sim/statistic/http/b;)Lcom/papa/sim/statistic/http/b$k;

    move-result-object v2

    iget-object v3, p0, Lcom/papa/sim/statistic/http/b$i$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/papa/sim/statistic/http/b$i$a;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/papa/sim/statistic/http/b$k;->c(Ljava/lang/String;Ljava/lang/Object;)Lokhttp3/Response;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 8
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 9
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 10
    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 11
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    iget-object v1, v1, Lcom/papa/sim/statistic/http/b$i;->a:Lcom/papa/sim/statistic/http/b;

    invoke-static {v1}, Lcom/papa/sim/statistic/http/b;->i(Lcom/papa/sim/statistic/http/b;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/papa/sim/statistic/http/b$i$a$a;

    invoke-direct {v2, p0, v0}, Lcom/papa/sim/statistic/http/b$i$a$a;-><init>(Lcom/papa/sim/statistic/http/b$i$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_0

    .line 13
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-object v0, p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v5

    goto :goto_3

    .line 14
    :catch_2
    :goto_1
    :try_start_5
    iget-object p1, p0, Lcom/papa/sim/statistic/http/b$i$a;->e:Lcom/papa/sim/statistic/http/b$i;

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$i$a;->a:Landroid/widget/ImageView;

    iget v2, p0, Lcom/papa/sim/statistic/http/b$i$a;->b:I

    invoke-static {p1, v1, v2}, Lcom/papa/sim/statistic/http/b$i;->a(Lcom/papa/sim/statistic/http/b$i;Landroid/widget/ImageView;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_0

    .line 15
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_1

    .line 17
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :cond_1
    :goto_4
    throw v0
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/papa/sim/statistic/http/b$i$a;->a(Lokhttp3/Request;Ljava/io/IOException;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/papa/sim/statistic/http/b$i$a;->b(Lokhttp3/Response;)V

    return-void
.end method

.class Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;
.super Ljava/lang/Object;
.source "TTDownloadVisitor.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/network/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;->downloadWithConnection(ILjava/lang/String;Ljava/util/List;)Lcom/ss/android/socialbase/downloader/network/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/d$e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->c:I

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/d$e$1;->a:Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/c$a;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

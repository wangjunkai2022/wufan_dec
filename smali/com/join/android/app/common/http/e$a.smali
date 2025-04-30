.class Lcom/join/android/app/common/http/e$a;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/http/e;->c(Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Request;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method public b(Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/common/http/e$a;->a(Lokhttp3/Request;Ljava/io/IOException;)V

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
    invoke-virtual {p0, p2}, Lcom/join/android/app/common/http/e$a;->b(Lokhttp3/Response;)V

    return-void
.end method

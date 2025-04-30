.class Lcom/join/mgps/Util/e2$d;
.super Lcom/papa/sim/statistic/http/b$p;
.source "TCUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/e2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa/sim/statistic/http/b$p<",
        "Lcom/join/mgps/dto/PaMgrBean$Response<",
        "Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/Util/e2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/e2;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/e2$d;->c:Lcom/join/mgps/Util/e2;

    iput-object p2, p0, Lcom/join/mgps/Util/e2$d;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/papa/sim/statistic/http/b$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/e2$d;->c:Lcom/join/mgps/Util/e2;

    invoke-static {p1}, Lcom/join/mgps/Util/e2;->a(Lcom/join/mgps/Util/e2;)Lcom/join/mgps/Util/e2$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/Util/e2$d;->c:Lcom/join/mgps/Util/e2;

    invoke-static {p1}, Lcom/join/mgps/Util/e2;->a(Lcom/join/mgps/Util/e2;)Lcom/join/mgps/Util/e2$e;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/join/mgps/Util/e2$e;->N(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/join/mgps/dto/PaMgrBean$Response;

    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/e2$d;->f(Lcom/join/mgps/dto/PaMgrBean$Response;)V

    return-void
.end method

.method public f(Lcom/join/mgps/dto/PaMgrBean$Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/dto/PaMgrBean$Response<",
            "Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response;->getError()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getAppId()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getSignature()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getBucket()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;->getUploadDir()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/e2$d;->c:Lcom/join/mgps/Util/e2;

    iget-object v1, p0, Lcom/join/mgps/Util/e2$d;->b:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/Util/e2;->c(Lcom/join/mgps/Util/e2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Lcom/join/mgps/Util/e2$d;->d(Lokhttp3/Request;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.class public Lcom/join/mgps/socket/b;
.super Ljava/lang/Object;
.source "SocketCommendManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/socket/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "b"

.field private static final c:I = 0x5


# instance fields
.field a:Lcom/join/mgps/socket/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/join/mgps/socket/a;->b()Lcom/join/mgps/socket/a;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    return-void
.end method

.method public static c(Ljava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v1, p1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, p1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    mul-int v4, v2, p1

    :goto_2
    add-int/lit8 v5, v2, 0x1

    mul-int v6, p1, v5

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_1

    .line 5
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static d()Lcom/join/mgps/socket/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/socket/b$a;->a:Lcom/join/mgps/socket/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$STLA$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v0}, Lcom/join/mgps/socket/a;->a()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$SRSSLH$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    invoke-direct {v0, p1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$DMH$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/join/mgps/Util/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/join/mgps/socket/entity/h;

    invoke-direct {v1, v0}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$TLO$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$STN$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$STY$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public j(Lcom/join/mgps/socket/entity/d;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$HB$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$SSSSLH$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    invoke-direct {v0, p1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$STH$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    invoke-direct {v0, p1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 1
    invoke-static {p1, v0}, Lcom/join/mgps/socket/b;->c(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task\u5217\u8868: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$TLH$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/join/mgps/socket/entity/h;

    invoke-direct {v2, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v2}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$SSSF$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$SSZ$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/join/mgps/socket/entity/h;

    const-string v1, "$SNSUUO$"

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/entity/h;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/socket/b;->a:Lcom/join/mgps/socket/a;

    invoke-virtual {v1, v0}, Lcom/join/mgps/socket/a;->d(Lcom/join/mgps/socket/entity/e;)V

    return-void
.end method

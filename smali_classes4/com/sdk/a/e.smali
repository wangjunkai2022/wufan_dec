.class public Lcom/sdk/a/e;
.super Lcom/sdk/d/e;
.source ""

# interfaces
.implements Lcom/sdk/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/d/e<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sdk/c/b;"
    }
.end annotation


# static fields
.field public static final j:Lcom/sdk/a/d;

.field public static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public l:J

.field public m:Lcom/sdk/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/e/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lcom/sdk/a/e$a;

.field public q:I

.field public r:Z

.field public s:J

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Ljava/lang/Boolean;

.field public w:Ljava/lang/Boolean;

.field public x:Ljava/lang/Boolean;

.field public y:Lcom/sdk/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/a/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sdk/a/d;

    invoke-direct {v0}, Lcom/sdk/a/d;-><init>()V

    sput-object v0, Lcom/sdk/a/e;->j:Lcom/sdk/a/d;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/sdk/a/e;->k:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/sdk/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sdk/d/e;-><init>()V

    .line 1
    sget-wide v0, Lcom/sdk/a/d;->a:J

    .line 2
    iput-wide v0, p0, Lcom/sdk/a/e;->l:J

    sget-object v0, Lcom/sdk/a/e$a;->a:Lcom/sdk/a/e$a;

    iput-object v0, p0, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdk/a/e;->r:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdk/a/e;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdk/a/e;->u:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sdk/a/e;->v:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sdk/a/e;->w:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sdk/a/e;->x:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 4
    iput-object p1, p0, Lcom/sdk/a/e;->y:Lcom/sdk/a/h;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p1, Lcom/sdk/a/h;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/sdk/a/e;->n:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/sdk/a/h;->d:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sdk/a/e;->o:Ljava/lang/String;

    .line 9
    iget v0, p1, Lcom/sdk/a/h;->i:I

    .line 10
    iput v0, p0, Lcom/sdk/a/e;->q:I

    .line 11
    iget-object p1, p1, Lcom/sdk/a/h;->j:Lcom/sdk/e/b;

    .line 12
    iput-object p1, p0, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/sdk/a/g;Ljava/net/HttpURLConnection;)Lcom/sdk/a/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/g<",
            "TT;>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/sdk/a/i<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "PriorityAsyncTask"

    .line 4
    iget-object v1, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 5
    new-instance p1, Lcom/sdk/a/i;

    const-string p2, "\u7f51\u7edc\u8bbf\u95ee\u5df2\u53d6\u6d88"

    invoke-direct {p1, v2, p2, v3}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sdk/a/e;->z:J

    sub-long/2addr v4, v6

    invoke-static {v1, v4, v5}, Lcom/sdk/o/c;->a(Ljava/lang/String;J)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "net\u8bf7\u6c42host\uff1a"

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "\n net\u8bf7\u6c42path\uff1a"

    :try_start_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "\n net\u8bf7\u6c42getheadfields "

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v5, "\n  net\u8bf7\u6c42\u7801\uff1a"

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 7
    iget-object v4, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sdk/a/e;->k:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sdk/a/e;->z:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v5, "\u54cd\u5e94\u8fd4\u56de\uff1acode="

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v5, ";\u8017\u65f6="

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sdk/a/e;->z:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v5, "ip\uff1aip"

    :try_start_7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v5, ";="

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sdk/a/e;->z:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, v4, v5}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_1
    const/16 v4, 0x12c

    if-ge v1, v4, :cond_8

    iput-boolean v3, p0, Lcom/sdk/a/e;->r:Z

    iget-boolean p1, p0, Lcom/sdk/a/e;->u:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sdk/a/e;->v:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/sdk/m/a;->b(Ljava/net/HttpURLConnection;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/e;->v:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/sdk/a/e;->w:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Lcom/sdk/m/a;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object v9, p1

    new-instance v4, Lcom/sdk/c/a;

    invoke-direct {v4}, Lcom/sdk/c/a;-><init>()V

    iget-object v7, p0, Lcom/sdk/a/e;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/sdk/a/e;->v:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v5, p2

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sdk/c/a;->a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    :cond_4
    iget-object p1, p0, Lcom/sdk/a/e;->x:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {p2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_6
    new-instance p1, Lcom/sdk/c/c;

    invoke-direct {p1}, Lcom/sdk/c/c;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "UTF-8"

    :try_start_9
    invoke-virtual {p1, p2, p0, v1}, Lcom/sdk/c/c;->a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/sdk/a/e;->j:Lcom/sdk/a/d;

    iget-object v1, p0, Lcom/sdk/a/e;->n:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/sdk/a/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sdk/a/e;->o:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sdk/a/e;->l:J

    invoke-virtual {p2, v1, p1, v4, v5}, Lcom/sdk/a/d;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    :goto_3
    new-instance p2, Lcom/sdk/a/i;

    invoke-direct {p2, v3, p1, v3}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    return-object p2

    :cond_8
    const/16 v4, 0x12d

    if-eq v1, v4, :cond_9

    const/16 v4, 0x12e

    if-ne v1, v4, :cond_d

    :cond_9
    const-string v4, "Location"

    :try_start_a
    invoke-virtual {p2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v5, "Set-Cookie"

    :try_start_b
    invoke-virtual {p2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz p1, :cond_d

    .line 10
    iget-object v1, p1, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    .line 11
    iput-object v4, v1, Lcom/sdk/a/h;->d:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Lcom/sdk/m/a;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/sdk/a/g;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v5}, Lcom/sdk/o/b;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v6, "ctc"

    const-string v7, "Cookie"

    if-eqz v4, :cond_b

    const-string v4, "/ctcnet/gctcmc.do"

    :try_start_c
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 13
    sget-object p2, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    .line 14
    invoke-static {p2, v6, v5}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string p2, "mdb Cookie cache"

    :try_start_d
    iget-object v4, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, p2, v4}, Lcom/sdk/o/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_a
    invoke-virtual {v1, v7, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 15
    :cond_b
    sget-object p2, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p2, v6}, Lcom/sdk/j/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v7, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    if-nez v1, :cond_c

    new-instance p1, Lcom/sdk/a/i;

    invoke-virtual {p0}, Lcom/sdk/a/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v3, p2, v3}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    return-object p1

    .line 17
    :cond_c
    iget-object p2, p1, Lcom/sdk/a/g;->f:Lcom/sdk/a/h;

    sget-object v4, Lcom/sdk/a/g$a;->a:Lcom/sdk/a/g$a;

    .line 18
    iget-object v4, v4, Lcom/sdk/a/g$a;->l:Ljava/lang/String;

    .line 19
    invoke-virtual {p2, v4}, Lcom/sdk/a/h;->a(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/sdk/a/e;->b(Lcom/sdk/a/g;Ljava/net/HttpURLConnection;)Lcom/sdk/a/i;

    move-result-object p1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u670d\u52a1\u5f02\u5e38 ResponseCode = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance p1, Lcom/sdk/a/i;

    const-string p2, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    invoke-direct {p1, v3, p2, v3}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, p1, p2}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance p1, Lcom/sdk/a/i;

    const-string p2, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    invoke-direct {p1, v2, p2, v3}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    return-object p1
.end method

.method public a()V
    .locals 3

    sget-object v0, Lcom/sdk/a/e$a;->e:Lcom/sdk/a/e$a;

    iput-object v0, p0, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    .line 1
    iget-object v0, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sdk/d/e;->d:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    const-string v2, "PriorityAsyncTask"

    invoke-static {v2, v0, v1}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sdk/e/b;->a()V

    :cond_1
    return-void
.end method

.method public a(JJZ)Z
    .locals 10

    iget-object v0, p0, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    sget-object v3, Lcom/sdk/a/e$a;->e:Lcom/sdk/a/e$a;

    if-eq v0, v3, :cond_2

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_0

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sdk/a/e;->s:J

    sub-long v6, v4, v6

    iget-object p5, p0, Lcom/sdk/a/e;->m:Lcom/sdk/e/b;

    .line 21
    iget p5, p5, Lcom/sdk/e/b;->a:I

    const/16 v8, 0xc8

    if-ge p5, v8, :cond_1

    const/16 p5, 0xc8

    :cond_1
    int-to-long v8, p5

    cmp-long p5, v6, v8

    if-ltz p5, :cond_2

    .line 22
    iput-wide v4, p0, Lcom/sdk/a/e;->s:J

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/sdk/d/e;->a([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sdk/a/e;->p:Lcom/sdk/a/e$a;

    sget-object p2, Lcom/sdk/a/e$a;->e:Lcom/sdk/a/e$a;

    if-eq p1, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public final b(Lcom/sdk/a/g;Ljava/net/HttpURLConnection;)Lcom/sdk/a/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/g<",
            "TT;>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/sdk/a/i<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "PriorityAsyncTask"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/sdk/a/e;->j:Lcom/sdk/a/d;

    iget-object v4, p0, Lcom/sdk/a/e;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sdk/a/d;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sdk/a/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sdk/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/sdk/a/i;

    invoke-direct {v4, v1, v3, v2}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    return-object v4

    :cond_0
    iget-object v3, p0, Lcom/sdk/a/e;->v:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sdk/a/e;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const-string v3, "\u8d70\u4e86\u4e0b\u8f7d\u8bf7\u6c42"

    :try_start_1
    iget-object v4, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, v3, v4}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sdk/a/e;->t:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-wide v3, v5

    :goto_0
    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-string v5, "RANGE"

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "bytes="

    :try_start_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "-"

    :try_start_4
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1
    :cond_2
    iget-object v3, p0, Lcom/sdk/d/e;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sdk/a/e;->z:J

    invoke-virtual {p1, p2}, Lcom/sdk/a/g;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/sdk/a/e;->a(Lcom/sdk/a/g;Ljava/net/HttpURLConnection;)Lcom/sdk/a/i;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdk/o/c;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38228\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, v3, v4}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retryCount---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sdk/a/e;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sdk/d/e;->h:Ljava/lang/Boolean;

    invoke-static {v0, v3, v4}, Lcom/sdk/o/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    iget v0, p0, Lcom/sdk/a/e;->q:I

    if-lez v0, :cond_3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sdk/a/e;->q:I

    invoke-virtual {p0, p1, p2}, Lcom/sdk/a/e;->b(Lcom/sdk/a/g;Ljava/net/HttpURLConnection;)Lcom/sdk/a/i;

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 4
    new-instance p1, Lcom/sdk/a/i;

    const-string p2, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    invoke-direct {p1, v2, p2, v1}, Lcom/sdk/a/i;-><init>(ILjava/lang/Object;Z)V

    :cond_4
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "code"

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "status"

    const v2, 0x18e71

    :try_start_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "msg"

    const-string v2, "\u9009\u62e9\u6d41\u91cf\u901a\u9053\u5931\u8d25"

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

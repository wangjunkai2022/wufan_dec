.class Lcom/papa/sim/statistic/http/b$f;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b;->a0(Lokhttp3/Request;Ljava/lang/Exception;Lcom/papa/sim/statistic/http/b$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b$p;

.field final synthetic b:Lokhttp3/Request;

.field final synthetic c:Ljava/lang/Exception;

.field final synthetic d:Lcom/papa/sim/statistic/http/b;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$f;->d:Lcom/papa/sim/statistic/http/b;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$f;->a:Lcom/papa/sim/statistic/http/b$p;

    iput-object p3, p0, Lcom/papa/sim/statistic/http/b$f;->b:Lokhttp3/Request;

    iput-object p4, p0, Lcom/papa/sim/statistic/http/b$f;->c:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$f;->a:Lcom/papa/sim/statistic/http/b$p;

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$f;->b:Lokhttp3/Request;

    iget-object v2, p0, Lcom/papa/sim/statistic/http/b$f;->c:Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/http/b$p;->d(Lokhttp3/Request;Ljava/lang/Exception;)V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$f;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b$p;->b()V

    return-void
.end method

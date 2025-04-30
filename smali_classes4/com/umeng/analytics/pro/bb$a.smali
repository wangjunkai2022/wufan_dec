.class Lcom/umeng/analytics/pro/bb$a;
.super Lcom/umeng/analytics/pro/ca;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/ca<",
        "Lcom/umeng/analytics/pro/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bb$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/ar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/bb;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bb$a;->b(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    iput-object v0, p2, Lcom/umeng/analytics/pro/bb;->b:Lcom/umeng/analytics/pro/ay;

    .line 3
    iput-object v0, p2, Lcom/umeng/analytics/pro/bb;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->j()Lcom/umeng/analytics/pro/bv;

    .line 5
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->l()Lcom/umeng/analytics/pro/bl;

    move-result-object v0

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bb;->a(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bl;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lcom/umeng/analytics/pro/bb;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 7
    iget-short v0, v0, Lcom/umeng/analytics/pro/bl;->c:S

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bb;->a(S)Lcom/umeng/analytics/pro/ay;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/pro/bb;->b:Lcom/umeng/analytics/pro/ay;

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->m()V

    .line 9
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->l()Lcom/umeng/analytics/pro/bl;

    .line 10
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->k()V

    return-void
.end method

.method public synthetic b(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/ar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/umeng/analytics/pro/bb;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bb$a;->a(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V

    return-void
.end method

.method public b(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/ax;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bb;->a()Lcom/umeng/analytics/pro/ay;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bb;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/umeng/analytics/pro/bb;->d()Lcom/umeng/analytics/pro/bv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bq;->a(Lcom/umeng/analytics/pro/bv;)V

    .line 4
    iget-object v0, p2, Lcom/umeng/analytics/pro/bb;->b:Lcom/umeng/analytics/pro/ay;

    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bb;->c(Lcom/umeng/analytics/pro/ay;)Lcom/umeng/analytics/pro/bl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bq;->a(Lcom/umeng/analytics/pro/bl;)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bb;->a(Lcom/umeng/analytics/pro/bq;)V

    .line 6
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->c()V

    .line 7
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->d()V

    .line 8
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->b()V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/br;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/br;-><init>(Ljava/lang/String;)V

    throw p1
.end method

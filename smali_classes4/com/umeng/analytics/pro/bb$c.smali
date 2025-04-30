.class Lcom/umeng/analytics/pro/bb$c;
.super Lcom/umeng/analytics/pro/cb;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/analytics/pro/cb<",
        "Lcom/umeng/analytics/pro/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/umeng/analytics/pro/cb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/bb$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bb$c;-><init>()V

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

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bb$c;->b(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V
    .locals 1
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
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bq;->v()S

    move-result v0

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/umeng/analytics/pro/bb;->a(Lcom/umeng/analytics/pro/bq;S)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/bb;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p2, v0}, Lcom/umeng/analytics/pro/bb;->a(S)Lcom/umeng/analytics/pro/ay;

    move-result-object p1

    iput-object p1, p2, Lcom/umeng/analytics/pro/bb;->b:Lcom/umeng/analytics/pro/ay;

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bb$c;->a(Lcom/umeng/analytics/pro/bq;Lcom/umeng/analytics/pro/bb;)V

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
    iget-object v0, p2, Lcom/umeng/analytics/pro/bb;->b:Lcom/umeng/analytics/pro/ay;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/ay;->a()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/bq;->a(S)V

    .line 4
    invoke-virtual {p2, p1}, Lcom/umeng/analytics/pro/bb;->b(Lcom/umeng/analytics/pro/bq;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/umeng/analytics/pro/br;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/br;-><init>(Ljava/lang/String;)V

    throw p1
.end method

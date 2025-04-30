.class public Lcom/switfpass/pay/service/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.switfpass.pay.service.d"

.field private static b:Lcom/switfpass/pay/service/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/switfpass/pay/service/d;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/service/d;->b:Lcom/switfpass/pay/service/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/switfpass/pay/service/d;

    invoke-direct {v0}, Lcom/switfpass/pay/service/d;-><init>()V

    sput-object v0, Lcom/switfpass/pay/service/d;->b:Lcom/switfpass/pay/service/d;

    :cond_0
    sget-object v0, Lcom/switfpass/pay/service/d;->b:Lcom/switfpass/pay/service/d;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/switfpass/pay/service/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/m;

    invoke-direct {v0, p1, p2, p3}, Lcom/switfpass/pay/service/m;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p3}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public b(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/n;

    invoke-direct {v0, p1, p2}, Lcom/switfpass/pay/service/n;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p2}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public c(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/switfpass/pay/service/f;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p3}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public f(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/l;

    invoke-direct {v0, p1, p2, p3}, Lcom/switfpass/pay/service/l;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p3}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/k;

    invoke-direct {v0, p1, p2}, Lcom/switfpass/pay/service/k;-><init>(Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p2}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/h;

    invoke-direct {v0, p2, p1, p3}, Lcom/switfpass/pay/service/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p3}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public i(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/g;

    invoke-direct {v0, p1, p2}, Lcom/switfpass/pay/service/g;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p2}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public j(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/i;

    invoke-direct {v0, p1, p2}, Lcom/switfpass/pay/service/i;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p2}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public k(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/j;

    invoke-direct {v0, p1, p2}, Lcom/switfpass/pay/service/j;-><init>(Lcom/switfpass/pay/bean/RequestMsg;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p2}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

.method public l(Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V
    .locals 1

    new-instance v0, Lcom/switfpass/pay/service/e;

    invoke-direct {v0, p1, p2}, Lcom/switfpass/pay/service/e;-><init>(Ljava/lang/String;Lcom/switfpass/pay/thread/h;)V

    invoke-static {v0, p2}, Lcom/switfpass/pay/thread/g;->a(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V

    return-void
.end method

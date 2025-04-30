.class public final Lcom/alipay/android/phone/mrpc/core/v;
.super Lcom/alipay/android/phone/mrpc/core/g;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/g;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/v;->a:Landroid/content/Context;

    return-void
.end method

.method private static synthetic b(Lcom/alipay/android/phone/mrpc/core/v;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/alipay/android/phone/mrpc/core/v;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/l;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alipay/android/phone/mrpc/core/l;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/android/phone/mrpc/core/h;

    new-instance v1, Lcom/alipay/android/phone/mrpc/core/w;

    invoke-direct {v1, p0, p2}, Lcom/alipay/android/phone/mrpc/core/w;-><init>(Lcom/alipay/android/phone/mrpc/core/v;Lcom/alipay/android/phone/mrpc/core/l;)V

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mrpc/core/h;-><init>(Lcom/alipay/android/phone/mrpc/core/u;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/android/phone/mrpc/core/i;

    iget-object v3, v0, Lcom/alipay/android/phone/mrpc/core/h;->a:Lcom/alipay/android/phone/mrpc/core/u;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/h;->b:Lcom/alipay/android/phone/mrpc/core/j;

    invoke-direct {v2, v3, p1, v0}, Lcom/alipay/android/phone/mrpc/core/i;-><init>(Lcom/alipay/android/phone/mrpc/core/u;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/j;)V

    invoke-static {p2, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/alipay/android/phone/mrpc/core/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field protected a:Lcom/alipay/android/phone/mrpc/core/u;

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected c:Lcom/alipay/android/phone/mrpc/core/j;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/u;Ljava/lang/Class;Lcom/alipay/android/phone/mrpc/core/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mrpc/core/u;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alipay/android/phone/mrpc/core/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->a:Lcom/alipay/android/phone/mrpc/core/u;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/i;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/i;->c:Lcom/alipay/android/phone/mrpc/core/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lcom/alipay/android/phone/mrpc/core/i;->c:Lcom/alipay/android/phone/mrpc/core/j;

    invoke-virtual {p1, p2, p3}, Lcom/alipay/android/phone/mrpc/core/j;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

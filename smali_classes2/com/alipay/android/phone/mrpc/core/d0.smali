.class public final Lcom/alipay/android/phone/mrpc/core/d0;
.super Lcom/alipay/android/phone/mrpc/core/e;


# instance fields
.field private c:I

.field private d:Ljava/lang/String;

.field e:J

.field f:J

.field g:Ljava/lang/String;

.field h:Lcom/alipay/android/phone/mrpc/core/b;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/mrpc/core/b;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/phone/mrpc/core/e;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/d0;->h:Lcom/alipay/android/phone/mrpc/core/b;

    iput p2, p0, Lcom/alipay/android/phone/mrpc/core/d0;->c:I

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/d0;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/phone/mrpc/core/e;->a:[B

    return-void
.end method

.method private c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/mrpc/core/d0;->e:J

    return-void
.end method

.method private d()Lcom/alipay/android/phone/mrpc/core/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/d0;->h:Lcom/alipay/android/phone/mrpc/core/b;

    return-object v0
.end method

.method private e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/phone/mrpc/core/d0;->f:J

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/d0;->g:Ljava/lang/String;

    return-void
.end method

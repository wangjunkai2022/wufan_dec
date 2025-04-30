.class public final Lcom/alipay/android/phone/mrpc/core/c;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final d:J = -0x27e79b9ef4131536L


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/c;->b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/c;->b:I

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/alipay/android/phone/mrpc/core/c;->b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/c;->b:I

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alipay/android/phone/mrpc/core/c;->b:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->b:I

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RPCException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, " : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->b:I

    return v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/c;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/c;->a:Ljava/lang/String;

    return-void
.end method

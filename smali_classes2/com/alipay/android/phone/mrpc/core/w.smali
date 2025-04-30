.class final Lcom/alipay/android/phone/mrpc/core/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/mrpc/core/u;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/l;

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/v;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/v;Lcom/alipay/android/phone/mrpc/core/l;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/w;->b:Lcom/alipay/android/phone/mrpc/core/v;

    iput-object p2, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/l;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/alipay/android/phone/mrpc/core/m;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->b:Lcom/alipay/android/phone/mrpc/core/v;

    iget-object v0, v0, Lcom/alipay/android/phone/mrpc/core/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mrpc/core/z;->c(Landroid/content/Context;)Lcom/alipay/android/phone/mrpc/core/z;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/alipay/android/phone/mrpc/core/l;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/l;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/w;->a:Lcom/alipay/android/phone/mrpc/core/l;

    iget-boolean v0, v0, Lcom/alipay/android/phone/mrpc/core/l;->c:Z

    return v0
.end method

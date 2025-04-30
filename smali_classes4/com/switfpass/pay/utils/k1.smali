.class final Lcom/switfpass/pay/utils/k1;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/switfpass/pay/activity/q;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/switfpass/pay/activity/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/switfpass/pay/activity/q;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "resultStatus-->"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "9000"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    :goto_0
    invoke-static {v1, p1, v0}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "8000"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    const-string v0, "\u652f\u4ed8\u7ed3\u679c\u5f85\u786e\u8ba4\u4e2d\uff0c\u6700\u7ec8\u4ea4\u6613\u662f\u5426\u6210\u529f\u4ee5\u670d\u52a1\u7aef\u5f02\u6b65\u901a\u77e5\u4e3a\u51c6"

    goto :goto_0

    :cond_2
    const-string p1, "\u652f\u4ed8\u5931\u8d25\uff0c\u539f\u56e0\u5305\u62ec\u7528\u6237\u4e3b\u52a8\u53d6\u6d88\u652f\u4ed8\uff0c\u6216\u8005\u7cfb\u7edf\u8fd4\u56de\u7684\u9519\u8bef"

    invoke-static {v1, v1, p1}, Lcom/switfpass/pay/handle/a;->b(IILjava/lang/Object;)V

    :goto_1
    return-void
.end method

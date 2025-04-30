.class final Lcom/switfpass/pay/thread/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/switfpass/pay/thread/b;

.field private final synthetic b:Lcom/switfpass/pay/thread/e;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/thread/b;Lcom/switfpass/pay/thread/e;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/thread/j;->a:Lcom/switfpass/pay/thread/b;

    iput-object p2, p0, Lcom/switfpass/pay/thread/j;->b:Lcom/switfpass/pay/thread/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/switfpass/pay/thread/j;->a:Lcom/switfpass/pay/thread/b;

    new-instance v1, Lcom/switfpass/pay/thread/k;

    iget-object v2, p0, Lcom/switfpass/pay/thread/j;->b:Lcom/switfpass/pay/thread/e;

    invoke-direct {v1, v2}, Lcom/switfpass/pay/thread/k;-><init>(Lcom/switfpass/pay/thread/e;)V

    invoke-virtual {v0, v1}, Lcom/switfpass/pay/thread/b;->b(Lcom/switfpass/pay/thread/a;)V

    iget-object v0, p0, Lcom/switfpass/pay/thread/j;->b:Lcom/switfpass/pay/thread/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/switfpass/pay/thread/e;->onPreExecute()V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/switfpass/pay/thread/j;->a:Lcom/switfpass/pay/thread/b;

    invoke-virtual {v1}, Lcom/switfpass/pay/thread/b;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/switfpass/pay/thread/j;->b:Lcom/switfpass/pay/thread/e;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53d1\u9001\u9519\u8bef\u5566"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/switfpass/pay/thread/e;->onError(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Lcom/switfpass/pay/thread/e;->onSucceed(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

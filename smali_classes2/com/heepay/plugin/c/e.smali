.class public Lcom/heepay/plugin/c/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILcom/heepay/plugin/domain/f;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/heepay/plugin/domain/f;->b()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(ILjava/lang/Exception;Ljava/lang/String;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public static a(ILjava/lang/String;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public static b(ILcom/heepay/plugin/domain/f;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Lcom/heepay/plugin/domain/f;->c()Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

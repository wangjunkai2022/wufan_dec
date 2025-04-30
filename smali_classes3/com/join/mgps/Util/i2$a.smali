.class Lcom/join/mgps/Util/i2$a;
.super Landroid/os/Handler;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/i2;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/Util/i2;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/i2;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/i2$a;->b:Lcom/join/mgps/Util/i2;

    iput-object p2, p0, Lcom/join/mgps/Util/i2$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/i2$a;->b:Lcom/join/mgps/Util/i2;

    iget-object v2, v1, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/Util/i2$a;->a:Landroid/content/Context;

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, v1, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 6
    iget-object v1, p0, Lcom/join/mgps/Util/i2$a;->b:Lcom/join/mgps/Util/i2;

    iget-object v2, p0, Lcom/join/mgps/Util/i2$a;->a:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, v1, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/Util/i2$a;->b:Lcom/join/mgps/Util/i2;

    iget-object v0, v0, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/Util/i2$a;->b:Lcom/join/mgps/Util/i2;

    iget-object p1, p1, Lcom/join/mgps/Util/i2;->a:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

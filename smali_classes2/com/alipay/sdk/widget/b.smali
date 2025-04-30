.class final Lcom/alipay/sdk/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/widget/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->g(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    new-instance v1, Lcom/alipay/sdk/widget/a$a;

    iget-object v2, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v2}, Lcom/alipay/sdk/widget/a;->a(Lcom/alipay/sdk/widget/a;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alipay/sdk/widget/a$a;-><init>(Lcom/alipay/sdk/widget/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/sdk/widget/a;->b(Lcom/alipay/sdk/widget/a;Lcom/alipay/sdk/widget/a$a;)Lcom/alipay/sdk/widget/a$a;

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->g(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/alipay/sdk/widget/b;->a:Lcom/alipay/sdk/widget/a;

    invoke-static {v0}, Lcom/alipay/sdk/widget/a;->g(Lcom/alipay/sdk/widget/a;)Lcom/alipay/sdk/widget/a$a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

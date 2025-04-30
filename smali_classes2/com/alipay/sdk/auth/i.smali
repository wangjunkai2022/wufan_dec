.class final Lcom/alipay/sdk/auth/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/auth/g;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/auth/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/auth/g;

    iget-object p1, p1, Lcom/alipay/sdk/auth/g;->a:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 2
    iget-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/auth/g;

    iget-object p1, p1, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object p1, p1, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alipay/sdk/auth/AuthActivity;->f(Lcom/alipay/sdk/auth/AuthActivity;Z)Z

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/auth/g;

    iget-object p2, p2, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object p2, p2, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {p2}, Lcom/alipay/sdk/auth/AuthActivity;->l(Lcom/alipay/sdk/auth/AuthActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "?resultCode=150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/auth/g;

    iget-object p2, p2, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object p2, p2, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-static {p2, p1}, Lcom/alipay/sdk/auth/j;->d(Landroid/app/Activity;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/alipay/sdk/auth/i;->a:Lcom/alipay/sdk/auth/g;

    iget-object p1, p1, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object p1, p1, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

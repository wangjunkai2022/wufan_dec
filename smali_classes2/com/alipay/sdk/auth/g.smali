.class final Lcom/alipay/sdk/auth/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;

.field final synthetic b:Lcom/alipay/sdk/auth/AuthActivity$b;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/auth/AuthActivity$b;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iput-object p2, p0, Lcom/alipay/sdk/auth/g;->a:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/alipay/sdk/auth/g;->b:Lcom/alipay/sdk/auth/AuthActivity$b;

    iget-object v1, v0, Lcom/alipay/sdk/auth/AuthActivity$b;->a:Lcom/alipay/sdk/auth/AuthActivity;

    new-instance v5, Lcom/alipay/sdk/auth/h;

    invoke-direct {v5, p0}, Lcom/alipay/sdk/auth/h;-><init>(Lcom/alipay/sdk/auth/g;)V

    new-instance v7, Lcom/alipay/sdk/auth/i;

    invoke-direct {v7, p0}, Lcom/alipay/sdk/auth/i;-><init>(Lcom/alipay/sdk/auth/g;)V

    const-string/jumbo v2, "\u5b89\u5168\u8b66\u544a"

    const-string/jumbo v3, "\u7531\u4e8e\u60a8\u7684\u8bbe\u5907\u7f3a\u5c11\u6839\u8bc1\u4e66\uff0c\u5c06\u65e0\u6cd5\u6821\u9a8c\u8be5\u8bbf\u95ee\u7ad9\u70b9\u7684\u5b89\u5168\u6027\uff0c\u53ef\u80fd\u5b58\u5728\u98ce\u9669\uff0c\u8bf7\u9009\u62e9\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string/jumbo v4, "\u7ee7\u7eed"

    const-string/jumbo v6, "\u9000\u51fa"

    invoke-static/range {v1 .. v7}, Lcom/alipay/sdk/widget/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void
.end method

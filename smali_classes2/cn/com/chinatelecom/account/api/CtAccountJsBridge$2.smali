.class Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->callbackPreCodeParams(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/com/chinatelecom/account/api/CtAccountJsBridge;


# direct methods
.method constructor <init>(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->b:Lcn/com/chinatelecom/account/api/CtAccountJsBridge;

    iput-object p2, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->b:Lcn/com/chinatelecom/account/api/CtAccountJsBridge;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->access$000(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "\')"

    const-string v2, "javascript:ejsBridge.callbackPreCodeParams(\'"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->b:Lcn/com/chinatelecom/account/api/CtAccountJsBridge;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->access$000(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->b:Lcn/com/chinatelecom/account/api/CtAccountJsBridge;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->access$100(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;)Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->b:Lcn/com/chinatelecom/account/api/CtAccountJsBridge;

    invoke-static {v0}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->access$100(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;)Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

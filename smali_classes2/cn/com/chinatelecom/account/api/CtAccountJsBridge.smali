.class public Lcn/com/chinatelecom/account/api/CtAccountJsBridge;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/chinatelecom/account/api/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CtAccountJsBridge"

.field public static mHandler:Landroid/os/Handler;


# instance fields
.field private callback:Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->callback:Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;

    return-void
.end method

.method static synthetic access$000(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;)Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;
    .locals 0

    iget-object p0, p0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->callback:Lcn/com/chinatelecom/account/api/CtAccountJsBridge$a;

    return-object p0
.end method


# virtual methods
.method public callbackPreCode(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackPreCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$1;

    invoke-direct {v1, p0, p1}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$1;-><init>(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public callbackPreCodeParams(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackPreCodeParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;

    invoke-direct {v1, p0, p1}, Lcn/com/chinatelecom/account/api/CtAccountJsBridge$2;-><init>(Lcn/com/chinatelecom/account/api/CtAccountJsBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getPreCodeParams(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreCodeParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcn/com/chinatelecom/account/api/CtAuth;->getPreCodeParamsByJs(Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method

.method public requestPreCode(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    sget-object v0, Lcn/com/chinatelecom/account/api/CtAccountJsBridge;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPreCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/chinatelecom/account/api/CtAuth;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/com/chinatelecom/account/api/CtAuth;->getInstance()Lcn/com/chinatelecom/account/api/CtAuth;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcn/com/chinatelecom/account/api/CtAuth;->requestPreCodeByJs(Ljava/lang/String;Lcn/com/chinatelecom/account/api/b/a;)V

    return-void
.end method

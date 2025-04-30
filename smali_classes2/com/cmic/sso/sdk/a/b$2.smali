.class Lcom/cmic/sso/sdk/a/b$2;
.super Lcom/cmic/sso/sdk/e/n$a;
.source "UmcConfigHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/cmic/sso/sdk/a/b;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/a/b$2;->b:Lcom/cmic/sso/sdk/a/b;

    iput-object p2, p0, Lcom/cmic/sso/sdk/a/b$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-direct {p0}, Lcom/cmic/sso/sdk/e/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const-string v0, "UmcConfigHandle"

    const-string/jumbo v1, "\u5f00\u59cb\u62c9\u53d6\u914d\u7f6e.."

    .line 1
    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/a/b$2;->b:Lcom/cmic/sso/sdk/a/b;

    iget-object v1, p0, Lcom/cmic/sso/sdk/a/b$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/a/b;->a(Lcom/cmic/sso/sdk/a/b;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method

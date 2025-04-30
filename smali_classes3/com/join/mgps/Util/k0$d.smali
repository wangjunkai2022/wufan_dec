.class Lcom/join/mgps/Util/k0$d;
.super Lcom/facebook/imagepipeline/datasource/b;
.source "FrescoUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/k0;->h(Ljava/lang/String;Landroid/content/Context;IILcom/facebook/imagepipeline/request/a;Lcom/join/mgps/Util/k0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/k0$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/k0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/k0$d;->a:Lcom/join/mgps/Util/k0$e;

    invoke-direct {p0}, Lcom/facebook/imagepipeline/datasource/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected e(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/a<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/k0$d;->a:Lcom/join/mgps/Util/k0$e;

    invoke-interface {p1}, Lcom/join/mgps/Util/k0$e;->onFail()V

    return-void
.end method

.method protected g(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/k0$d;->a:Lcom/join/mgps/Util/k0$e;

    invoke-interface {v0, p1}, Lcom/join/mgps/Util/k0$e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

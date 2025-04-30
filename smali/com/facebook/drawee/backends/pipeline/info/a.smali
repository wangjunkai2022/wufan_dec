.class public Lcom/facebook/drawee/backends/pipeline/info/a;
.super Lr0/a;
.source "ImageOriginRequestListener.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lh0/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh0/b;)V
    .locals 0
    .param p2    # Lh0/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lr0/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/a;->b:Lh0/b;

    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/info/a;->l(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/a;->b:Lh0/b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/a;->a:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lh0/c;->a(Ljava/lang/String;)I

    move-result p2

    .line 4
    invoke-interface {p1, v0, p2, p3}, Lh0/b;->a(Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/a;->a:Ljava/lang/String;

    return-void
.end method

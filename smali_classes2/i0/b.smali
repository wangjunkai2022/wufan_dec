.class public Li0/b;
.super Ljava/lang/Object;
.source "ImagePerfImageOriginListener.java"

# interfaces
.implements Lh0/b;


# instance fields
.field private final a:Lcom/facebook/drawee/backends/pipeline/info/d;

.field private final b:Lcom/facebook/drawee/backends/pipeline/info/c;


# direct methods
.method public constructor <init>(Lcom/facebook/drawee/backends/pipeline/info/d;Lcom/facebook/drawee/backends/pipeline/info/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li0/b;->a:Lcom/facebook/drawee/backends/pipeline/info/d;

    .line 3
    iput-object p2, p0, Li0/b;->b:Lcom/facebook/drawee/backends/pipeline/info/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Li0/b;->a:Lcom/facebook/drawee/backends/pipeline/info/d;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/d;->m(I)V

    .line 2
    iget-object p1, p0, Li0/b;->b:Lcom/facebook/drawee/backends/pipeline/info/c;

    iget-object p2, p0, Li0/b;->a:Lcom/facebook/drawee/backends/pipeline/info/d;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/c;->e(Lcom/facebook/drawee/backends/pipeline/info/d;I)V

    return-void
.end method

.class Lcom/xinzhu/overmind/utils/c$a;
.super Lcom/xinzhu/overmind/utils/n;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/utils/c;->f()Lcom/xinzhu/overmind/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xinzhu/overmind/utils/n<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/xinzhu/overmind/utils/c;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/utils/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    invoke-virtual {v0}, Lcom/xinzhu/overmind/utils/c;->clear()V

    return-void
.end method

.method protected b(II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "offset"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    iget-object p2, p2, Lcom/xinzhu/overmind/utils/c;->b:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    iget v0, v0, Lcom/xinzhu/overmind/utils/c;->c:I

    return v0
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/utils/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/utils/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    invoke-virtual {p2, p1}, Lcom/xinzhu/overmind/utils/c;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/c$a;->d:Lcom/xinzhu/overmind/utils/c;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/utils/c;->n(I)Ljava/lang/Object;

    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "not a map"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

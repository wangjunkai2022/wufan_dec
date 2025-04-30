.class public Lcom/join/mgps/adapter/c$i0;
.super Ljava/lang/Object;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/join/mgps/adapter/c$i0;->g:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/join/mgps/adapter/c$i0;->a:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/c$i0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c$i0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c$i0;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c$i0;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c$i0;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/c$i0;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c$i0;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/c$i0;->a:I

    return v0
.end method

.method public h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$i0;->b:Ljava/lang/Object;

    return-void
.end method

.method public i(I)Lcom/join/mgps/adapter/c$i0;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/c$i0;->c:I

    return-object p0
.end method

.method public j(I)Lcom/join/mgps/adapter/c$i0;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/c$i0;->e:I

    return-object p0
.end method

.method public k(I)Lcom/join/mgps/adapter/c$i0;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/c$i0;->d:I

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/join/mgps/adapter/c$i0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$i0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public m(I)Lcom/join/mgps/adapter/c$i0;
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/c$i0;->f:I

    return-object p0
.end method

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/c$i0;->a:I

    return-void
.end method

.class Lcom/facebook/datasource/h$b$a;
.super Ljava/lang/Object;
.source "RetainingDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/datasource/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/h$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/datasource/h$b;


# direct methods
.method private constructor <init>(Lcom/facebook/datasource/h$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/h$b$a;->a:Lcom/facebook/datasource/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/h$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/datasource/h$b$a;-><init>(Lcom/facebook/datasource/h$b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/h$b$a;->a:Lcom/facebook/datasource/h$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/h$b;->t(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V

    return-void
.end method

.method public c(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/facebook/datasource/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/facebook/datasource/h$b$a;->a:Lcom/facebook/datasource/h$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/h$b;->s(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/facebook/datasource/h$b$a;->a:Lcom/facebook/datasource/h$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/h$b;->t(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/h$b$a;->a:Lcom/facebook/datasource/h$b;

    invoke-static {v0, p1}, Lcom/facebook/datasource/h$b;->u(Lcom/facebook/datasource/h$b;Lcom/facebook/datasource/c;)V

    return-void
.end method

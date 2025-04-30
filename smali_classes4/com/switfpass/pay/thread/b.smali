.class public abstract Lcom/switfpass/pay/thread/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/switfpass/pay/thread/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public b(Lcom/switfpass/pay/thread/a;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/thread/b;->a:Lcom/switfpass/pay/thread/a;

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/switfpass/pay/thread/b;->a:Lcom/switfpass/pay/thread/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/switfpass/pay/thread/a;->a(I)V

    :cond_0
    return-void
.end method

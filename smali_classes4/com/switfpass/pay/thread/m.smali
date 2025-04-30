.class final Lcom/switfpass/pay/thread/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/switfpass/pay/thread/a;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/thread/l;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/thread/l;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/thread/m;->a:Lcom/switfpass/pay/thread/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/thread/m;->a:Lcom/switfpass/pay/thread/l;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/switfpass/pay/thread/l;->a(Lcom/switfpass/pay/thread/l;[Ljava/lang/Object;)V

    return-void
.end method

.class final Lcom/switfpass/pay/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/switfpass/pay/utils/f0;


# instance fields
.field private synthetic a:Lcom/switfpass/pay/utils/d0;


# direct methods
.method constructor <init>(Lcom/switfpass/pay/utils/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/switfpass/pay/utils/f;->a:Lcom/switfpass/pay/utils/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/switfpass/pay/utils/f;->a:Lcom/switfpass/pay/utils/d0;

    invoke-static {v0}, Lcom/switfpass/pay/utils/d0;->a(Lcom/switfpass/pay/utils/d0;)Lcom/switfpass/pay/utils/g0;

    move-result-object v1

    const-string v2, "\u4ea4\u6613\u8fdb\u884c\u4e2d\uff0c\u786e\u8ba4\u662f\u5426\u4e2d\u65ad\u4ea4\u6613\uff1f"

    invoke-virtual {v0, v2, v1}, Lcom/switfpass/pay/utils/d0;->u(Ljava/lang/String;Lcom/switfpass/pay/utils/g0;)V

    return-void
.end method

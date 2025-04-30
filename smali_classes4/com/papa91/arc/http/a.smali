.class public final synthetic Lcom/papa91/arc/http/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/papa91/arc/http/HttpUtils$OnResult;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/http/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/papa91/arc/http/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/papa91/arc/http/a;->c:Lcom/papa91/arc/http/HttpUtils$OnResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/papa91/arc/http/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/papa91/arc/http/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/papa91/arc/http/a;->c:Lcom/papa91/arc/http/HttpUtils$OnResult;

    invoke-static {v0, v1, v2}, Lcom/papa91/arc/http/HttpUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/arc/http/HttpUtils$OnResult;)V

    return-void
.end method

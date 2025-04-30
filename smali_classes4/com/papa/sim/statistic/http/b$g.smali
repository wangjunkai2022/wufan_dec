.class Lcom/papa/sim/statistic/http/b$g;
.super Ljava/lang/Object;
.source "OkHttpClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/http/b;->b0(Ljava/lang/Object;Lcom/papa/sim/statistic/http/b$p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/http/b$p;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/papa/sim/statistic/http/b;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/http/b;Lcom/papa/sim/statistic/http/b$p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/http/b$g;->c:Lcom/papa/sim/statistic/http/b;

    iput-object p2, p0, Lcom/papa/sim/statistic/http/b$g;->a:Lcom/papa/sim/statistic/http/b$p;

    iput-object p3, p0, Lcom/papa/sim/statistic/http/b$g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$g;->a:Lcom/papa/sim/statistic/http/b$p;

    iget-object v1, p0, Lcom/papa/sim/statistic/http/b$g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/http/b$p;->e(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/papa/sim/statistic/http/b$g;->a:Lcom/papa/sim/statistic/http/b$p;

    invoke-virtual {v0}, Lcom/papa/sim/statistic/http/b$p;->b()V

    return-void
.end method

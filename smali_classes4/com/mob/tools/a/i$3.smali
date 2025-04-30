.class Lcom/mob/tools/a/i$3;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->aM()Landroid/content/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$3;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$3;->a:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->b(Lcom/mob/tools/a/i;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mob/tools/a/i$3;->a:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->b(Lcom/mob/tools/a/i;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/mob/tools/a/b;->V()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/mob/tools/a/i$3;->a:Lcom/mob/tools/a/i;

    invoke-static {v1, v0}, Lcom/mob/tools/a/i;->a(Lcom/mob/tools/a/i;Landroid/content/Context;)Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mob/tools/a/i$3;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/mob/mgs/impl/b$2;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/b;->a(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mob/mgs/impl/b$2;->a:Z

    iput-boolean p2, p0, Lcom/mob/mgs/impl/b$2;->b:Z

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mob/mgs/impl/b$2;->a:Z

    iget-boolean v1, p0, Lcom/mob/mgs/impl/b$2;->b:Z

    invoke-static {v0, v1}, Lcom/mob/mgs/impl/d;->a(ZZ)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/mob/mgs/impl/b$2;->a:Z

    invoke-static {v0}, Lcom/mob/mgs/impl/i;->b(Z)V

    .line 3
    invoke-static {}, Lcom/mob/mgs/impl/f;->a()Lcom/mob/mgs/impl/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/mgs/impl/f;->f()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/mob/mcl/b/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDS] save buff DId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", GId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/String;)V

    .line 6
    invoke-static {v0}, Lcom/mob/mgs/impl/i;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/mob/mgs/impl/i;->b(Ljava/lang/String;)V

    return-void
.end method

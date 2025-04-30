.class Lcom/mob/tools/a/i$99;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->h()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Ljava/lang/Boolean;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$99;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2, p3, p4}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$99;->a:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->a(Lcom/mob/tools/a/i;)Lcom/mob/tools/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/b;->ak()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/mob/tools/a/i$99;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

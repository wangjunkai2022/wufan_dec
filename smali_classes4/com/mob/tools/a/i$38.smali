.class Lcom/mob/tools/a/i$38;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->x()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$38;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$38;->a:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->b(Lcom/mob/tools/a/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/commons/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/mob/tools/a/i$38;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

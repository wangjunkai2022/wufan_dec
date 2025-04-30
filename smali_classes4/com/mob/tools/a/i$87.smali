.class Lcom/mob/tools/a/i$87;
.super Lcom/mob/tools/a/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/a/i;->ap()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/a/i$a<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/a/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/a/i;Ljava/util/HashMap;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/a/i$87;->a:Lcom/mob/tools/a/i;

    invoke-direct {p0, p2, p3, p4}, Lcom/mob/tools/a/i$a;-><init>(Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/a/i$87;->a:Lcom/mob/tools/a/i;

    invoke-static {v0}, Lcom/mob/tools/a/i;->a(Lcom/mob/tools/a/i;)Lcom/mob/tools/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/a/b;->ax()Ljava/util/HashMap;

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
    invoke-virtual {p0}, Lcom/mob/tools/a/i$87;->a()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

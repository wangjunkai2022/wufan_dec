.class final Lcom/mob/commons/cc/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/cc/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/cc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/commons/cc/a;->b()Lcom/mob/commons/cc/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/commons/cc/a;->b()Lcom/mob/commons/cc/p;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mob/commons/cc/p;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

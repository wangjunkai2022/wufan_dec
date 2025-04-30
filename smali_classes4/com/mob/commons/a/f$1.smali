.class Lcom/mob/commons/a/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/ReflectHelper$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mob/tools/utils/ReflectHelper$a<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/LinkedBlockingQueue;

.field final synthetic b:Lcom/mob/commons/a/f;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/f;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/commons/a/f$1;->b:Lcom/mob/commons/a/f;

    iput-object p2, p0, Lcom/mob/commons/a/f$1;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/mob/commons/a/f$1;->a(Ljava/util/HashMap;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/HashMap;)Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mob/commons/a/f$1;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

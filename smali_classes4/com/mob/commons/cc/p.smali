.class public Lcom/mob/commons/cc/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/commons/cc/p$a;
    }
.end annotation


# instance fields
.field public a:Lcom/mob/commons/cc/p$a;


# direct methods
.method public constructor <init>(Lcom/mob/commons/cc/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/p$a;

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
    iget-object v0, p0, Lcom/mob/commons/cc/p;->a:Lcom/mob/commons/cc/p$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/mob/commons/cc/p$a;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

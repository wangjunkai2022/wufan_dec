.class final Lcom/mob/commons/cc/y$1;
.super Lcom/mob/commons/cc/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/cc/y;->a(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)Lcom/mob/commons/cc/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/mob/commons/cc/y;-><init>(Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;IILcom/mob/commons/cc/r;)V

    return-void
.end method


# virtual methods
.method public varargs b([Ljava/lang/Object;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/LinkedList<",
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
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1
.end method

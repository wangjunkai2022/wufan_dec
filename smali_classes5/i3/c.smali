.class public Li3/c;
.super Ljava/lang/Object;
.source "OnViewChangedNotifier.java"


# static fields
.field private static b:Li3/c;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li3/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Li3/c;->a:Ljava/util/Set;

    return-void
.end method

.method public static b(Li3/b;)V
    .locals 1

    .line 1
    sget-object v0, Li3/c;->b:Li3/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Li3/c;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Li3/c;)Li3/c;
    .locals 1

    .line 1
    sget-object v0, Li3/c;->b:Li3/c;

    .line 2
    sput-object p0, Li3/c;->b:Li3/c;

    return-object v0
.end method


# virtual methods
.method public a(Li3/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li3/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/b;

    .line 2
    invoke-interface {v1, p1}, Li3/b;->onViewChanged(Li3/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

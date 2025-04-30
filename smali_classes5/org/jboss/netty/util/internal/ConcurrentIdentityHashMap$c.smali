.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
.super Ljava/lang/Object;
.source "ConcurrentIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:I

.field volatile c:Ljava/lang/Object;

.field final d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->b:I

    .line 3
    iput-object p3, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->c:Ljava/lang/Object;

    return-void
.end method

.method static b(I)[Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-array p0, p0, [Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    return-object p0
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->c:Ljava/lang/Object;

    return-void
.end method

.method d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->c:Ljava/lang/Object;

    return-object v0
.end method

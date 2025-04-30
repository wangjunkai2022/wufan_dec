.class public interface abstract Lorg/jboss/netty/util/d;
.super Ljava/lang/Object;
.source "ThreadNameDeterminer.java"


# static fields
.field public static final a:Lorg/jboss/netty/util/d;

.field public static final b:Lorg/jboss/netty/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/util/d$a;

    invoke-direct {v0}, Lorg/jboss/netty/util/d$a;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/d;->a:Lorg/jboss/netty/util/d;

    .line 2
    new-instance v0, Lorg/jboss/netty/util/d$b;

    invoke-direct {v0}, Lorg/jboss/netty/util/d$b;-><init>()V

    sput-object v0, Lorg/jboss/netty/util/d;->b:Lorg/jboss/netty/util/d;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

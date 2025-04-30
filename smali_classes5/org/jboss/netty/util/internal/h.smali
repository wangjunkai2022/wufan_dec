.class public final Lorg/jboss/netty/util/internal/h;
.super Ljava/lang/Object;
.source "StackTraceSimplifier.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable|internal\\.DeadLockProofWorker)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))(\\$.*)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/h;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/h;->a(Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    sget-object v1, Lorg/jboss/netty/util/internal/h;->a:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 6
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 8
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 9
    sget-object v3, Lorg/jboss/netty/util/internal/h;->a:Ljava/util/regex/Pattern;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    aget-object v3, v0, v2

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_5
    :goto_2
    return-void
.end method

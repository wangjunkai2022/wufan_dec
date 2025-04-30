.class public final Lcom/alipay/sdk/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z = false

.field public static final b:Ljava/lang/String; = "mspstd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b()V
    .locals 0

    return-void
.end method

.method private static c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    instance-of p0, p0, Ljava/lang/Exception;

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static e()V
    .locals 0

    return-void
.end method

.method private static f()V
    .locals 0

    return-void
.end method

.method private static g()V
    .locals 0

    return-void
.end method

.method private static h()V
    .locals 0

    return-void
.end method

.method private static i()V
    .locals 0

    return-void
.end method

.method private static j()V
    .locals 0

    return-void
.end method

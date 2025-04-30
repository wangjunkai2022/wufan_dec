.class public Lcom/join/mgps/ptr/util/a;
.super Ljava/lang/Object;
.source "PtrCLog.java"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget p0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length p0, p2

    if-lez p0, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget p0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v0, 0x4

    if-le p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length p0, p2

    if-lez p0, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget v0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static varargs l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget p0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length p0, p2

    if-lez p0, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static m(I)V
    .locals 0

    .line 1
    sput p0, Lcom/join/mgps/ptr/util/a;->g:I

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static varargs p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget p0, Lcom/join/mgps/ptr/util/a;->g:I

    if-lez p0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length p0, p2

    if-lez p0, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static varargs s(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget p0, Lcom/join/mgps/ptr/util/a;->g:I

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length p0, p2

    if-lez p0, :cond_1

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_1
    return-void
.end method

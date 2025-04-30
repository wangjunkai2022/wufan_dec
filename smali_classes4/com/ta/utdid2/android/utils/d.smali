.class public Lcom/ta/utdid2/android/utils/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "alidebug"

.field public static b:Z

.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "alidebug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/ta/utdid2/android/utils/d;->b(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/ta/utdid2/android/utils/d;->b:Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/ta/utdid2/android/utils/d;->c:Ljava/lang/Class;

    .line 3
    sput-object v0, Lcom/ta/utdid2/android/utils/d;->d:Ljava/lang/reflect/Method;

    .line 4
    sput-object v0, Lcom/ta/utdid2/android/utils/d;->e:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/ta/utdid2/android/utils/d;->c()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/ta/utdid2/android/utils/d;->d:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/ta/utdid2/android/utils/d;->c:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 4

    .line 1
    invoke-static {}, Lcom/ta/utdid2/android/utils/d;->c()V

    .line 2
    :try_start_0
    sget-object v0, Lcom/ta/utdid2/android/utils/d;->e:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/ta/utdid2/android/utils/d;->c:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p1
.end method

.method private static c()V
    .locals 6

    .line 1
    const-class v0, Ljava/lang/String;

    :try_start_0
    sget-object v1, Lcom/ta/utdid2/android/utils/d;->c:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "android.os.SystemProperties"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    sput-object v1, Lcom/ta/utdid2/android/utils/d;->c:Ljava/lang/Class;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ta/utdid2/android/utils/d;->d:Ljava/lang/reflect/Method;

    .line 4
    sget-object v1, Lcom/ta/utdid2/android/utils/d;->c:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v0, v4, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/android/utils/d;->e:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

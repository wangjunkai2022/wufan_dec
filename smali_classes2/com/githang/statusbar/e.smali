.class public Lcom/githang/statusbar/e;
.super Ljava/lang/Object;
.source "StatusBarExclude.java"


# static fields
.field static a:Z


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

.method public static a()V
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Landroid/os/Build;

    const-string v1, "hasSmartBar"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    sget-boolean v0, Lcom/githang/statusbar/e;->a:Z

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "Meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/githang/statusbar/e;->a:Z

    :goto_0
    return-void
.end method

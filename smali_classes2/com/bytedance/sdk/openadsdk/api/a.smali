.class public Lcom/bytedance/sdk/openadsdk/api/a;
.super Ljava/lang/Object;
.source "TTLogger.java"


# static fields
.field private static a:Z = false

.field private static b:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/a;->a(I)V

    return-void
.end method

.method public static a(I)V
    .locals 0

    .line 1
    sput p0, Lcom/bytedance/sdk/openadsdk/api/a;->b:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 4
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/api/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TTLogger"

    .line 5
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

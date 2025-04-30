.class public final Lcom/bytedance/pangle/receiver/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/pangle/receiver/b$c;,
        Lcom/bytedance/pangle/receiver/b$a;,
        Lcom/bytedance/pangle/receiver/b$d;,
        Lcom/bytedance/pangle/receiver/b$e;,
        Lcom/bytedance/pangle/receiver/b$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/bytedance/pangle/receiver/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/pangle/receiver/b$a;

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/receiver/b$a;-><init>(B)V

    sput-object v0, Lcom/bytedance/pangle/receiver/b;->a:Lcom/bytedance/pangle/receiver/b$c;

    return-void

    :cond_0
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    .line 3
    new-instance v0, Lcom/bytedance/pangle/receiver/b$d;

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/receiver/b$d;-><init>(B)V

    sput-object v0, Lcom/bytedance/pangle/receiver/b;->a:Lcom/bytedance/pangle/receiver/b$c;

    return-void

    :cond_1
    const/16 v2, 0x1c

    if-ge v0, v2, :cond_2

    .line 4
    new-instance v0, Lcom/bytedance/pangle/receiver/b$e;

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/receiver/b$e;-><init>(B)V

    sput-object v0, Lcom/bytedance/pangle/receiver/b;->a:Lcom/bytedance/pangle/receiver/b$c;

    return-void

    .line 5
    :cond_2
    new-instance v0, Lcom/bytedance/pangle/receiver/b$b;

    invoke-direct {v0, v1}, Lcom/bytedance/pangle/receiver/b$b;-><init>(B)V

    sput-object v0, Lcom/bytedance/pangle/receiver/b;->a:Lcom/bytedance/pangle/receiver/b$c;

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/pangle/util/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/bytedance/pangle/receiver/b;->a:Lcom/bytedance/pangle/receiver/b$c;

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bytedance/pangle/receiver/b$c;->a(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-void
.end method

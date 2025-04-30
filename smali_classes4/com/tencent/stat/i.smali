.class Lcom/tencent/stat/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/stat/i;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/tencent/stat/i;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/tencent/stat/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/stat/StatNativeCrashReport;->a(Landroid/content/Context;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1}, Lcom/tencent/stat/StatNativeCrashReport;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/tencent/stat/a/d;

    iget-object v3, p0, Lcom/tencent/stat/i;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I

    move-result v4

    const/4 v6, 0x3

    const/16 v7, 0x2800

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/tencent/stat/a/d;-><init>(Landroid/content/Context;ILjava/lang/String;II)V

    invoke-static {v1}, Lcom/tencent/stat/StatNativeCrashReport;->b(Ljava/io/File;)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/tencent/stat/a/d;->a(J)V

    iget-object v2, p0, Lcom/tencent/stat/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/stat/i;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/stat/StatService;->c(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/tencent/stat/k;

    invoke-direct {v3, v8}, Lcom/tencent/stat/k;-><init>(Lcom/tencent/stat/a/e;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete tombstone file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/stat/common/StatLogger;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

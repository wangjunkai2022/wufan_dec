.class Lcom/join/mgps/activity/LinkProxyActivity_$f;
.super Lorg/androidannotations/api/a$c;
.source "LinkProxyActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/LinkProxyActivity_;->I0(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/LinkProxyActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/LinkProxyActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->d:Lcom/join/mgps/activity/LinkProxyActivity_;

    iput-object p6, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->a:Ljava/lang/String;

    iput p7, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->b:I

    iput-object p8, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->d:Lcom/join/mgps/activity/LinkProxyActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->a:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->b:I

    iget-object v3, p0, Lcom/join/mgps/activity/LinkProxyActivity_$f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/LinkProxyActivity_;->P0(Lcom/join/mgps/activity/LinkProxyActivity_;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.class Lcom/join/mgps/activity/DocumentManageActivity_$l;
.super Lorg/androidannotations/api/a$c;
.source "DocumentManageActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DocumentManageActivity_;->J0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/DocumentManageActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->d:Lcom/join/mgps/activity/DocumentManageActivity_;

    iput-object p6, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->a:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->b:Ljava/lang/String;

    iput-object p8, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->c:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->d:Lcom/join/mgps/activity/DocumentManageActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/join/mgps/activity/DocumentManageActivity_$l;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/DocumentManageActivity_;->p1(Lcom/join/mgps/activity/DocumentManageActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

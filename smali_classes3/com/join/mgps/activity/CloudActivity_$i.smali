.class Lcom/join/mgps/activity/CloudActivity_$i;
.super Lorg/androidannotations/api/a$c;
.source "CloudActivity_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity_;->M0(Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/dto/CloudUploadInfo;

.field final synthetic c:Ljava/io/File;

.field final synthetic d:Lcom/join/mgps/activity/CloudActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity_;Ljava/lang/String;JLjava/lang/String;Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity_$i;->d:Lcom/join/mgps/activity/CloudActivity_;

    iput-object p6, p0, Lcom/join/mgps/activity/CloudActivity_$i;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/join/mgps/activity/CloudActivity_$i;->b:Lcom/join/mgps/dto/CloudUploadInfo;

    iput-object p8, p0, Lcom/join/mgps/activity/CloudActivity_$i;->c:Ljava/io/File;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_$i;->d:Lcom/join/mgps/activity/CloudActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/CloudActivity_$i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/activity/CloudActivity_$i;->b:Lcom/join/mgps/dto/CloudUploadInfo;

    iget-object v3, p0, Lcom/join/mgps/activity/CloudActivity_$i;->c:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/CloudActivity_;->W0(Lcom/join/mgps/activity/CloudActivity_;Landroid/content/Context;Lcom/join/mgps/dto/CloudUploadInfo;Ljava/io/File;)V
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

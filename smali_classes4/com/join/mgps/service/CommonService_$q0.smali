.class Lcom/join/mgps/service/CommonService_$q0;
.super Lorg/androidannotations/api/a$c;
.source "CommonService_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->Z0(Lcom/join/mgps/dto/SharePostRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SharePostRequest;

.field final synthetic b:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/SharePostRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$q0;->b:Lcom/join/mgps/service/CommonService_;

    iput-object p6, p0, Lcom/join/mgps/service/CommonService_$q0;->a:Lcom/join/mgps/dto/SharePostRequest;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$q0;->b:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$q0;->a:Lcom/join/mgps/dto/SharePostRequest;

    invoke-static {v0, v1}, Lcom/join/mgps/service/CommonService_;->a2(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/SharePostRequest;)V
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

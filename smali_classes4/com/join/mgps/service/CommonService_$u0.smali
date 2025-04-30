.class Lcom/join/mgps/service/CommonService_$u0;
.super Lorg/androidannotations/api/a$c;
.source "CommonService_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->K(Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic f:Z

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Z

.field final synthetic j:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$u0;->j:Lcom/join/mgps/service/CommonService_;

    iput-object p6, p0, Lcom/join/mgps/service/CommonService_$u0;->a:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/service/CommonService_$u0;->b:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/join/mgps/service/CommonService_$u0;->c:Z

    iput-wide p9, p0, Lcom/join/mgps/service/CommonService_$u0;->d:J

    iput-object p11, p0, Lcom/join/mgps/service/CommonService_$u0;->e:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    iput-boolean p12, p0, Lcom/join/mgps/service/CommonService_$u0;->f:Z

    iput p13, p0, Lcom/join/mgps/service/CommonService_$u0;->g:I

    iput p14, p0, Lcom/join/mgps/service/CommonService_$u0;->h:I

    iput-boolean p15, p0, Lcom/join/mgps/service/CommonService_$u0;->i:Z

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 11

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$u0;->j:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$u0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$u0;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService_$u0;->c:Z

    iget-wide v4, p0, Lcom/join/mgps/service/CommonService_$u0;->d:J

    iget-object v6, p0, Lcom/join/mgps/service/CommonService_$u0;->e:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    iget-boolean v7, p0, Lcom/join/mgps/service/CommonService_$u0;->f:Z

    iget v8, p0, Lcom/join/mgps/service/CommonService_$u0;->g:I

    iget v9, p0, Lcom/join/mgps/service/CommonService_$u0;->h:I

    iget-boolean v10, p0, Lcom/join/mgps/service/CommonService_$u0;->i:Z

    invoke-static/range {v0 .. v10}, Lcom/join/mgps/service/CommonService_;->z1(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;ZJLcom/join/mgps/dto/QueryDownloadInfoResponseData;ZIIZ)V
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

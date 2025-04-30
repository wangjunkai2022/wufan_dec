.class Lcom/join/mgps/activity/o2$s0;
.super Lorg/androidannotations/api/a$c;
.source "PapaMainV3Fragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/o2;->J0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

.field final synthetic c:Lcom/join/mgps/activity/o2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/o2;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/o2$s0;->c:Lcom/join/mgps/activity/o2;

    iput-object p6, p0, Lcom/join/mgps/activity/o2$s0;->a:Ljava/lang/String;

    iput-object p7, p0, Lcom/join/mgps/activity/o2$s0;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/o2$s0;->c:Lcom/join/mgps/activity/o2;

    iget-object v1, p0, Lcom/join/mgps/activity/o2$s0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/activity/o2$s0;->b:Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/o2;->N2(Lcom/join/mgps/activity/o2;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
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

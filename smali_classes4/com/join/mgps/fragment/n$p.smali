.class Lcom/join/mgps/fragment/n$p;
.super Lorg/androidannotations/api/a$c;
.source "CloudListFragment_.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/n;->O(Lcom/join/mgps/dto/CloudListDataBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CloudListDataBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/n;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/n$p;->c:Lcom/join/mgps/fragment/n;

    iput-object p6, p0, Lcom/join/mgps/fragment/n$p;->a:Lcom/join/mgps/dto/CloudListDataBean;

    iput p7, p0, Lcom/join/mgps/fragment/n$p;->b:I

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/androidannotations/api/a$c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/n$p;->c:Lcom/join/mgps/fragment/n;

    iget-object v1, p0, Lcom/join/mgps/fragment/n$p;->a:Lcom/join/mgps/dto/CloudListDataBean;

    iget v2, p0, Lcom/join/mgps/fragment/n$p;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/fragment/n;->O0(Lcom/join/mgps/fragment/n;Lcom/join/mgps/dto/CloudListDataBean;I)V
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

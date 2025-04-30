.class Lcom/join/mgps/service/CommonService$h;
.super Ljava/lang/Object;
.source "CommonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService$h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    iget v1, v0, Lcom/join/mgps/service/CommonService;->C:I

    iget v2, v0, Lcom/join/mgps/service/CommonService;->B:I

    if-gt v1, v2, :cond_2

    .line 2
    iget v2, v0, Lcom/join/mgps/service/CommonService;->A:I

    mul-int v1, v1, v2

    iput v1, v0, Lcom/join/mgps/service/CommonService;->y:I

    add-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/join/mgps/service/CommonService$h;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/join/mgps/service/CommonService;->z:I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    iget v2, v1, Lcom/join/mgps/service/CommonService;->y:I

    iget v1, v1, Lcom/join/mgps/service/CommonService;->z:I

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    iget v2, v1, Lcom/join/mgps/service/CommonService;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/join/mgps/service/CommonService;->C:I

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v1, v0}, Lcom/join/mgps/service/CommonService;->p(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 8
    :cond_2
    iget-object v0, v0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    iget-object v0, v0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/service/CommonService$h;->b:Lcom/join/mgps/service/CommonService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/join/mgps/service/CommonService;->x:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_3
    :goto_1
    return-void
.end method

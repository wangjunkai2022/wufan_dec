.class Lcom/join/mgps/service/CommonService_$l0;
.super Ljava/lang/Object;
.source "CommonService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->h1(Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$l0;->g:Lcom/join/mgps/service/CommonService_;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$l0;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    iput-boolean p3, p0, Lcom/join/mgps/service/CommonService_$l0;->b:Z

    iput-boolean p4, p0, Lcom/join/mgps/service/CommonService_$l0;->c:Z

    iput-object p5, p0, Lcom/join/mgps/service/CommonService_$l0;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/join/mgps/service/CommonService_$l0;->e:Z

    iput-boolean p7, p0, Lcom/join/mgps/service/CommonService_$l0;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$l0;->g:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$l0;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    iget-boolean v2, p0, Lcom/join/mgps/service/CommonService_$l0;->b:Z

    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService_$l0;->c:Z

    iget-object v4, p0, Lcom/join/mgps/service/CommonService_$l0;->d:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/join/mgps/service/CommonService_$l0;->e:Z

    iget-boolean v6, p0, Lcom/join/mgps/service/CommonService_$l0;->f:Z

    invoke-static/range {v0 .. v6}, Lcom/join/mgps/service/CommonService_;->U1(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/CollectionBeanSub;ZZLjava/lang/String;ZZ)V

    return-void
.end method

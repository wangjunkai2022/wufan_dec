.class Lcom/join/mgps/service/CommonService_$k0;
.super Ljava/lang/Object;
.source "CommonService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->g1(Lcom/join/mgps/dto/CollectionBeanSub;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/CollectionBeanSub;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/CollectionBeanSub;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$k0;->c:Lcom/join/mgps/service/CommonService_;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$k0;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    iput-boolean p3, p0, Lcom/join/mgps/service/CommonService_$k0;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$k0;->c:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$k0;->a:Lcom/join/mgps/dto/CollectionBeanSub;

    iget-boolean v2, p0, Lcom/join/mgps/service/CommonService_$k0;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/service/CommonService_;->J1(Lcom/join/mgps/service/CommonService_;Lcom/join/mgps/dto/CollectionBeanSub;Z)V

    return-void
.end method

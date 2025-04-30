.class Lcom/join/mgps/service/CommonService_$i0;
.super Ljava/lang/Object;
.source "CommonService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->k1(Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/join/mgps/dto/AccountBean;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/dto/PayOrderInfo;

.field final synthetic c:Lcom/join/mgps/dto/AccountBean;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/join/mgps/dto/AccountBean;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$i0;->f:Lcom/join/mgps/service/CommonService_;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$i0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/service/CommonService_$i0;->b:Lcom/join/mgps/dto/PayOrderInfo;

    iput-object p4, p0, Lcom/join/mgps/service/CommonService_$i0;->c:Lcom/join/mgps/dto/AccountBean;

    iput-boolean p5, p0, Lcom/join/mgps/service/CommonService_$i0;->d:Z

    iput-object p6, p0, Lcom/join/mgps/service/CommonService_$i0;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$i0;->f:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$i0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$i0;->b:Lcom/join/mgps/dto/PayOrderInfo;

    iget-object v3, p0, Lcom/join/mgps/service/CommonService_$i0;->c:Lcom/join/mgps/dto/AccountBean;

    iget-boolean v4, p0, Lcom/join/mgps/service/CommonService_$i0;->d:Z

    iget-object v5, p0, Lcom/join/mgps/service/CommonService_$i0;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/join/mgps/service/CommonService_;->w1(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Lcom/join/mgps/dto/PayOrderInfo;Lcom/join/mgps/dto/AccountBean;ZLjava/lang/String;)V

    return-void
.end method

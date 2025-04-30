.class Lcom/join/mgps/service/CommonService_$o0;
.super Ljava/lang/Object;
.source "CommonService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->L(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$o0;->d:Lcom/join/mgps/service/CommonService_;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$o0;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/join/mgps/service/CommonService_$o0;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/join/mgps/service/CommonService_$o0;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$o0;->d:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$o0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/join/mgps/service/CommonService_$o0;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/join/mgps/service/CommonService_$o0;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/service/CommonService_;->Y1(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

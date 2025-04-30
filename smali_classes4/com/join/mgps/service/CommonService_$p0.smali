.class Lcom/join/mgps/service/CommonService_$p0;
.super Ljava/lang/Object;
.source "CommonService_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/service/CommonService_;->i1(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/service/CommonService_;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService_$p0;->c:Lcom/join/mgps/service/CommonService_;

    iput-object p2, p0, Lcom/join/mgps/service/CommonService_$p0;->a:Ljava/lang/String;

    iput p3, p0, Lcom/join/mgps/service/CommonService_$p0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/service/CommonService_$p0;->c:Lcom/join/mgps/service/CommonService_;

    iget-object v1, p0, Lcom/join/mgps/service/CommonService_$p0;->a:Ljava/lang/String;

    iget v2, p0, Lcom/join/mgps/service/CommonService_$p0;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/service/CommonService_;->Z1(Lcom/join/mgps/service/CommonService_;Ljava/lang/String;I)V

    return-void
.end method

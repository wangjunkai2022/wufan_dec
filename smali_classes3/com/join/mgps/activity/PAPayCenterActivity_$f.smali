.class Lcom/join/mgps/activity/PAPayCenterActivity_$f;
.super Ljava/lang/Object;
.source "PAPayCenterActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PAPayCenterActivity_;->L0(Lcom/join/mgps/dto/PapayResultData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/PapayResultData;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/PAPayCenterActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PAPayCenterActivity_;Lcom/join/mgps/dto/PapayResultData;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/PAPayCenterActivity_$f;->c:Lcom/join/mgps/activity/PAPayCenterActivity_;

    iput-object p2, p0, Lcom/join/mgps/activity/PAPayCenterActivity_$f;->a:Lcom/join/mgps/dto/PapayResultData;

    iput p3, p0, Lcom/join/mgps/activity/PAPayCenterActivity_$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PAPayCenterActivity_$f;->c:Lcom/join/mgps/activity/PAPayCenterActivity_;

    iget-object v1, p0, Lcom/join/mgps/activity/PAPayCenterActivity_$f;->a:Lcom/join/mgps/dto/PapayResultData;

    iget v2, p0, Lcom/join/mgps/activity/PAPayCenterActivity_$f;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/PAPayCenterActivity_;->Q0(Lcom/join/mgps/activity/PAPayCenterActivity_;Lcom/join/mgps/dto/PapayResultData;I)V

    return-void
.end method

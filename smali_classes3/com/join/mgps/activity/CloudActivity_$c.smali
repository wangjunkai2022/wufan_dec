.class Lcom/join/mgps/activity/CloudActivity_$c;
.super Ljava/lang/Object;
.source "CloudActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity_;->I0(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/CloudActivity_;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity_;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity_$c;->c:Lcom/join/mgps/activity/CloudActivity_;

    iput p2, p0, Lcom/join/mgps/activity/CloudActivity_$c;->a:I

    iput p3, p0, Lcom/join/mgps/activity/CloudActivity_$c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CloudActivity_$c;->c:Lcom/join/mgps/activity/CloudActivity_;

    iget v1, p0, Lcom/join/mgps/activity/CloudActivity_$c;->a:I

    iget v2, p0, Lcom/join/mgps/activity/CloudActivity_$c;->b:I

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/CloudActivity_;->Q0(Lcom/join/mgps/activity/CloudActivity_;II)V

    return-void
.end method

.class Lcom/join/mgps/activity/o0$b0;
.super Ljava/lang/Object;
.source "GamedetialModleFourFragemnt_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/o0;->D0(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/o0;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/o0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/o0$b0;->b:Lcom/join/mgps/activity/o0;

    iput p2, p0, Lcom/join/mgps/activity/o0$b0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/o0$b0;->b:Lcom/join/mgps/activity/o0;

    iget v1, p0, Lcom/join/mgps/activity/o0$b0;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/activity/o0;->W0(Lcom/join/mgps/activity/o0;I)V

    return-void
.end method

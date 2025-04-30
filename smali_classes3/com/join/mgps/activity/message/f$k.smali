.class Lcom/join/mgps/activity/message/f$k;
.super Ljava/lang/Object;
.source "NoticeFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/f;->V(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/message/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/f$k;->b:Lcom/join/mgps/activity/message/f;

    iput p2, p0, Lcom/join/mgps/activity/message/f$k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/f$k;->b:Lcom/join/mgps/activity/message/f;

    iget v1, p0, Lcom/join/mgps/activity/message/f$k;->a:I

    invoke-static {v0, v1}, Lcom/join/mgps/activity/message/f;->f0(Lcom/join/mgps/activity/message/f;I)V

    return-void
.end method

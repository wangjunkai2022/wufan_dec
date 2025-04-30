.class Lcom/join/mgps/activity/y1$d;
.super Ljava/lang/Object;
.source "MyGamePapaFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/y1;->L0(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/join/mgps/activity/y1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/y1;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/y1$d;->b:Lcom/join/mgps/activity/y1;

    iput-object p2, p0, Lcom/join/mgps/activity/y1$d;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y1$d;->b:Lcom/join/mgps/activity/y1;

    iget-object v1, p0, Lcom/join/mgps/activity/y1$d;->a:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/y1;->w1(Lcom/join/mgps/activity/y1;Ljava/util/HashMap;)V

    return-void
.end method

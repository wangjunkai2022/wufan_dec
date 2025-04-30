.class Lcom/join/mgps/activity/g2$m;
.super Ljava/lang/Object;
.source "PapaMainFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/g2;->b1(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/g2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/g2;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/g2$m;->c:Lcom/join/mgps/activity/g2;

    iput-object p2, p0, Lcom/join/mgps/activity/g2$m;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/join/mgps/activity/g2$m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/g2$m;->c:Lcom/join/mgps/activity/g2;

    iget-object v1, p0, Lcom/join/mgps/activity/g2$m;->a:Ljava/util/List;

    iget-boolean v2, p0, Lcom/join/mgps/activity/g2$m;->b:Z

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/g2;->Y1(Lcom/join/mgps/activity/g2;Ljava/util/List;Z)V

    return-void
.end method
